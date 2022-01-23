import 'dart:math';
import 'dart:ui';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_configs.dart';
import 'package:mining_game/item_management/resources/resources.dart';

import 'generation/perline_noise.dart';
import 'planet_tile.dart';
import 'point.dart';

final planetControllerProvider =
    StateNotifierProvider<PlanetController, Planet>((ref) {
  final configs = ref.watch(gameConfigsProvider);
  return PlanetController(configs: configs);
});

// final planetMapProvider = Provider<BuiltMap<Point, PlanetTile>>((ref) {
//   return ref.watch(resourceMapProvider).planetMap;
// });
// final planetControllerProvider =
//     StateProvider((ref) => PlanetController(ref.watch(resourceMapProvider)));

// class PlanetController extends StateNotifier<Planet> {
//   final Planet planet;

//   PlanetController(this.planet) : super(planet);
// }

class Planet {
  final int maxResourceSize;
  final int width;
  final int height;
  final int depth;
  BuiltMap<PlanetPoint, PlanetTile> get map => _map;
  final BuiltMap<PlanetPoint, PlanetTile> _map;

  Planet._rebuilt(
      {required this.maxResourceSize,
      required this.width,
      required this.height,
      required this.depth,
      required BuiltMap<PlanetPoint, PlanetTile> map})
      : _map = map;
  Planet._newPlanet(
      {required GameConfigs configs,
      required int maxResources,
      required Map<PlanetPoint, PlanetTile> map})
      : width = configs.width,
        height = configs.height,
        depth = configs.depth,
        maxResourceSize = maxResources,
        _map = map.build().rebuild((p0) => null);
  Planet._empty()
      : maxResourceSize = 0,
        width = 0,
        height = 0,
        depth = 0,
        _map = BuiltMap();

  tileColor(PlanetTile planetTile) => Color.fromARGB(
      255,
      min(
              255,
              (255 *
                  planetTile.resources.get(Resources.iron) /
                  maxResourceSize))
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
}

class PlanetController extends StateNotifier<Planet> {
  Planet get planet => state;
  set planet(Planet planet) => state = planet;

  PlanetController({required GameConfigs configs}) : super(Planet._empty()) {
    planet = _generatePlanet(configs);
  }

  Planet _generatePlanet(GameConfigs configs) {
    int _skew(double i) {
      const multiplier = 10000;
      var out = i;
      out = i * multiplier;
      out = out.abs();
      // Change to .35
      out -= multiplier * .15;
      out = max(0, out);

      return out.toInt();
    }

    const z = 0;

    // change to spare populating
    final planetMap = <PlanetPoint, PlanetTile>{};
    var maxResourceSize = 0;

    final resourceMap =
        executeNoise(configs.width, configs.height, configs.seed);

    for (var x = 0; x < configs.width; x++) {
      for (var y = 0; y < configs.height; y++) {
        final resourceSize = _skew(resourceMap[x][y]);
        final p = PlanetPoint(x, y, z);
        planetMap[p] = PlanetTile(
            point: p,
            controller: this,
            resources:
                ResourceContainer({Resources.iron: resourceSize}.build()),
            visible: false);
        maxResourceSize =
            maxResourceSize > resourceSize ? maxResourceSize : resourceSize;
      }
    }
    return Planet._newPlanet(
        configs: configs, maxResources: maxResourceSize, map: planetMap);
  }

  ResourceContainer dig(PlanetPoint p, ResourceContainer damage) {
    final tile = planet.map[p];
    if (tile == null) return ResourceContainer(BuiltMap());

    final resolvedDamage = tile.resources.maxCanBeRemoved(damage);
    planet = planet.rebuild((p0) {
      p0[p] = tile.copyWith(resources: tile.resources - resolvedDamage);
    });
    return resolvedDamage;
  }

  void scanForResources(PlanetPoint p, int radius) {
    _scan(p, radius);
  }

  List<PlanetPoint> _scan(PlanetPoint p, int radius) {
    // to be lazy for now it returns everything around it
    final points = [
      for (var x = p.x - 1; x <= p.x + 1; x++)
        for (var y = p.y - 1; y <= p.y + 1; y++)
          if (x >= 0 && x < planet.width && y >= 0 && y < planet.height)
            PlanetPoint(x, y, 0)
    ];
    for (final point in points) {
      planet = planet.rebuild((p0) {
        final tile = p0[point];
        if (tile == null) return p0;
        return p0[point] = tile.copyWith(visible: true);
      });
    }
    return points;
  }

  // int _resourceValue(List<PlanetPoint> points) {
  //   return points.fold(
  //       0,
  //       (previousValue, element) =>
  //           previousValue += planetMap[element]?.iron ?? 0);
  // }

  tileColor(PlanetTile planetTile) => Color.fromARGB(
      255,
      min(
              255,
              (255 *
                  planetTile.resources.get(Resources.iron) /
                  planet.maxResourceSize))
          .toInt(),
      0,
      0);
}
