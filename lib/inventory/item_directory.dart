import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/inventory/item_definitions.dart';

part 'item_directory.g.dart';

final itemDirectoryProvider = Provider<ItemDirectory>((ref) => ItemDirectory());

class ItemDirectory {
  final BuiltMap<ItemKey, BaseItemDefinition> _items;
  final BuiltMap<String, ItemKey> _keys;

  ItemDirectory()
      : _items = {
          for (final item in _itemDatabase) item.itemKey: item,
        }.build(),
        _keys = {
          for (final key in ItemKey.values) key.name: key,
        }.build() {
    assert(ItemKey.values.length == _items.length,
        'Keys to items have a mismatch!');
    assert(_items.length == _itemDatabase.length,
        'An Item key is being used twice!');
  }

  ItemKey getKey(String s) => _keys[s]!;

  BaseItemDefinition operator [](ItemKey key) => _items[key]!;
}

@HiveType(typeId: 36)
enum ItemKey {
  @HiveField(0)
  ROCK,
  @HiveField(1)
  SHARP_ROCK,
// BANANA,
  @HiveField(2)
  IRON,
  @HiveField(3)
  COPPER,
}

final _itemDatabase = <BaseItemDefinition>[
  Sword(
      itemKey: ItemKey.ROCK,
      name: 'Black Rock',
      description: 'Often found in dark caves',
      attributes: BuiltMap()),
  Sword(
      itemKey: ItemKey.SHARP_ROCK,
      name: 'Black Rock',
      description: 'Often found in dark caves',
      attributes: {
        WeaponAttributes.SHARP: 10.0,
      }.build()),
  const Resource(
    itemKey: ItemKey.IRON,
    name: 'Iron',
    description: 'iron',
  ),
  const Resource(
    itemKey: ItemKey.COPPER,
    name: 'Copper',
    description: 'copper',
  ),
];
