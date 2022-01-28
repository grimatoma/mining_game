import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/inventory/item_directory.dart';
import 'package:mining_game/persistence.dart';

final inventoryProvider =
    StateNotifierProvider<InventoryStateController, ItemContainer>((ref) {
  return InventoryStateController(ref.watch(dataStorageControllerProvider),
      ref.watch(itemDirectoryProvider));
});

class ItemContainer {
  final BuiltMap<ItemKey, int> items;

  ItemContainer(this.items);
  factory ItemContainer.create(Map<ItemKey, int> items) =>
      ItemContainer(items.build());
  factory ItemContainer.single(ItemKey key, int quantity) =>
      ItemContainer({key: quantity}.build());
  ItemContainer._empty() : items = BuiltMap();

  ItemContainer _rebuild(
      Function(MapBuilder<ItemKey, int>) itemInstancesUpdates) {
    return ItemContainer(items.rebuild(itemInstancesUpdates));
  }

  bool get hasNegative => items.values.any((element) => element < 0);

  int get(ItemKey itemKey) => items[itemKey] ?? 0;

  ItemContainer operator -(ItemContainer other) =>
      ItemContainer(items.rebuild((builder) {
        for (final entry in other.items.entries) {
          builder[entry.key] = get(entry.key) - entry.value;
        }
        return builder;
      }));

  ItemContainer operator +(ItemContainer other) =>
      ItemContainer(items.rebuild((builder) {
        for (final entry in other.items.entries) {
          builder[entry.key] = get(entry.key) + entry.value;
        }
        return builder;
      }));

  ItemContainer maxCanBeRemoved(ItemContainer other) =>
      ItemContainer(BuiltMap.build((builder) {
        for (final entries in other.items.entries) {
          builder[entries.key] = min(get(entries.key), entries.value);
        }
      }));

  @override
  String toString() {
    var s = <String>[];
    for (var entry in items.entries) {
      s.add('${entry.key.name}: ${entry.value}');
    }
    return s.join('\n');
  }
}

class InventoryStateController extends StateNotifier<ItemContainer> {
  final ItemDirectory _itemDirectory;
  InventoryStateController(
      DataStorageController controller, this._itemDirectory)
      : super(ItemContainer._empty()) {
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

    state = state._rebuild((p0) => p0.addAll(mappedItems));
    final loadedBox = await Hive.openBox<int>(DatabaseName.inventory0.name);
    loadedBox
        .putAll(mappedItems.map((key, value) => MapEntry(key.name, value)));
  }

  int get(ItemKey key) => state.items[key.name] ?? 0;

  bool canRemove(ItemContainer container) =>
      container.items.entries.any((entry) => get(entry.key) - entry.value >= 0);

  void remove(ItemContainer container) async {
    final mappedItems = {
      for (final entry in container.items.entries)
        entry.key: get(entry.key) - entry.value,
    };
    final itemUpdates = mappedItems.entries.where((entry) => entry.value > 0);
    final itemRemovals = mappedItems.entries.where((entry) => entry.value <= 0);

    final loadedBox = await Hive.openBox<int>(DatabaseName.inventory0.name);

    state = state._rebuild((p0) {
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
