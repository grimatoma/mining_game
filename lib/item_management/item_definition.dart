import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
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

  BuiltList<ItemInstance> generateItemInstance([int countIfStack = 1]) =>
      definition().generateItemInstance(countIfStack);

  factory ItemDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$ItemDefinitionIdFromJson(json);
}

@freezed
class ItemDefinition extends BaseItemDefinition with _$ItemDefinition {
  const ItemDefinition._();

  @Implements<Resource>()
  @Implements<Stackable>()
  @Implements<ShowInWallet>()
  @Implements<CanHavePluralName>()
  const factory ItemDefinition.resourceDefinition({
    required ItemDefinitionId id,
    required String name,
    String? namePlural,
    required String description,
    required String image,
    required int maxStackSize,
  }) = ResourceDefinition;

  const factory ItemDefinition.drillDefinition({
    required ItemDefinitionId id,
    required String name,
    required String description,
    required String image,
    required int damage,
  }) = DrillDefinition;

  @Implements<CanHavePluralName>()
  const factory ItemDefinition.swordDefinition({
    required ItemDefinitionId id,
    required String name,
    String? namePlural,
    required String description,
    required String image,
    required Map<WeaponAttributes, double> attributes,
  }) = SwordDefinition;

  const factory ItemDefinition.minerDefinition({
    required ItemDefinitionId id,
    required String name,
    required String description,
    required int radius,
    required int depth,
    required int baseDamage,
    // Should this be for all resources or per resource?
    required int baseHopperSize,
    required int fuelConsumption,
    required String image,
  }) = MinerDefinition;

  BuiltList<ItemInstance> generateItemInstance([int countIfStack = 1]) =>
      ItemInstanceGenerator(id, countIfStack).generate();

  factory ItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$ItemDefinitionFromJson(json);
}
