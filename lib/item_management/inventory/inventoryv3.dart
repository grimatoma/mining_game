import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/persistence/hive_manager.dart';

part 'inventoryv3.freezed.dart';

part 'inventoryv3.g.dart';

final inventoryProvider =
    StateNotifierProvider<InventoryStateProvider, Inventory>(
        (ref) => InventoryStateProvider());

@freezed
class Inventory with _$Inventory {
  const Inventory._();

  const factory Inventory(
      int maxItems,
      @ItemDefinitionIdKeyedMapConverter()
          Map<ItemDefinitionId, int> items) = _Inventory;

  factory Inventory.fromJson(Map<String, Object?> json) =>
      _$InventoryFromJson(json);

  Inventory rebuild(Function(MapBuilder<ItemDefinitionId, int>) updates) {
    final builder = MapBuilder<ItemDefinitionId, int>(items);
    updates(builder);
    return copyWith(items: builder.build().toMap());
  }

  bool canRemove(Map<ItemDefinitionId, int> otherItems) {
    if (otherItems.keys.any((key) {
      final itemsOwned = items[key];
      if (itemsOwned == null) return false;
      final itemsRequired = otherItems[key]!;
      return itemsOwned > itemsRequired;
    })) return false;
    return true;
  }
}

class InventoryStateProvider extends StateNotifier<Inventory> {
  InventoryStateProvider()
      : super(HiveManager.getData(BoxKey.INVENTORYv3, Inventory.fromJson,
            () => const Inventory(1000, <ItemDefinitionId, int>{})));

  void addItem(ItemDefinitionId id, [int count = 1]) {
    addItems({id: count});
  }

  void addItems(Map<ItemDefinitionId, int> newItems) {
    state = state.rebuild((b) {
      for (final item in newItems.entries) {
        final current = b.putIfAbsent(item.key, () => 0);
        b[item.key] = current + item.value;
      }
    });
  }

  bool removeItem(ItemDefinitionId id, [int count = 1]) {
    return removeItems({id: count});
  }

  bool removeItems(Map<ItemDefinitionId, int> newItems) {
    try {
      state = state.rebuild((b) {
        for (final item in newItems.entries) {
          final remaining = b.putIfAbsent(item.key, () => 0) - item.value;
          if (remaining < 0) {
            throw Exception(
                'Can\'t remove ${item.key} will have $remaining left!');
          }
          b[item.key] = remaining;
        }
      });
      return true;
    } catch (_) {
      return false;
    }
  }
}
