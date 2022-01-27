part of 'item_directory.dart';

enum ItemKey {
  BLACK_ROCK,
  SHARP_ROCK,
  BANANA,
}

final _itemDatabase = <ItemDefinition>[
  Sword(
      itemKey: ItemKey.BLACK_ROCK,
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
];
