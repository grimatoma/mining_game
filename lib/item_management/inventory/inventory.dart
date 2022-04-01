import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/persistence/hive_manager.dart';
import 'package:mining_game/persistence/synced.dart';

final inventoryCountsStateProvider =
    StateProvider<BuiltMap<ItemDefinitionId, int>>((ref) {
  final itemCounts = MapBuilder<ItemDefinitionId, int>();
  final inventory = ref.watch(inventoryStateProvider).itemSlots.list;
  for (final item in inventory) {
    if (item == null) continue;
    final count = itemCounts.putIfAbsent(item.itemId, () => 0);
    itemCounts[item.itemId] = count +
        item.maybeMap(
            stackInstance: (stack) => stack.quantity, orElse: () => 1);
  }
  return itemCounts.build();
});

final inventoryStateProvider =
    StateNotifierProvider<InventoryStateController, Inventory>((ref) {
  return InventoryStateController(ref.watch(gameEventManagerProvider));
});

class Inventory {
  final SyncedList<ItemInstance?> itemSlots;

  Inventory(this.itemSlots);

  Inventory rebuild(Function(SyncedListBuilder<ItemInstance?>) updates) =>
      Inventory(itemSlots.rebuild(updates));
}

class InventoryStateController extends StateNotifier<Inventory> {
  InventoryStateController(GameEventManager gameEventManager)
      : super(Inventory(SyncedList.load(BoxKey.INVENTORY)));

  // Takes the last items first that meet the requirement until it is fufilled;

  void clear() {
    state = state.rebuild((p0) => p0.clear());
  }

  void addSlots(int count) {
    state = state.rebuild((p0) => p0.addAll([
          for (int i = 0; i < count; i++) null,
        ]));
  }

  void addItem(ItemInstance item) {
    state = state.rebuild((p0) => p0.add(item));
  }

  void addItems(Iterable<ItemInstance> items) {
    for (final item in items) {
      addItem(item);
    }
  }

  void addItemWithGenerator(ItemInstanceGenerator generator) {
    addItems(generator.generate());
  }

  void removeItem(ItemInstance item) {
    state = state.rebuild((p0) {
      final index = state.itemSlots.list.indexOf(item);
      p0[index] = null;
    });
  }

  ItemInstance? removeItemAtIndex(int index) {
    ItemInstance? returnItem;
    state = state.rebuild((p0) {
      returnItem = p0[index];
      p0[index] = null;
    });
    return returnItem;
  }

  bool meetsRequirements(ItemRequirement requirement) =>
      requirement.meetsRequirement(state.itemSlots.list);

  void subtractItemRequirement(ItemRequirement requirement) {
    if (meetsRequirements(requirement)) {
      // Do logic that removes the requirements from the inventroy fromt he first seen.
      if (requirement.requiredItems.isEmpty) return;

      state = state.rebuild((p0) {
        final itemsNeeded = requirement.requiredItems.toMap();
        for (var index = state.itemSlots.list.length - 1; index >= 0; index--) {
          final item = p0[index] as ItemInstance?;
          if (item == null) continue;
          final itemId = item.itemId;
          if (!itemsNeeded.containsKey(itemId)) continue;

          final amountRequired = itemsNeeded[itemId]!;

          item.maybeMap(stackInstance: (itemStack) {
            final updatedStack = itemStack - amountRequired;
            if (updatedStack.quantity > 0) {
              p0[index] = null;
              itemsNeeded[itemId] = updatedStack.quantity;
            } else {
              p0[index] = updatedStack;
              itemsNeeded.remove(itemId);
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
    }
  }

  void moveItem(int startIndex, int destIndex) {
    final startSlot = state.itemSlots[startIndex];
    final destSlot = state.itemSlots[destIndex];
    // Try to merge stacks.
    if (startSlot != null &&
        destSlot != null &&
        startSlot.itemId == destSlot.itemId) {
      final definition = destSlot.itemId.definition();
      if (definition is Stackable) {
        final maxSize = definition.maxStackSize;
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
