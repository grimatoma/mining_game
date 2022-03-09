part of 'item_definition.dart';

abstract class BaseItemDefinition {
  ItemId get id;
  String get name;
  String get description;
}

abstract class ShowInWallet {}

abstract class HideInInventory {}

abstract class Resource {}

abstract class HasPluralName {
  String get namePlural;
}

enum WeaponAttributes {
  SHARP,
  BLUNT,
  FLAMING,
}
