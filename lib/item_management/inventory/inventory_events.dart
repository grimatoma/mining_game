import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/quests/townsfolk_definition.dart';

enum InventoryEventType { ADD_ITEM, ADD_ITEMS, REMOVE_ITEM, REMOVE_ITEMS }

abstract class InventoryEvent extends GameEvent<InventoryEventType> {
  @override
  InventoryEventType get type;

  const InventoryEvent();
}

class AddItemInventoryEvent extends InventoryEvent {
  @override
  final type = InventoryEventType.ADD_ITEM;
  final ItemDefinitionId itemId;
  final int quantity;

  const AddItemInventoryEvent({required this.itemId, required this.quantity});
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
  final ItemDefinitionId key;
  final int quantity;

  const RemoveItemInventoryEvent({required this.key, required this.quantity});
}

class RemoveItemsInventoryEvent extends InventoryEvent {
  @override
  final type = InventoryEventType.REMOVE_ITEMS;
  final ItemContainer container;

  const RemoveItemsInventoryEvent({required this.container});
}
