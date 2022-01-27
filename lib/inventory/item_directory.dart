import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/inventory/item_definitions.dart';

part 'items.dart';

final itemDirectoryProvider = Provider<ItemDirectory>((ref) => ItemDirectory());

class ItemDirectory {
  final BuiltMap<ItemKey, ItemDefinition> _items;
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
  ItemDefinition getItemDefinition(ItemKey key) => _items[key]!;
}
