import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/persistence.dart';

import 'items/item_container.dart';

final inventoryStateProvider =
    StateNotifierProvider<InventoryStateController, ItemContainer>((ref) {
  return InventoryStateController(ref.watch(itemDirectoryProvider));
});

class InventoryStateController extends StateNotifier<ItemContainer> {
  final ItemDirectory _itemDirectory;
  InventoryStateController(this._itemDirectory) : super(ItemContainer.empty()) {
    void loadInitialData() async {
      final loadedBox = await Hive.openBox<int>(DatabaseName.inventory0.name);
      state = ItemContainer({
        for (final val in loadedBox.keys)
          _itemDirectory.getKey(val): loadedBox.get(val) ?? 0,
      }.build());
    }

    loadInitialData();
  }

  void addItem(ItemKey key, int quantity) =>
      add(ItemContainer.single(key, quantity));

  void add(ItemContainer container) async {
    final items = container.items;
    final existingItems = state.items;
    final mappedItems = {
      for (final entry in items.entries)
        entry.key: (existingItems[entry.key] ?? 0) + entry.value,
    };

    state = state.rebuild((p0) => p0.addAll(mappedItems));
    final loadedBox = await Hive.openBox<int>(DatabaseName.inventory0.name);
    loadedBox
        .putAll(mappedItems.map((key, value) => MapEntry(key.name, value)));
  }

  int get(ItemKey key) => state.items[key] ?? 0;

  bool tryRemove(ItemContainer container) {
    if (canRemove(container)) {
      remove(container);
      return true;
    }
    return false;
  }

  bool canRemove(ItemContainer container) =>
      !container.items.entries.any((entry) => get(entry.key) - entry.value < 0);

  void remove(ItemContainer container) async {
    final mappedItems = {
      for (final entry in container.items.entries)
        entry.key: get(entry.key) - entry.value,
    };
    final itemUpdates = mappedItems.entries.where((entry) => entry.value > 0);
    final itemRemovals = mappedItems.entries.where((entry) => entry.value <= 0);

    final loadedBox = await Hive.openBox<int>(DatabaseName.inventory0.name);

    state = state.rebuild((p0) {
      p0.addEntries(itemUpdates);
      for (final itemEntry in itemRemovals) {
        p0.remove(itemEntry.key);
      }
      loadedBox
          .putAll({for (var entry in itemUpdates) entry.key.name: entry.value});
      loadedBox.deleteAll(itemRemovals.map((e) => e.key.name));
    });
  }
}
