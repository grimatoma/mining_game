import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/services.dart';
import 'package:mining_game/mining/miner.dart';

import 'item_ftest.dart';

// part 'item_directory.g.dart';

// final itemDirectoryProvider = Provider<ItemDirectory>((ref) => ItemDirectory());

class ItemDirectory {
  static ItemDirectory directory = ItemDirectory();

  // final BuiltMap<ItemKey, BaseItemForDirectory> _items;
  // final BuiltMap<String, ItemKey> _keys;
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
    final json = await rootBundle.loadString('json/store_listings.json');
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

  // ItemDirectory()
  // : _items = {
  //     for (final item in _itemDatabase) item.itemKey: item,
  //   }.build(),
  //   _keys = {
  //     for (final key in ItemKey.values) key.name: key,
  //   }.build() {
  // assert(ItemKey.values.length == _items.length,
  //     'Keys to items have a mismatch!');
  // assert(_items.length == _itemDatabase.length,
  //     'An Item key is being used twice!');
  // for (final key in ItemKey.values) {
  //   assert(_items[key] != null, 'Item ${key.name} missing item definition');
  // }
  // Future<void> load() async {

  // final listingsJson =
  // await rootBundle.loadString('json/store_listings.json');
  // final listingsJsonMap = jsonDecode(minersJson) as Iterable;
  // final listings = <int, ShopListing>{};
  // for (var element in listingsJsonMap) {
  //   final miner = ShopListing.fromJson(element);
  //   miners[miner.id] = miner;
  // }
  // }

  // load();
  // }

  // ItemKey getKey(String s) => _keys[s]!;

  // BaseItemForDirectory operator [](ItemKey key) => _items[key]!;
  static MinerDefinition getMiner(MinerDefinitionId id) => _miners![id]!;
  static ItemDefinition getItem(ItemId id) => _items2![id]!;
}

// @HiveType(typeId: 36)
// enum ItemKey {
//   @HiveField(0)
//   ROCK,
//   @HiveField(1)
//   SHARP_ROCK,
//   @HiveField(2)
//   IRON,
//   @HiveField(3)
//   COPPER,
//   @HiveField(4)
//   TEST_DRILL,
//   @HiveField(5)
//   CREDIT,
// }

class ItemKeys {
  static const ROCK = ItemId('ROCK');
  static const SHARP_ROCK = ItemId('SHARP_ROCK');
  static const IRON = ItemId('IRON');
  static const COPPER = ItemId('COPPER');
  static const TEST_DRILL = ItemId('TEST_DRILL');
  static const CREDIT = ItemId('CREDIT');
}

extension Def on ItemId {
  DefT getDefinition<DefT extends BaseItemDefinition>() =>
      ItemDirectory.getItem(this) as DefT;
}

// final _itemDatabase = <BaseItemForDirectory>[
//   SwordDefinition(
//       itemKey: ItemKey.ROCK,
//       name: 'Black Rock',
//       description: 'Often found in dark caves',
//       attributes: BuiltMap()),
//   SwordDefinition(
//       itemKey: ItemKey.SHARP_ROCK,
//       name: 'Black Rock',
//       description: 'Often found in dark caves',
//       attributes: {
//         WeaponAttributes.SHARP: 10.0,
//       }.build()),
//   const ResourceDefinition(
//     itemKey: ItemKey.IRON,
//     name: 'Iron',
//     description: 'iron',
//   ),
//   const ResourceDefinition(
//     itemKey: ItemKey.COPPER,
//     name: 'Copper',
//     description: 'copper',
//   ),
//   const DrillDefinition(
//     itemKey: ItemKey.TEST_DRILL,
//     name: 'Test drill',
//     description: 'I do extra damage',
//     damage: 3,
//   ),
//   const ResourceDefinition(
//     itemKey: ItemKey.CREDIT,
//     name: 'Credit',
//     description: 'A form of currency',
//   ),
// ];
