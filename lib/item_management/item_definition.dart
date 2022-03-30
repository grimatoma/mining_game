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

  @HiveType(typeId: 66, adapterName: 'BasicItemIdAdapter')
  const factory ItemDefinitionId.basicItemId(@HiveField(0) String itemId) =
      BasicItemId;

  @HiveType(typeId: 69, adapterName: 'MinerItemIdAdapter')
  const factory ItemDefinitionId.minerItemId(@HiveField(0) String itemId) =
      MinerItemId;

  @HiveType(typeId: 70, adapterName: 'StackableItemIdAdapter')
  const factory ItemDefinitionId.stackableItemId(@HiveField(0) String itemId) =
      StackableItemId;

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
  // // This is dumb, remove this. just have a list of resources to show in a wallet.
  // @Implements<HideInInventory>()
  // @Implements<ShowInWallet>()
  // @Implements<Resource>()
  // @Implements<HasPluralName>()
  // // @Assert('id is StackableItemId', 'Must use a StackableItemId')
  // @Implements<Stackable>()
  // const factory ItemDefinition.resourceWalletOnlyDefinition(
  //   ItemId id,
  //   int maxStackSize,
  //   String name,
  //   String namePlural,
  //   String description,
  //   String image,
  // ) = ResourceWalletOnlyDefinition;

  @Implements<Resource>()
  // @Assert('id is StackableItemId', 'Must use a StackableItemId')
  @Implements<Stackable>()
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

  @Assert('id is MinerItemId', 'Must use a MinerItemId')
  factory ItemDefinition.minerDefinition(
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

  factory ItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$ItemDefinitionFromJson(json);
}
