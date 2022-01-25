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
  final BuiltMap<InstanceId, ItemInstance> itemInstances;

  Inventory({required this.itemInstances});
  Inventory._empty() : itemInstances = BuiltMap();

  Inventory rebuild(
      Function(MapBuilder<InstanceId, ItemInstance>) itemInstancesUpdates) {
    return Inventory(
        itemInstances: itemInstances.rebuild(itemInstancesUpdates));
  }
}

class InventoryController extends StateNotifier<Inventory> {
  InventoryController(DataStorageController controller)
      : super(Inventory._empty()) {
    void loadInitialData() async {
      final loadedBox =
          await Hive.openBox<ItemInstance>(DatabaseName.inventory.name);
      state = Inventory(
          itemInstances: {
        for (final val in loadedBox.values) val.instanceId: val,
      }.build());
    }

    void updateBox() async {
      final loadedBox =
          await Hive.openBox<ItemInstance>(DatabaseName.inventory.name);
      stream.listen((inventory) {
        loadedBox.clear();
        for (final item in inventory.itemInstances.values) {
          loadedBox.put(item.instanceId.toString(), item);
        }
      });
    }

    loadInitialData();
    updateBox();
  }

  void addItemInstance(ItemInstance item) {
    state = state.rebuild((p0) => p0[item.instanceId] = item);
  }

  bool removeItemInstance(ItemInstance item) {
    if (!state.itemInstances.containsKey(item.instanceId)) return false;
    state = state.rebuild((p0) => p0.remove(item.instanceId));
    return true;
  }
}
