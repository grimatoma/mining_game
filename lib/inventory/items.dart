part of 'item_directory.dart';

enum ItemKey {
  ROCK,
  SHARP_ROCK,
  // BANANA,
  IRON,
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
