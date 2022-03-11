import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/persistence/hive_manager.dart';
import 'package:mining_game/persistence/synced.dart';

final inventoryStateProvider2 =
    StateNotifierProvider<InventoryStateController2, Inventory>((ref) {
  return InventoryStateController2(ref.watch(gameEventManagerProvider));
});

class Inventory {
  final SyncedList<ItemInstance?> itemSlots;

  Inventory(this.itemSlots);

  Inventory rebuild(Function(SyncedListBuilder<ItemInstance?>) updates) =>
      Inventory(itemSlots.rebuild(updates));
}

class InventoryStateController2 extends StateNotifier<Inventory> {
  InventoryStateController2(GameEventManager gameEventManager)
      : super(Inventory(SyncedList.load(BoxKey.INVENTORY))) {
    print('init');
    // state = Inventory(state.itemSlots.rebuild((p0) {
    //   p0.addAll([
    //     ItemInstance.minerInstance(
    //         id: InstanceId.generate(),
    //         itemId: const MinerItemId("MINER1"),
    //         hopper: ItemContainer.empty()),
    //     StackInstance(
    //         id: InstanceId.generate(), itemId: ItemKeys.CREDIT, quantity: 3),
    //     StackInstance(
    //         id: InstanceId.generate(), itemId: ItemKeys.CREDIT, quantity: 4),
    //     null,
    //   ]);
    // }));
  }

  // Takes the last items first that meet the requirement until it is fufilled;

  subtractItemRequirement(ItemRequirement requirements) {
    if (requirements.meetsRequirement(state.itemSlots.list)) {
      // Do logic that removes the requirements from the inventroy fromt he first seen.
      if (requirements.requiredAmount.isEmpty) return;

      state = state.rebuild((p0) {
        final itemsNeeded = requirements.requiredAmount.toMap();
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
            p0[index] = null;
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
        final endFinal = min(maxSize, count);
        final startFinal = count - endFinal;

        state = state.rebuild((p0) {
          p0[destIndex] = destSlot.copyWith(quantity: endFinal);
          if (startFinal > 0) {
            p0[startFinal] = destSlot.copyWith(quantity: endFinal);
          } else {
            p0[startFinal] = null;
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
