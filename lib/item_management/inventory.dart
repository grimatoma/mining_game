import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'items.dart';

final startingInventoryProvider = Provider<BuiltMap<Item, int>>((ref) => {
      const Miner(
          id: 3,
          name: 'Test Miner 3',
          description: 'this is the third miner',
          radius: 1,
          depth: 1,
          damage: 1,
          hopperSize: 50,
          fuelConsumption: 5): 1,
      const Miner(
          id: 4,
          name: 'Test Miner 4',
          description: 'this is the 4 miner',
          radius: 1,
          depth: 1,
          damage: 1,
          hopperSize: 50,
          fuelConsumption: 5): 2,
      const Miner(
          id: 5,
          name: 'Test Miner 5',
          description: 'this is the 5 miner',
          radius: 1,
          depth: 1,
          damage: 1,
          hopperSize: 50,
          fuelConsumption: 5): 3,
    }.build());

final inventoryProvider =
    StateNotifierProvider<InventoryController, Inventory>((ref) {
  return InventoryController(Inventory(ref.watch(startingInventoryProvider)));
});

class Inventory {
  final BuiltMap<Item, int> items;

  Inventory(this.items);
  Inventory._empty() : items = BuiltMap(<Item, int>{});

  Inventory rebuild(Function(MapBuilder<Item, int>) updates) =>
      Inventory(items.rebuild(updates));

  int operator [](ItemType key) => items[key] ?? 0;
}

class InventoryController extends StateNotifier<Inventory> {
  InventoryController(Inventory state) : super(state);

  void addItem(Item item) {
    state = state.rebuild((p0) => p0.putIfAbsent(item, () => 1));
  }

  /// Attempts to remove the item from the inventory.
  ///
  /// If none are in the inventory false will be returned.
  bool removeItem(Item item) {
    final count = state.items[item];
    if (count == null) return false;
    state = state.rebuild((p0) {
      final newVal = count - 1;
      // Remove from index if none exist.
      if (newVal <= 0) return p0.remove(item);
      return p0[item] = count - 1;
    });
    return true;
  }
}
