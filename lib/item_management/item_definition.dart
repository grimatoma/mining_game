import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/item_management/item_directory.dart';

import 'instance_id.dart';
import 'items/item_container.dart';

part 'item_definition.freezed.dart';
part 'item_definition.g.dart';
part 'item_definition_attributes2.dart';
part 'item_instance.dart';

enum _ItemType {
  DEFAULT,
  MINER,
}

@freezed
class ItemId with _$ItemId {
  const ItemId._();
  @HiveType(typeId: 66, adapterName: 'ItemIdAdapter')
  @Assert('itemType == _ItemType.DEFAULT', 'Use default type only!')
  const factory ItemId.itemId(@HiveField(0) String itemId,
      [@Default(_ItemType.DEFAULT) _ItemType itemType]) = _ItemId;

  @HiveType(typeId: 69, adapterName: 'MinerIdAdapter')
  @Assert('itemType == _ItemType.MINER', 'Use default type only!')
  const factory ItemId.minerId(@HiveField(0) String itemId,
      [@Default(_ItemType.MINER) _ItemType itemType]) = MinerId;

  @override
  String toString() => itemId;

  DefT definition<DefT extends ItemDefinition>() =>
      ItemDirectory.getItem(this) as DefT;
  String get itemName => definition().name;

  factory ItemId.fromJson(Map<String, dynamic> json) => _$ItemIdFromJson(json);
}

@freezed
class ItemDefinition extends BaseItemDefinition with _$ItemDefinition {
  @Implements<HideInInventory>()
  @Implements<ShowInWallet>()
  @Implements<Resource>()
  @Implements<HasPluralName>()
  const factory ItemDefinition.resourceWalletOnlyDefinition(
      {required ItemId id,
      required String name,
      required String namePlural,
      required String description}) = ResourceWalletOnlyDefinition;

  @Implements<Resource>()
  const factory ItemDefinition.resourceDefinition(
      {required ItemId id,
      required String name,
      required String description}) = ResourceDefinition;

  const factory ItemDefinition.drillDefinition(
      {required ItemId id,
      required String name,
      required String description,
      required int damage}) = DrillDefinition;

  @Implements<HasPluralName>()
  const factory ItemDefinition.swordDefinition(
          {required ItemId id,
          required String name,
          required String namePlural,
          required String description,
          required BuiltMap<WeaponAttributes, double> attributes}) =
      SwordDefinition;

  @Assert('id.itemType == _ItemType.MINER', 'Must use a MINER ItemId')
  factory ItemDefinition.minerDefinition(
      {required ItemId id,
      required String name,
      required String description,
      required int radius,
      required int depth,
      required int baseDamage,
      // Should this be for all resources or per resource?
      required int baseHopperSize,
      required int fuelConsumption,
      required String image}) = MinerDefinition;

  factory ItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$ItemDefinitionFromJson(json);
}
