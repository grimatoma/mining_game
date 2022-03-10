import 'package:built_collection/built_collection.dart';
import 'package:mining_game/item_management/item_definition.dart';

class Inventory {
  final BuiltList<ItemInstance?> itemSlots;

  Inventory(this.itemSlots);
}

class InventoryController2 {
  late Inventory _inventory;

  // Takes the last items first that meet the requirement until it is fufilled;
  void subtractItemRequirement(ItemRequirement requirements) {
    if (requirements.meetsRequirement(_inventory.itemSlots)) {
      // Do logic that removes the requirements from the inventroy fromt he first seen.
    }
  }

  void moveItem(int startIndex, int destIndex) {
    final startSlot = _inventory.itemSlots[startIndex];
    final destSlot = _inventory.itemSlots[destIndex];
    if (startSlot != null &&
        destSlot != null &&
        startSlot.itemId == destSlot.itemId) {
      final definition = destSlot.itemId.definition();
      if (definition is Stackable) {
        // Merge
        return;
      }
    }
    // swap the two indexes
    // If they are both a stack of the same type join with the
    // remainer going to the start.
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
