import 'dart:convert';
import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/requirement.dart';

import 'quests/townsfolk_definition.dart';

part 'loot_table.freezed.dart';

part 'loot_table.g.dart';

@freezed
class LootTable with _$LootTable {
  static final _random = Random(0);
  late final int _totalCount =
      items.fold(0, (previousValue, item) => previousValue + item.weight);

  LootTable._();

  factory LootTable(List<ItemProbability> items) = _LootTable;

  ItemContainer get pullLoot {
    var roll = _random.nextInt(_totalCount + 1);

    for (final item in items) {
      roll -= item.weight;
      if (roll <= 0) {
        var count = item.min;
        if (item.max - item.min > 0) {
          count += _random.nextInt(item.max + 1 - item.min);
        }
        return ItemContainer.single(item.id, count);
      }
    }
    throw Exception('failed to pull loot item');
  }
}

@freezed
class ItemProbability with _$ItemProbability {
  const factory ItemProbability(ItemDefinitionId id, int weight,
      {@Default(1) int min, @Default(1) int max}) = _ItemProbability;

  factory ItemProbability.fromJson(Map<String, dynamic> json) =>
      _$ItemProbabilityFromJson(json);
}

class ItemDefinitionDoubleIdKeyedMapConverter
    extends ObjectKeyedMapConverter<ItemDefinitionId, double> {
  const ItemDefinitionDoubleIdKeyedMapConverter();

  @override
  ItemDefinitionId genKey(String keyVal) =>
      ItemDefinitionId.fromJson(jsonDecode(keyVal));
}
