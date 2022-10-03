import 'dart:convert';
import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flame/widgets.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/main.dart';

part 'item_definition.freezed.dart';

part 'item_definition.g.dart';

part 'item_definition_attributes.dart';

part 'item_instance.dart';

@freezed
class ItemDefinitionId with _$ItemDefinitionId {
  const ItemDefinitionId._();

  const factory ItemDefinitionId(String itemId) = _ItemDefinitionId;

  @override
  String toString() => itemId;

  // DefT definition<DefT extends ItemDefinition>() =>
  //     ItemDirectory.getItem(this) as DefT;

  ItemDefinition get definition => ItemDirectory.getItem(this);

  String get itemName => definition.name;

  ItemContainer createSingleContainer([int quantity = 1]) =>
      ItemContainer.single(this, quantity);

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
  @Implements<CanSell>()
  const factory ItemDefinition.resourceDefinition({
    required ItemDefinitionId id,
    required String name,
    String? namePlural,
    required String description,
    required ImageDefinition image,
    required int maxStackSize,
    ItemContainer? sellPrice,
  }) = ResourceDefinition;

  const factory ItemDefinition.drillDefinition({
    required ItemDefinitionId id,
    required String name,
    required String description,
    required ImageDefinition image,
    required int damage,
  }) = DrillDefinition;

  @Implements<CanHavePluralName>()
  @Implements<CanSell>()
  const factory ItemDefinition.swordDefinition({
    required ItemDefinitionId id,
    required String name,
    String? namePlural,
    required String description,
    required ImageDefinition image,
    required Map<WeaponAttributes, double> attributes,
    ItemContainer? sellPrice,
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
    required ImageDefinition image,
  }) = MinerDefinition;

  String get imagePath => image.path;

  Widget get imageWidget {
    if (image.row == null) {
      return Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      );
    }
    return SpriteWidget(
      sprite: spriteSheets[imagePath]!.getSprite(image.row!, image.column!),
    );
  }

  ItemContainer createSingleContainer([int quantity = 1]) =>
      id.createSingleContainer(quantity);

  factory ItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$ItemDefinitionFromJson(json);
}

@freezed
class ImageDefinition with _$ImageDefinition {
  const ImageDefinition._();

  const factory ImageDefinition(String path, {int? row, int? column}) =
      _ImageDefinition;

  factory ImageDefinition.fromJson(Map<String, dynamic> json) =>
      _$ImageDefinitionFromJson(json);
}
