import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/services.dart';
import 'package:mining_game/mining/miner.dart';

import 'item_ftest.dart';

class ItemDirectory {
  static BuiltMap<MinerDefinitionId, MinerDefinition>? _miners;
  static BuiltMap<ItemId, ItemDefinition>? _items2;

  static Future<void> init() async {
    _miners = await parseJsonMap<MinerDefinitionId, MinerDefinition>(
        'json/miners.json', MinerDefinition.fromJsonFull, (miner) => miner.id);
    _items2 = await parseJsonMap<ItemId, ItemDefinition>(
        'json/items.json', ItemDefinition.fromJson, (item) => item.id);
  }

  static Future<BuiltList<T>> parseJsonList<T>(
      String path, T Function(Map<String, dynamic> json) fromJson) async {
    final json = await rootBundle.loadString(path);
    final jsonMapArray = jsonDecode(json) as Iterable;
    return jsonMapArray.map((e) => fromJson(e)).toBuiltList();
  }

  static Future<BuiltMap<K, V>> parseJsonMap<K, V>(
      String path,
      V Function(Map<String, dynamic> json) fromJson,
      K Function(V) getKey) async {
    final json = await rootBundle.loadString(path);
    final jsonMapItems = jsonDecode(json) as Iterable;
    final m = <K, V>{};
    for (var element in jsonMapItems) {
      final item = fromJson(element);
      m[getKey(item)] = item;
    }
    return m.build();
  }

  static MinerDefinition getMiner(MinerDefinitionId id) => _miners![id]!;
  static ItemDefinition getItem(ItemId id) => _items2![id]!;
}

class ItemKeys {
  static const ROCK = ItemId('ROCK');
  static const SHARP_ROCK = ItemId('SHARP_ROCK');
  static const IRON = ItemId('IRON');
  static const COPPER = ItemId('COPPER');
  static const TEST_DRILL = ItemId('TEST_DRILL');
  static const CREDIT = ItemId('CREDIT');
}
