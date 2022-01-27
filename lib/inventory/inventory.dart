import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/inventory/item_directory.dart';
import 'package:mining_game/persistence.dart';

final inventoryProvider =
    StateNotifierProvider<InventoryController, Inventory>((ref) {
  return InventoryController(ref.watch(dataStorageControllerProvider),
      ref.watch(itemDirectoryProvider));
});

class Inventory {
  final BuiltMap<ItemKey, int> itemInstances;

  Inventory({required this.itemInstances});
  Inventory._empty() : itemInstances = BuiltMap();

  Inventory rebuild(Function(MapBuilder<ItemKey, int>) itemInstancesUpdates) {
    return Inventory(
        itemInstances: itemInstances.rebuild(itemInstancesUpdates));
  }
}

class InventoryController extends StateNotifier<Inventory> {
  final ItemDirectory _itemDirectory;
  InventoryController(DataStorageController controller, this._itemDirectory)
      : super(Inventory._empty()) {
    void loadInitialData() async {
      final loadedBox = await Hive.openBox<int>(DatabaseName.inventory.name);
      state = Inventory(
          itemInstances: {
        for (final val in loadedBox.keys)
          _itemDirectory.getKey(val): loadedBox.get(val) ?? 0,
      }.build());
    }

    loadInitialData();
  }

  void addItem(ItemKey key, int quantity) => addItems({key: quantity});

  void addItems(Map<ItemKey, int> items) async {
    final existingItems = state.itemInstances;
    final mappedItems = {
      for (final entry in items.entries)
        entry.key: (existingItems[entry.key] ?? 0) + entry.value,
    };

    state = state.rebuild((p0) => p0.addAll(mappedItems));
    final loadedBox = await Hive.openBox<int>(DatabaseName.inventory.name);
    loadedBox
        .putAll(mappedItems.map((key, value) => MapEntry(key.name, value)));
  }

  void removeItem(ItemKey key, int quantity) => removeItems({key: quantity});

  /// This should be redone to be generic and seperate from the state provider.
  /// Instead rebuild this as a thing to keep a BuiltMap in sync with the Box
  ///
  /// And then make one for list and maybe a set
  /// Then these can be reused as the internal state management and syncing for all states.
  /// Larger Stateproviders can optionally merge multiple of these objects into one or ideally
  /// we keep these states split unless they really should be together like a planet.
  /// But for example certain things only care about the planets width so why also
  /// give it updates on EACH tiles resource changes
  void removeItems(Map<ItemKey, int> items) async {
    final existingItems = state.itemInstances;
    final mappedItems = {
      for (final entry in items.entries)
        entry.key: (existingItems[entry.key] ?? 0) - entry.value,
    };
    final itemUpdates = mappedItems.entries.where((entry) => entry.value > 0);
    final itemRemovals = mappedItems.entries.where((entry) => entry.value <= 0);

    final loadedBox = await Hive.openBox<int>(DatabaseName.inventory.name);

    state = state.rebuild((p0) {
      p0.addEntries(itemUpdates);
      for (final itemEntry in itemRemovals) {
        p0.remove(itemEntry.key);
      }
      loadedBox
          .putAll({for (var entry in itemUpdates) entry.key.name: entry.value});
      loadedBox.deleteAll(itemRemovals.map((e) => e.key));
    });
  }
}

// class BasicListInventoryState<T> {
//   final BuiltList<T> items; // SET?
//
//   BasicListInventoryState(this.items);
//   BasicListInventoryState._empty() : items = BuiltList();
//
//   BasicListInventoryState<T> rebuild(Function(ListBuilder<T>) updates) =>
//       BasicListInventoryState<T>(items.rebuild(updates));
// }
//
// class BasicInternalListInventory<T> {
//   BasicListInventoryState<T> _state;
//   final streamController =
//       StreamController<BasicListInventoryState<T>>.broadcast();
//
//   StreamProvider<BasicListInventoryState<T>> get streamProvider =>
//       StateProvider.autoDispose<BasicListInventoryState<T>>(
//           (ref) => streamProvider.stream);
//
//   BasicInternalListInventory(BasicListInventoryState<T> state) : _state = state;
//
//   void addItem(T t) {
//     _state = _state.rebuild((p0) => p0.add(t));
//   }
//   // void addItem
//
//   bool removeItem(T t) {
//     var isSuccess = false;
//     _state = _state.rebuild((p0) {
//       isSuccess = p0.remove(t);
//       return p0;
//     });
//     return isSuccess;
//   }
// }
//
// class Scanner {}
//
// class ScannerManager extends BasicInternalListInventory<Scanner> {
//   ScannerManager(BasicListInventoryState<Scanner> state) : super(state);
// }
