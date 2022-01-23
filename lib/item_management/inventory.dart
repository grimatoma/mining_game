import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/item_database.dart';
import 'package:mining_game/item_management/items/metadata/item_attributes.dart';
import 'package:mining_game/item_management/items/metadata/item_instance.dart';
import 'package:mining_game/item_management/items/metadata/item_proto.dart';

final startingInventoryProvider = Provider<Inventory>((ref) => Inventory(
        itemInstances: <ItemInstance>{
      ItemDatabaseManager.createInstance(const ItemId('junkMiner')),
      ItemDatabaseManager.createInstance(const ItemId('basicMiner'))
    }.build()));

final inventoryProvider =
    StateNotifierProvider<InventoryController, Inventory>((ref) {
  return InventoryController(ref.watch(startingInventoryProvider));
});

class Inventory {
  final BuiltSet<ItemInstance> itemInstances;
  // final BuiltMap<StackableItemDefinition, int> simpleItems;

  Inventory({required this.itemInstances});

  Inventory rebuild(
      {Function(SetBuilder<ItemInstance>)? itemInstancesUpdates,
      Function(MapBuilder<StackableItemDefinition, int>)? simpleItemUpdates}) {
    return Inventory(
        itemInstances: itemInstancesUpdates != null
            ? itemInstances.rebuild(itemInstancesUpdates)
            : itemInstances);
    // simpleItems: simpleItemUpdates != null
    //     ? simpleItems.rebuild(simpleItemUpdates)
    //     : simpleItems);
  }

  // BuiltSet<TypeT> getInstancesWithType<TypeT extends ItemType>() =>
  //     itemInstances.whereType<TypeT>().toSet().build();
}

class InventoryController extends StateNotifier<Inventory> {
  InventoryController(Inventory state) : super(state);

  // void addSimpleItem(StackableItemDefinition item) {
  //   state =
  //       state.rebuild(simpleItemUpdates: (p0) => p0.putIfAbsent(item, () => 1));
  // }

  void addItemInstance(ItemInstance item) {
    state = state.rebuild(itemInstancesUpdates: (p0) => p0.add(item));
  }

  // /// Attempts to remove the item from the inventory.
  // ///
  // /// If none are in the inventory false will be returned.
  // bool removeSimpleItem(StackableItemDefinition item) {
  //   final count = state.simpleItems[item];
  //   if (count == null) return false;
  //   state = state.rebuild(simpleItemUpdates: (p0) {
  //     final newVal = count - 1;
  //     // Remove from index if none exist.
  //     if (newVal <= 0) return p0.remove(item);
  //     return p0[item] = count - 1;
  //   });
  //   return true;
  // }

  bool removeItemInstance(ItemInstance item) {
    if (!state.itemInstances.contains(item)) return false;
    state = state.rebuild(itemInstancesUpdates: (p0) => p0.remove(item));
    return true;
  }
}
