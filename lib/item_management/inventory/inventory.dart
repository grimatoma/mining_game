import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/persistence.dart';

import 'inventory_events.dart';

final inventoryStateProvider =
    StateNotifierProvider<InventoryStateController, ItemContainer>((ref) {
  return InventoryStateController(ref.watch(gameEventManagerProvider));
});

class InventoryStateController extends StateNotifier<ItemContainer> {
  InventoryStateController(GameEventManager gameEventManager)
      : super(ItemContainer.empty()) {
    void loadInitialData() async {
      final loadedBox =
          await Hive.openBox<int>(DatabaseName.inventory000p223d.name);
      state = ItemContainer({
        for (final val in loadedBox.keys)
          ItemDirectory.loadIdFromDb(val): loadedBox.get(val) ?? 0,
      }.build());
    }

    loadInitialData();

    gameEventManager.streamForEventType<InventoryEvent>().listen((event) {
      switch (event.type) {
        case InventoryEventType.ADD_ITEM:
          event as AddItemInventoryEvent;
          _addItem(event.itemId, event.quantity);
          break;
        case InventoryEventType.ADD_ITEMS:
          event as AddItemsInventoryEvent;
          _add(event.container);
          break;
        case InventoryEventType.REMOVE_ITEM:
          event as RemoveItemInventoryEvent;
          throw UnimplementedError('${event.type} not implemented');
        case InventoryEventType.REMOVE_ITEMS:
          event as RemoveItemsInventoryEvent;
          _remove(event.container);
          break;
      }
    });
  }

  void _addItem(ItemDefinitionId itemId, int quantity) =>
      _add(ItemContainer.single(itemId, quantity));

  void _add(ItemContainer container) async {
    final items = container.items;
    final existingItems = state.items;
    final mappedItems = {
      for (final entry in items.entries)
        entry.key: (existingItems[entry.key] ?? 0) + entry.value,
    };

    state = state.rebuild((p0) => p0.addAll(mappedItems));
    final loadedBox =
        await Hive.openBox<int>(DatabaseName.inventory000p223d.name);
    loadedBox.putAll(
        mappedItems.map((key, value) => MapEntry(key.toString(), value)));
  }

  int get(ItemDefinitionId key) => state.items[key] ?? 0;

  bool canRemove(ItemContainer container) =>
      !container.items.entries.any((entry) => get(entry.key) - entry.value < 0);

  Future<bool> _remove(ItemContainer container) async {
    if (!canRemove(container)) return false;
    final mappedItems = {
      for (final entry in container.items.entries)
        entry.key: get(entry.key) - entry.value,
    };
    final itemUpdates = mappedItems.entries.where((entry) => entry.value > 0);
    final itemRemovals = mappedItems.entries.where((entry) => entry.value <= 0);

    final loadedBox =
        await Hive.openBox<int>(DatabaseName.inventory000p223d.name);

    state = state.rebuild((p0) {
      p0.addEntries(itemUpdates);
      for (final itemEntry in itemRemovals) {
        p0.remove(itemEntry.key.toString());
      }
      loadedBox.putAll(
          {for (var entry in itemUpdates) entry.key.toString(): entry.value});
      loadedBox.deleteAll(itemRemovals.map((e) => e.key));
    });
    return true;
  }
}
