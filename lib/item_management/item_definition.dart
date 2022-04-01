import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/item_management/item_directory.dart';

import 'instance_id.dart';

part 'item_definition.freezed.dart';
part 'item_definition.g.dart';
part 'item_definition_attributes.dart';
part 'item_instance.dart';

@freezed
class ItemDefinitionId with _$ItemDefinitionId {
  const ItemDefinitionId._();

  @HiveType(typeId: 66, adapterName: 'ItemDefinitionIdAdapter')
  const factory ItemDefinitionId(@HiveField(0) String itemId) =
      _ItemDefinitionId;

  @override
  String toString() => itemId;

  DefT definition<DefT extends ItemDefinition>() =>
      ItemDirectory.getItem(this) as DefT;

  String get itemName => definition().name;

  factory ItemDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$ItemDefinitionIdFromJson(json);
}

@freezed
class ItemDefinition extends BaseItemDefinition with _$ItemDefinition {
  const ItemDefinition._();

  @Implements<Resource>()
  @Implements<Stackable>()
  @Implements<ShowInWallet>()
  const factory ItemDefinition.resourceDefinition(
    ItemDefinitionId id,
    String name,
    String description,
    String image,
    int maxStackSize,
  ) = ResourceDefinition;

  const factory ItemDefinition.drillDefinition(
    ItemDefinitionId id,
    String name,
    String description,
    String image,
    int damage,
  ) = DrillDefinition;

  @Implements<HasPluralName>()
  const factory ItemDefinition.swordDefinition(
    ItemDefinitionId id,
    String name,
    String namePlural,
    String description,
    String image,
    BuiltMap<WeaponAttributes, double> attributes,
  ) = SwordDefinition;

  const factory ItemDefinition.minerDefinition(
    ItemDefinitionId id,
    String name,
    String description,
    int radius,
    int depth,
    int baseDamage,
    // Should this be for all resources or per resource?
    int baseHopperSize,
    int fuelConsumption,
    String image,
  ) = MinerDefinition;

  BuiltList<ItemInstance> generateItemInstance([int countIfStack = 1]) =>
      ItemInstanceGenerator(id, countIfStack).generate();

  factory ItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$ItemDefinitionFromJson(json);
}
