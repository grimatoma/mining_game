import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/services.dart';

import 'item_definition.dart';

class ItemDirectory {
  static BuiltMap<ItemId, ItemDefinition> _allItems = BuiltMap();
  static BuiltMap<String, ItemId>? _loadItemsFromDbMapping;

  static Future<void> init() async {
    final miners = await parseJsonMap<ItemId, ItemDefinition>(
        'json/miners.json', ItemDefinition.fromJson, (miner) => miner.id);
    final items = await parseJsonMap<ItemId, ItemDefinition>(
        'json/items.json', ItemDefinition.fromJson, (item) => item.id);
    _allItems = _allItems.rebuild((p0) => p0
      ..addAll(miners.toMap())
      ..addAll(items.toMap()));
    _loadItemsFromDbMapping = {
      for (final id in _allItems.keys) id.itemId: id,
    }.build();
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

  static ItemDefinition getItem(ItemId id) => _allItems[id]!;
  static ItemId loadIdFromDb(String id) => _loadItemsFromDbMapping![id]!;
}
