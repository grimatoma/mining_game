import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/widgets.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/requirement.dart';
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
    required SpriteDefinition image,
    // required int maxStackSize,
    int? sellPrice,
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
    required SpriteDefinition image,
    // required int maxStackSize,
    int? sellPrice,
  }) = ResourceItemDefinition;

  const factory ItemDefinition.drill({
    required ItemDefinitionId id,
    required String name,
    required String description,
    required SpriteDefinition image,
    required int damage,
  }) = DrillItemDefinition;

  @Implements<CanHavePluralName>()
  @Implements<CanSell>()
  const factory ItemDefinition.tool({
    required ItemDefinitionId id,
    required String name,
    String? namePlural,
    required String description,
    required SpriteDefinition image,
    int? sellPrice,
  }) = ToolItemDefinition;

  @Implements<CanHavePluralName>()
  @Implements<CanSell>()
  const factory ItemDefinition.sword({
    required ItemDefinitionId id,
    required String name,
    String? namePlural,
    required String description,
    required SpriteDefinition image,
    required Map<WeaponAttributes, double> attributes,
    int? sellPrice,
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
    required SpriteDefinition image,
  }) = MinerItemDefinition;

  // String get imagePath => image.toString();

  MineSprite widget({
    BoxFit? fit,
    double? width,
    double? height,
  }) =>
      MineSprite(spriteDefinition: image);

  ItemContainer createSingleContainer([int quantity = 1]) =>
      id.createSingleContainer(quantity);

  factory ItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$ItemDefinitionFromJson(json);
}

@freezed
class SpriteDefinition with _$SpriteDefinition {
  const SpriteDefinition._();

  const factory SpriteDefinition(
    String path,
  ) = _SpriteDefinition;

  const factory SpriteDefinition.fromSheet(
    SpriteSheetDefinition sheet, {
    required int columnIndex,
    required int rowIndex,
    @Default(1) int length,
    @Default(1) int height,
  }) = SheetSpriteDefinition;

  factory SpriteDefinition.fromJson(Map<String, dynamic> json) =>
      _$SpriteDefinitionFromJson(json);
}

@freezed
class SpriteSheetDefinition with _$SpriteSheetDefinition {
  const SpriteSheetDefinition._();

  const factory SpriteSheetDefinition(
    String path, {
    required int columnsNumber,
    required int rowsNumber,
  }) = _SpriteSheetDefinition;

  factory SpriteSheetDefinition.fromJson(Map<String, dynamic> json) =>
      _$SpriteSheetDefinitionFromJson(json);
}

class MineSprite extends ConsumerStatefulWidget {
  final SpriteDefinition spriteDefinition;
  final BoxFit? fit;
  final double? width;
  final double? height;

  const MineSprite({
    this.fit,
    this.width,
    this.height,
    required this.spriteDefinition,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _MineSpriteState();
}

class _MineSpriteState extends ConsumerState<MineSprite> {
  late final Future<Sprite> sprite = () async {
    final path = widget.spriteDefinition
        .map((p) => p.path, fromSheet: (p) => p.sheet.path);
    final image = await Flame.images.load(path);
    print('init image $path!');

    return widget.spriteDefinition.map((p) => Sprite(image), fromSheet: (p) {
      final width = image.width / p.sheet.columnsNumber;
      final height = image.height / p.sheet.rowsNumber;
      return Sprite(image,
          srcPosition: Vector2(width * p.columnIndex, height * p.rowIndex),
          srcSize: Vector2(width * p.length, height * p.height * -1));
    });
  }.call();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: sprite,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return SpriteWidget(
            sprite: snapshot.data as Sprite,
          );
        }
        return Container();
      },
    );
  }
}
