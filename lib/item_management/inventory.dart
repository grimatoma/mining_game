import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/items/metadata/item_instance.dart';
import 'package:mining_game/persistence.dart';

// final startingInventoryProvider = Provider<Inventory>((ref) => Inventory(
//         itemInstances: <ItemInstance>{
//       ItemDatabaseManager.createInstance(const ItemId('junkMiner')),
//       ItemDatabaseManager.createInstance(const ItemId('basicMiner'))
//     }.build()));

final inventoryProvider =
    StateNotifierProvider<InventoryController, Inventory>((ref) {
  return InventoryController(ref.watch(dataStorageControllerProvider));
});

class Inventory {
  final BuiltSet<ItemInstance> itemInstances;

  Inventory({required this.itemInstances});
  Inventory._empty() : itemInstances = BuiltSet();

  Inventory rebuild(Function(SetBuilder<ItemInstance>) itemInstancesUpdates) {
    return Inventory(
        itemInstances: itemInstances.rebuild(itemInstancesUpdates));
  }
}

class InventoryController extends StateNotifier<Inventory> {
  InventoryController(DataStorageController controller)
      : super(Inventory._empty()) {
    void loadInitialData() async {
      final loadedBox =
          await Hive.openBox<ItemInstance>(DatabaseName.inventory5.name);
      state = Inventory(
          itemInstances: {
        for (final val in loadedBox.values) val,
      }.toBuiltSet());
    }

    void updateBox() async {
      final loadedBox =
          await Hive.openBox<ItemInstance>(DatabaseName.inventory5.name);
      stream.listen((inventory) {
        for (final item in inventory.itemInstances) {
          loadedBox.put(item.instanceId.id, item);
        }
      });
    }

    loadInitialData();
    updateBox();
  }

  void addItemInstance(ItemInstance item) {
    state = state.rebuild((p0) => p0.add(item));
  }

  bool removeItemInstance(ItemInstance item) {
    if (!state.itemInstances.contains(item)) return false;
    state = state.rebuild((p0) => p0.remove(item));
    return true;
  }
}
