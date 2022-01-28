import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/inventory/item_directory.dart';

part 'item_definitions.freezed.dart';

abstract class BaseItemDefinition {
  ItemKey get itemKey;
  String get name;
  String get description;
}

abstract class ItemAttribute {}

enum WeaponAttributes {
  SHARP,
  BLUNT,
  FLAMING,
}

@freezed
class Sword extends BaseItemDefinition with _$Sword {
  const factory Sword(
      {required ItemKey itemKey,
      required String name,
      required String description,
      required BuiltMap<WeaponAttributes, double> attributes}) = _Sword;
}

@freezed
class Resource extends BaseItemDefinition with _$Resource {
  const factory Resource(
      {required ItemKey itemKey,
      required String name,
      required String description}) = _Resource;
}
