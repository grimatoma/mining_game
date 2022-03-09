import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/item_management/item_directory.dart';

part 'item_ftest.freezed.dart';
part 'item_ftest.g.dart';

@freezed
class ItemId with _$ItemId {
  const ItemId._();
  @HiveType(typeId: 66, adapterName: 'ItemIdAdapter')
  const factory ItemId(@HiveField(0) String itemId) = _ItemId;

  @override
  String toString() => itemId;

  // ItemDefinition get definition => ItemDirectory.getItem(this);
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
  const factory ItemDefinition.resourceWalletOnlyDefinition(
      {required ItemId id,
      required String name,
      String? namePlural,
      required String description}) = ResourceWalletOnlyDefinition;

  @Implements<Resource>()
  const factory ItemDefinition.resourceDefinition(
      {required ItemId id,
      required String name,
      String? namePlural,
      required String description}) = ResourceDefinition;

  const factory ItemDefinition.drillDefinition(
      {required ItemId id,
      required String name,
      String? namePlural,
      required String description,
      required int damage}) = DrillDefinition;

  const factory ItemDefinition.swordDefinition(
          {required ItemId id,
          required String name,
          String? namePlural,
          required String description,
          required BuiltMap<WeaponAttributes, double> attributes}) =
      SwordDefinition;

  factory ItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$ItemDefinitionFromJson(json);
}

enum WeaponAttributes {
  SHARP,
  BLUNT,
  FLAMING,
}

abstract class BaseItemDefinition {
  ItemId get id;
  String get name;
  String? get namePlural;
  String get description;
}

abstract class ShowInWallet {}

abstract class HideInInventory {}

abstract class Resource {}
