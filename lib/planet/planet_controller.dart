import 'dart:math';
import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_configs.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/persistence.dart';

import 'generation/perline_noise.dart';
import 'planet.dart';
import 'planet_tile.dart';
import 'point.dart';

final planetControllerProvider =
    StateNotifierProvider<PlanetController, Planet>((ref) {
  final configs = ref.watch(gameConfigsProvider);
  return PlanetController(configs: configs);
});

class PlanetController extends StateNotifier<Planet> {
  static const databaseKey = 'planet';
  Planet get planet => state;
  set planet(Planet planet) => state = planet;

  PlanetController({required GameConfigs configs}) : super(Planet.empty()) {
    void loadInitialData() async {
      final loadedBox = await Hive.openBox<Planet>(DatabaseName.planet0.name);
      final loadedPlanet = loadedBox.get(databaseKey);
      if (loadedPlanet == null) {
        planet = _generatePlanet(configs);
      } else {
        planet = loadedPlanet;
      }
    }

    void updateBox() async {
      final loadedBox = await Hive.openBox<Planet>(DatabaseName.planet0.name);
      stream.listen((event) {
        loadedBox.put(databaseKey, planet);
      });
    }

    loadInitialData();
    updateBox();
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
            resources: ItemContainer.single(ItemKey.IRON, resourceSize),
            visible: false);
        maxResourceSize =
            maxResourceSize > resourceSize ? maxResourceSize : resourceSize;
      }
    }
    return Planet.newPlanet(
        configs: configs, maxResources: maxResourceSize, map: planetMap);
  }

  ItemContainer dig(PlanetPoint p, ItemContainer damage) {
    final tile = planet.map[p];
    if (tile == null || tile.resources.empty) return ItemContainer.empty();

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

  tileColor(PlanetTile planetTile) => Color.fromARGB(
      255,
      min(
              255,
              (255 *
                  planetTile.resources.get(ItemKey.IRON) /
                  planet.maxResourceSize))
          .toInt(),
      0,
      0);
}
