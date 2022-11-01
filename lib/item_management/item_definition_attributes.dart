part of 'item_definition.dart';

abstract class BaseItemDefinition {
  const BaseItemDefinition();

  ItemDefinitionId get id;

  String get name;

  String get description;

  ImageDefinition get image;
}

abstract class ShowInWallet {}

abstract class HideInInventory {}

abstract class Resource {}

/// An item is not sellable if it does not have a price.
abstract class CanSell {
  // ItemContainer? get sellPrice;
  int? get sellPrice;
}

abstract class CanHavePluralName {
  String? get namePlural;
}

abstract class Stackable {
  // int get maxStackSize;
}

enum WeaponAttributes {
  SHARP,
  BLUNT,
  FLAMING,
}
