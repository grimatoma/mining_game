import 'package:mining_game/event_manager/game_event_manager.dart';

import 'item_directory.dart';
import 'items/item_container.dart';

enum InventoryEventType { ADD_ITEM, ADD_ITEMS, REMOVE_ITEM, REMOVE_ITEMS }

abstract class InventoryEvent extends GameEvent<InventoryEventType> {
  @override
  InventoryEventType get type;

  const InventoryEvent();
}

class AddItemInventoryEvent extends InventoryEvent {
  @override
  final type = InventoryEventType.ADD_ITEM;
  final ItemKey key;
  final int quantity;

  const AddItemInventoryEvent({required this.key, required this.quantity});
}

class AddItemsInventoryEvent extends InventoryEvent {
  @override
  final type = InventoryEventType.ADD_ITEMS;
  final ItemContainer container;

  const AddItemsInventoryEvent({required this.container});
}

class RemoveItemInventoryEvent extends InventoryEvent {
  @override
  final type = InventoryEventType.REMOVE_ITEM;
  final ItemKey key;
  final int quantity;

  const RemoveItemInventoryEvent({required this.key, required this.quantity});
}

class RemoveItemsInventoryEvent extends InventoryEvent {
  @override
  final type = InventoryEventType.REMOVE_ITEMS;
  final ItemContainer container;

  const RemoveItemsInventoryEvent({required this.container});
}
