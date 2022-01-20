import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'items.dart';

final inventoryStateProvider =
    StateNotifierProvider<InventoryController, BuiltMap<Item, int>>((ref) {
  return InventoryController(BuiltMap<Item, int>());
});

class InventoryController extends StateNotifier<BuiltMap<Item, int>> {
  InventoryController(BuiltMap<Item, int> state) : super(state);

  void addItem(Item item) {
    state = state.rebuild((p0) => p0.putIfAbsent(item, () => 1));
  }

  /// Attempts to remove the item from the inventory.
  ///
  /// If none are in the inventory false will be returned.
  bool removeItem(Item item) {
    final count = state[item];
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
