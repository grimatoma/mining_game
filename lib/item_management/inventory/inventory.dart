import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/persistence/hive_manager.dart';
import 'package:tuple/tuple.dart';

part 'inventory.freezed.dart';

part 'inventory.g.dart';

final inventoryCountsStateProvider =
    StateProvider<BuiltMap<ItemDefinitionId, int>>((ref) {
  print('inventory count updated');
  final itemCounts = MapBuilder<ItemDefinitionId, int>();
  for (final item in ref.watch(inventoryStateProvider).itemSlots) {
    if (item == null) continue;
    final count = itemCounts.putIfAbsent(item.itemId, () => 0);
    itemCounts[item.itemId] = count +
        item.maybeMap(
            stackInstance: (stack) => stack.quantity, orElse: () => 1) as int;
  }
  return itemCounts.build();
});

final inventoryStateProvider =
    StateNotifierProvider<InventoryStateController, Inventory>((ref) {
  return InventoryStateController(ref.watch(gameEventManagerProvider));
});

// class Inventory {
//   final SyncedList2<ItemInstance?> itemSlots;
//
//   Inventory(this.itemSlots);
//
//   Inventory rebuild(Function(SyncedListBuilder<ItemInstance?>) updates) =>
//       Inventory(itemSlots.syncWithBuilder(itemSlots.rebuild(updates)));
// }

@freezed
class Inventory with _$Inventory {
  const Inventory._();

  const factory Inventory(BuiltList<ItemInstance?> itemSlots) = _Inventory;

  factory Inventory.fromJson(Map<String, Object?> json) =>
      _$InventoryFromJson(json);

  Inventory rebuild(Function(ListBuilder<ItemInstance?>) updates) =>
      copyWith(itemSlots: itemSlots.rebuild(updates));

  bool meetsRequirements(ItemRequirement requirement) =>
      requirement.meetsRequirement(itemSlots);
}

class InventoryStateController extends StateNotifier<Inventory> {
  InventoryStateController(GameEventManager gameEventManager)
      : super(HiveManager.getData(BoxKey.INVENTORY, Inventory.fromJson,
            () => Inventory(<ItemInstance?>[].build()))) {
    if (state.itemSlots.length < 5) {
      addSlots(5 - state.itemSlots.length);
    }
  }

  // Takes the last items first that meet the requirement until it is fufilled;
  void clear() {
    state = state.rebuild((p0) => p0.clear());
  }

  void addSlots(int count) {
    state = state.rebuild((p0) => p0.addAll({
          for (int i = 0; i < count; i++) null,
        }));
  }

  bool addItemWithGenerator(ItemInstanceGenerator generator) =>
      addItems(generator.generate());

  bool addItem(ItemInstance item) => addItems([item]);

  bool addItems(Iterable<ItemInstance> items) {
    var success = true;
    final newState = state.rebuild((p0) {
      for (final item in items) {
        item.maybeMap(stackInstance: (stack) {
          final stackLimit = stack.maxStackSize;
          final similarItemStacks = {
            for (int i = 0; i < p0.length; i++) i: p0[i],
          }..removeWhere((key, value) => (value?.itemId != item.itemId));
          var remainingItemsToAdd = stack.quantity;
          for (final entry in similarItemStacks.entries) {
            if (remainingItemsToAdd <= 0) break;
            final existingStack = entry.value as StackInstance;
            final freeSpace = stackLimit - existingStack.quantity;
            if (freeSpace == 0) continue;
            final amountToAdd = min(remainingItemsToAdd, freeSpace);
            p0[entry.key] = existingStack.copyWith(
                quantity: existingStack.quantity + amountToAdd);
            remainingItemsToAdd -= amountToAdd;
          }
          if (remainingItemsToAdd > 0) {
            int getNextOpenSlot() => p0
                .build()
                .asMap()
                .entries
                .firstWhere((element) => element.value == null,
                    orElse: () => const MapEntry(-1, null))
                .key;
            var nextOpenSlot = getNextOpenSlot();
            while (nextOpenSlot != -1 && remainingItemsToAdd > 0) {
              final itemsAdded = min(remainingItemsToAdd, stackLimit);
              p0[nextOpenSlot] = stack.copyWith(
                  id: ItemInstanceId.generate(), quantity: itemsAdded);
              remainingItemsToAdd -= itemsAdded;
              nextOpenSlot = getNextOpenSlot();
            }
          }
          success = remainingItemsToAdd <= 0;
        }, orElse: () {
          /// Returns -1 if there is no free space.
          int _nextFreeIndex() => state.itemSlots
              .asMap()
              .entries
              .firstWhere((element) => element.value == null,
                  orElse: () => const MapEntry(-1, null))
              .key;

          final nextOpenSpaceIndex = _nextFreeIndex();
          if (nextOpenSpaceIndex == -1) {
            success = false;
            return;
          }
          p0[nextOpenSpaceIndex] = item;
        });
      }
    });
    if (success) {
      state = newState;
    }
    return success;
  }

