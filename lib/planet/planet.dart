import 'dart:math';
import 'dart:ui';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/game_management/game_configs.dart';
import 'package:mining_game/item_management/item_directory.dart';

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
      min(255, (255 * planetTile.resources.get(ItemKey.IRON) / maxResourceSize))
          .toInt(),
      0,
      0);

  PlanetTile? getTile(PlanetPoint p) => map[p];

  Planet rebuild(Function(MapBuilder<PlanetPoint, PlanetTile>) updates) =>
      Planet._rebuilt(
          maxResourceSize: maxResourceSize,
          height: height,
          depth: depth,
          width: width,
          map: map.rebuild(updates));

  // static void _genImage(
  //     BuiltMap<PlanetPoint, PlanetTile> map, int width, int height) {
  //   if (width == 0) return;
  //   final Int32List pixels = Int32List(map.length);
  //
  //   final points = map.values.toBuiltList();
  //   for (var i = 0; i < points.length; i++) {
  //     var tile = points[i];
  //     pixels[i] =
  //         Color.fromRGBO(0, tile.resources.get(ItemKey.IRON), 0, 1.0).value;
  //   }
  //
  //   var completer = Completer<ui.Image>();
  //   ui.decodeImageFromPixels(
  //     pixels.buffer.asUint8List(),
  //     width,
  //     height,
  //     ui.PixelFormat.bgra8888,
  //     (ui.Image img) {
  //       completer.complete(img);
  //     },
  //   );
  //
  //   return completer.future;
  // }
}
