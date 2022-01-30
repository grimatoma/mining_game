import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/item_definitions.dart';
import 'package:mining_game/item_management/item_directory.dart';

part 'sword.freezed.dart';

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
