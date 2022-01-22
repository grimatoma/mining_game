import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/item_management/item_database.dart';
import 'package:mining_game/item_management/wallet.dart';

part 'items.freezed.dart';
part 'items.g.dart';

abstract class ItemType {}

abstract class MinerItemType extends ItemType {}

abstract class ScannerItemType extends ItemType {}

abstract class ResourceItemType extends ItemType {}

abstract class DrillItemType extends ItemType {}

@freezed
class ItemId with _$ItemId {
  // const ItemId._();

  const factory ItemId(int id) = _ItemId;
}

@freezed
class InstanceId with _$InstanceId {
  // const ItemId._();

  const factory InstanceId(int id) = _InstanceId;
}

abstract class ItemBase {
  ItemId get itemId;
  String get name;
  String get description;

  const ItemBase();
}

abstract class ItemAttribute {}

abstract class InstantiatableItem extends ItemBase {
  const InstantiatableItem();
}

abstract class SimpleItem extends ItemBase {
  const SimpleItem();
}

abstract class ItemInstance<itemT extends InstantiatableItem> {
  InstanceId get instanceId;
  ItemId get itemId;
  const ItemInstance();

  itemT? get item => ItemDatabaseManager.itemListing[itemId] as itemT;
}

abstract class ShopListing {
  Resources get cost;
  const ShopListing();
}

@freezed
class ItemInstanceShopListing extends ShopListing
    with _$ItemInstanceShopListing {
  const ItemInstanceShopListing._();

  const factory ItemInstanceShopListing(
      {required InstanceId instanceId,
      required Resources cost}) = _ItemInstanceShopListing;

  ItemInstance get item => ItemDatabaseManager.itemInstances[instanceId]!;
}

@freezed
class InstantiatableItemShopListing extends ShopListing
    with _$InstantiatableItemShopListing {
  const InstantiatableItemShopListing._();

  const factory InstantiatableItemShopListing(
      {required ItemId itemId,
      required Resources cost}) = _InstantiatableItemShopListing;
}

@freezed
class SimpleItemShopListing extends ShopListing with _$SimpleItemShopListing {
  const SimpleItemShopListing._();

  const factory SimpleItemShopListing(
      {required SimpleItem item,
      required Resources cost}) = _SimpleItemShopListing;
}

@freezed
class Miner extends InstantiatableItem with _$Miner implements MinerItemType {
  const Miner._();

  const factory Miner(
      {required ItemId itemId,
      required String name,
      required String description,
      required int radius,
      required int depth,
      required int damage,
      required int hopperSize,
      required int fuelConsumption}) = _Miner;
}

@freezed
class MinerInstance extends ItemInstance<Miner> with _$MinerInstance {
  const MinerInstance._();

  @HiveType(typeId: 1, adapterName: 'MinerInstanceAdapter')
  const factory MinerInstance(
      {@HiveField(1) required InstanceId instanceId,
      @HiveField(2) required ItemId itemId,
      @HiveField(3) ItemId? drillItemId,
      @HiveField(4) int? potato}) = _MinerInstance;
}

@freezed
class Drill extends ItemBase with _$Drill implements DrillItemType {
  const Drill._();

  const factory Drill(
      {required ItemId itemId,
      required String name,
      required String description,
      required int damage}) = _Drill;
}

@freezed
class Scanner extends SimpleItem with _$Scanner implements ScannerItemType {
  const Scanner._();

  const factory Scanner(
      {required ItemId itemId,
      required String name,
      required String description,
      required int radius,
      required int depth}) = _Scanner;
}

@freezed
class Resource extends SimpleItem with _$Resource implements ResourceItemType {
  const Resource._();

  const factory Resource({
    required ItemId itemId,
    required String name,
    required String description,
  }) = _Resource;
}

final resourceTypes = {
  const Resource(
      itemId: ItemId(1001),
      name: 'Iron',
      description: "Iron-cha sad that you didn't start with digging gold?"),
  const Resource(
      itemId: ItemId(1002), name: 'Copper', description: 'Is that a Penny?'),
}.build();

@freezed
class ResourceContainer with _$ResourceContainer {
  const ResourceContainer._();

  const factory ResourceContainer(BuiltMap<Resource, int> resources) =
      _ResourceContainer;

  bool get hasNegative => resources.values.any((element) => element < 0);

  int getResourceAmount(Resource resource) => resources[resource] ?? 0;

  ResourceContainer operator -(ResourceContainer other) =>
      ResourceContainer(resources.rebuild((builder) {
        for (final resourceType in resourceTypes) {
          builder[resourceType] = getResourceAmount(resourceType) -
              other.getResourceAmount(resourceType);
        }
        return builder;
      }));

  ResourceContainer operator +(ResourceContainer other) =>
      ResourceContainer(resources.rebuild((builder) {
        for (final resourceType in resourceTypes) {
          builder[resourceType] = getResourceAmount(resourceType) +
              other.getResourceAmount(resourceType);
        }
        return builder;
      }));
  ResourceContainer maxCanBeRemoved(ResourceContainer other) =>
      ResourceContainer(BuiltMap<Resource, int>.build((builder) {
        for (final resourceType in resourceTypes) {
          builder[resourceType] = min(getResourceAmount(resourceType),
              other.getResourceAmount(resourceType));
        }
      }));
}
