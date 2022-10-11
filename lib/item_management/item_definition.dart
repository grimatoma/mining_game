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
import 'package:mining_game/quests/townsfolk_definition.dart';

part 'item_definition.freezed.dart';

part 'item_definition.g.dart';

part 'item_definition_attributes.dart';

part 'item_instance.dart';

extension ItemDefinitionIdActions on ItemDefinitionId {
  ItemDefinition get definition => ItemDirectory.getItem(this);

  String get itemName => definition.name;

  ItemContainer createSingleContainer([int quantity = 1]) =>
      ItemContainer.single(this, quantity);
}

@freezed
class ItemDefinition extends BaseItemDefinition with _$ItemDefinition {
  const ItemDefinition._();

  @Implements<Stackable>()
  @Implements<CanHavePluralName>()
  @Implements<CanSell>()
  const factory ItemDefinition.general({
    required ItemDefinitionId id,
    required String name,
    String? namePlural,
    required String description,
    required ImageDefinition image,
    // required int maxStackSize,
    ItemContainer? sellPrice,
  }) = GeneralItemDefinition;

  @Implements<Resource>()
  @Implements<Stackable>()
  @Implements<ShowInWallet>()
  @Implements<CanHavePluralName>()
  @Implements<CanSell>()
  const factory ItemDefinition.resource({
    required ItemDefinitionId id,
    required String name,
    String? namePlural,
    required String description,
    required ImageDefinition image,
    // required int maxStackSize,
    ItemContainer? sellPrice,
  }) = ResourceItemDefinition;

  const factory ItemDefinition.drill({
    required ItemDefinitionId id,
    required String name,
    required String description,
    required ImageDefinition image,
    required int damage,
  }) = DrillItemDefinition;

  @Implements<CanHavePluralName>()
  @Implements<CanSell>()
  const factory ItemDefinition.tool({
    required ItemDefinitionId id,
    required String name,
    String? namePlural,
    required String description,
    required ImageDefinition image,
    ItemContainer? sellPrice,
  }) = ToolItemDefinition;

  @Implements<CanHavePluralName>()
  @Implements<CanSell>()
  const factory ItemDefinition.sword({
    required ItemDefinitionId id,
    required String name,
    String? namePlural,
    required String description,
    required ImageDefinition image,
    required Map<WeaponAttributes, double> attributes,
    ItemContainer? sellPrice,
  }) = SwordItemDefinition;

  const factory ItemDefinition.miner({
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
  }) = MinerItemDefinition;

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
