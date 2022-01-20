import 'dart:math';
import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_configs.dart';
import 'package:mining_game/mixins/void_stream_provider_mixin.dart';

import 'generation/perline_noise.dart';
import 'planet_tile.dart';
import 'point.dart';

final planetProvider = Provider<Planet>((ref) {
  final configs = ref.watch(gameConfigsProvider);
  return Planet(configs: configs);
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

class Planet with VoidChangeStreamAndStreamProvider {
  late int maxResourceSize;
  final int width;
  final int height;
  final int depth;
  Map<PlanetPoint, PlanetTile> get planetMap => _planetMap;
  late Map<PlanetPoint, PlanetTile> _planetMap;

  Planet({required GameConfigs configs})
      : width = configs.width,
        height = configs.height,
        depth = configs.depth {
    const z = 0;

    // change to spare populating
    _planetMap = <PlanetPoint, PlanetTile>{};
    maxResourceSize = 0;

    final resourceMap =
        executeNoise(configs.width, configs.height, configs.seed);

    for (var x = 0; x < configs.width; x++) {
      for (var y = 0; y < configs.height; y++) {
        final resourceSize = _skew(resourceMap[x][y]);
        final p = PlanetPoint(x, y, z);
        planetMap[p] = PlanetTile(p, this, resourceSize);
        maxResourceSize =
            maxResourceSize > resourceSize ? maxResourceSize : resourceSize;
      }
    }
  }

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

  PlanetTile getTile(PlanetPoint p) =>
      planetMap.putIfAbsent(p, () => PlanetTile(p, this, 0));

  int dig(PlanetPoint p, int strength) {
    final tile = planetMap[p];
    if (tile == null) return 0;
    final oldIron = tile.iron;
    tile.iron = max(tile.iron - strength, 0);
    return oldIron - tile.iron;
  }

  void scanForResources(PlanetPoint p, int radius) {
    notifyUpdate();
    _resourceValue(_scan(p, radius));
  }

  List<PlanetPoint> _scan(PlanetPoint p, int radius) {
    // to be lazy for now it returns everything around it
    final points = [
      for (var x = p.x - 1; x <= p.x + 1; x++)
        for (var y = p.y - 1; y <= p.y + 1; y++)
          if (x >= 0 && x < width && y >= 0 && y < height) PlanetPoint(x, y, 0)
    ];
    for (final point in points) {
      planetMap[point]?.visible = true;
    }
    return points;
  }

  int _resourceValue(List<PlanetPoint> points) {
    return points.fold(
        0,
        (previousValue, element) =>
            previousValue += planetMap[element]?.iron ?? 0);
  }

  tileColor(PlanetTile planetTile) => Color.fromARGB(
      255, min(255, (255 * planetTile.iron / maxResourceSize)).toInt(), 0, 0);
}