  ItemInstance? removeItemAtIndex(int index) {
    ItemInstance? returnItem;
    state = state.rebuild((p0) {
      returnItem = p0[index];
      p0[index] = null;
    });
    return returnItem;
  }

  bool subtractItemRequirement(ItemRequirement requirement) {
    if (!state.meetsRequirements(requirement)) return false;
    // Do logic that removes the requirements from the inventory from the first seen.
    if (requirement.requiredItems.isEmpty) return true;

    state = state.rebuild((p0) {
      final itemsNeeded = {...requirement.requiredItems};
      for (var index = state.itemSlots.length - 1; index >= 0; index--) {
        final item = p0[index];
        if (item == null) continue;
        final itemId = item.itemId;
        if (!itemsNeeded.containsKey(itemId)) continue;

        final amountRequired = itemsNeeded[itemId]!;

        item.maybeMap(stackInstance: (currentItemStack) {
          final currentItemRemainingAmount =
              currentItemStack.quantity - amountRequired;
          if (currentItemRemainingAmount > 0) {
            p0[index] =
                currentItemStack.copyWith(quantity: currentItemRemainingAmount);
            itemsNeeded.remove(itemId);
          } else {
            p0[index] = null;
            itemsNeeded[itemId] = amountRequired - currentItemStack.quantity;
          }
        }, orElse: () {
          // Single item at instance.
          removeItemAtIndex(index);
          if (amountRequired - 1 <= 0) {
            itemsNeeded.remove(itemId);
          } else {
            itemsNeeded[itemId] = amountRequired - 1;
          }
        });
      }
    });
    return true;
  }

  void moveItem(int startIndex, int destIndex) {
    if (startIndex == destIndex) return;
    final startSlot = state.itemSlots[startIndex];
    final destSlot = state.itemSlots[destIndex];
    // Try to merge stacks.
    if (startSlot != null &&
        destSlot != null &&
        startSlot.itemId == destSlot.itemId) {
      final definition = destSlot.itemId.definition();
      if (definition is Stackable) {
        final def2Temp = definition as Stackable;
        final maxSize = def2Temp.maxStackSize;
        destSlot as StackInstance;
        startSlot as StackInstance;
        final count = destSlot.quantity + startSlot.quantity;
        final destinationCount = min(maxSize, count);
        final remainder = count - destinationCount;

        state = state.rebuild((p0) {
          p0[destIndex] = destSlot.copyWith(quantity: destinationCount);
          if (remainder > 0) {
            p0[startIndex] = destSlot.copyWith(quantity: remainder);
          } else {
            removeItemAtIndex(startIndex);
          }
        });
        return;
      }
    }
    // Basic swap
    state = state.rebuild((p0) {
      p0[destIndex] = state.itemSlots[startIndex];
      p0[startIndex] = state.itemSlots[destIndex];
    });
  }
}

BuiltList<Tuple2<int, V>> mapIndexs<V>(Iterable<V> items) {
  var index = 0;
  final iterator = items.iterator;
  final tuples = ListBuilder<Tuple2<int, V>>();
  while (iterator.moveNext()) {
    tuples.add(Tuple2(index, iterator.current));
    index++;
  }
  return tuples.build();
}

/**
 * Goals for the new inventory
 *
 * You can drop and drop items to whatever slot you want
 * You can break items into smaller stacks
 * You can group stacks by stacking on top of
 *
 * Resources are auto pulled from your inventory from the back forward
 *
 * Inventory events should be triggered AFTER a change to the inventory not to
 * cause the change. Downstream events need to know AFTER the fact or else
 * sequencing could be wrong
 */
