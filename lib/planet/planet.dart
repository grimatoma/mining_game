import 'dart:math';
import 'dart:ui';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/game_management/game_configs.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/item_management/requirement.dart';

import 'planet_tile.dart';
import 'point.dart';

part 'planet.g.dart';

@HiveType(typeId: 25)
class Planet {
  @HiveField(0)
  final int maxResourceSize;
  @HiveField(1)
  final int width;
  @HiveField(2)
  final int height;
  @HiveField(3)
  final int depth;
  @HiveField(4)
  final BuiltMap<PlanetPoint, PlanetTile> map;

  Planet(
      {required this.maxResourceSize,
      required this.width,
      required this.height,
      required this.depth,
      required this.map});

  Planet._rebuilt(
      {required this.maxResourceSize,
      required this.width,
      required this.height,
      required this.depth,
      required this.map});

  Planet.newPlanet(
      {required GameConfigs configs,
      required int maxResources,
      required Map<PlanetPoint, PlanetTile> map})
      : width = configs.width,
        height = configs.height,
        depth = configs.depth,
        maxResourceSize = maxResources,
        map = map.build();

  Planet.empty()
      : maxResourceSize = 0,
        width = 0,
        height = 0,
        depth = 0,
        map = BuiltMap();

  tileColor(PlanetTile planetTile) => Color.fromARGB(
      255,
      min(255, (255 * planetTile.resources[Items.IRON_ORE] / maxResourceSize))
          .toInt(),
      0,
      0);

  PlanetTile getTile(PlanetPoint p) {
    final tile = map[p];
    if (tile == null) {
      print('Getting a null tile!');
    }
    return tile ??
        PlanetTile(
            point: const PlanetPoint(-1, -1, -1),
            resources: ItemContainer.getDefault,
            visible: false);
  }

  Planet rebuild(Function(MapBuilder<PlanetPoint, PlanetTile>) updates) =>
      Planet._rebuilt(
          maxResourceSize: maxResourceSize,
          height: height,
          depth: depth,
          width: width,
          map: map.rebuild(updates));
}
