import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/persistence/hive_manager.dart';

part 'inventoryv3.freezed.dart';

part 'inventoryv3.g.dart';

final inventoryProvider =
    StateNotifierProvider<InventoryStateProvider, Inventory>(
        (ref) => InventoryStateProvider());

@freezed
class Inventory with _$Inventory {
  const Inventory._();

  const factory Inventory(int maxItems, ItemContainer items) = _Inventory;

  factory Inventory.fromJson(Map<String, Object?> json) =>
      _$InventoryFromJson(json);

  Iterable<ItemDefinitionId> get keys => items.keys;

  Iterable<MapEntry<ItemDefinitionId, int>> get entries => items.entries;

  int operator [](ItemDefinitionId key) => items[key];

  bool canRemove(ItemContainer otherItems) {
    return items.canSubtract(otherItems);
  }
}

class InventoryStateProvider extends StateNotifier<Inventory> {
  InventoryStateProvider()
      : super(HiveManager.getData(BoxKey.INVENTORYv3, Inventory.fromJson,
            () => const Inventory(1000, ItemContainer.getDefault)));

  void addItem(ItemDefinitionId id, [int count = 1]) {
    addItems(ItemContainer.single(id, count));
  }

  void addItems(ItemContainer items) {
    state = state.copyWith(items: state.items + items);
  }

  bool removeItem(ItemDefinitionId id, [int count = 1]) {
    return removeItems(ItemContainer.single(id, count));
  }

  bool removeItems(ItemContainer items) {
    if (!state.items.canSubtract(items)) return false;
    state = state.copyWith(items: state.items - items);
    return true;
  }

  void increaseMaxItems({required int amount}) {
    state = state.copyWith(maxItems: state.maxItems + amount);
  }
}
