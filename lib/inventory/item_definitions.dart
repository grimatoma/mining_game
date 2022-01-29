import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/inventory/item_directory.dart';

part 'item_definitions.freezed.dart';

abstract class BaseItemDefinition {
  const BaseItemDefinition();

  String get name;
  String get description;
}

abstract class BaseItemForDirectory extends BaseItemDefinition {
  const BaseItemForDirectory();

  ItemKey get itemKey;
}

abstract class ShowInWallet {}

abstract class HideInInventory {}

enum WeaponAttributes {
  SHARP,
  BLUNT,
  FLAMING,
}

@freezed
class SwordDefinition extends BaseItemForDirectory with _$SwordDefinition {
  const factory SwordDefinition(
          {required ItemKey itemKey,
          required String name,
          required String description,
          required BuiltMap<WeaponAttributes, double> attributes}) =
      _SwordDefinition;
}

@freezed
class ResourceDefinition extends BaseItemForDirectory
    with _$ResourceDefinition
    implements ShowInWallet, HideInInventory {
  const factory ResourceDefinition(
      {required ItemKey itemKey,
      required String name,
      required String description}) = _ResourceDefinition;
}
