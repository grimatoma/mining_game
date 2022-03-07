import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/item_definitions.dart';
import 'package:mining_game/item_management/items/drill.dart';
import 'package:mining_game/item_management/items/resource.dart';
import 'package:mining_game/item_management/items/sword.dart';
import 'package:mining_game/mining/miner.dart';

part 'item_directory.g.dart';

final itemDirectoryProvider = Provider<ItemDirectory>((ref) => ItemDirectory());

class ItemDirectory {
  static ItemDirectory directory = ItemDirectory();

  final BuiltMap<ItemKey, BaseItemForDirectory> _items;
  final BuiltMap<String, ItemKey> _keys;
  static BuiltMap<MinerDefinitionId, MinerDefinition>? _miners;

  static Future<void> init() async {
    final minersJson = await rootBundle.loadString('json/miners.json');
    final minersJsonMap = jsonDecode(minersJson) as Iterable;
    final m = <MinerDefinitionId, MinerDefinition>{};
    for (var element in minersJsonMap) {
      final miner = MinerDefinition.fromJsonFull(element);
      m[miner.id] = miner;
    }
    _miners = m.build();
  }

  ItemDirectory()
      : _items = {
          for (final item in _itemDatabase) item.itemKey: item,
        }.build(),
        _keys = {
          for (final key in ItemKey.values) key.name: key,
        }.build() {
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
  }

  ItemKey getKey(String s) => _keys[s]!;

  BaseItemForDirectory operator [](ItemKey key) => _items[key]!;
  static MinerDefinition getMiner(MinerDefinitionId id) => _miners![id]!;
}

@HiveType(typeId: 36)
enum ItemKey {
  @HiveField(0)
  ROCK,
  @HiveField(1)
  SHARP_ROCK,
  @HiveField(2)
  IRON,
  @HiveField(3)
  COPPER,
  @HiveField(4)
  TEST_DRILL,
  @HiveField(5)
  CREDIT,
}

extension Def on ItemKey {
  DefT getDefinition<DefT extends BaseItemDefinition>() =>
      ItemDirectory.directory._items[this] as DefT;
}

final _itemDatabase = <BaseItemForDirectory>[
  SwordDefinition(
      itemKey: ItemKey.ROCK,
      name: 'Black Rock',
      description: 'Often found in dark caves',
      attributes: BuiltMap()),
  SwordDefinition(
      itemKey: ItemKey.SHARP_ROCK,
      name: 'Black Rock',
      description: 'Often found in dark caves',
      attributes: {
        WeaponAttributes.SHARP: 10.0,
      }.build()),
  const ResourceDefinition(
    itemKey: ItemKey.IRON,
    name: 'Iron',
    description: 'iron',
  ),
  const ResourceDefinition(
    itemKey: ItemKey.COPPER,
    name: 'Copper',
    description: 'copper',
  ),
  const DrillDefinition(
    itemKey: ItemKey.TEST_DRILL,
    name: 'Test drill',
    description: 'I do extra damage',
    damage: 3,
  ),
  const ResourceDefinition(
    itemKey: ItemKey.CREDIT,
    name: 'Credit',
    description: 'A form of currency',
  ),
];
