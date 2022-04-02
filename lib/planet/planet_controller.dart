import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:ui' as ui;

import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_configs.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';
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

final planetImageProvider = StreamProvider<ui.Image?>((ref) {
  return ref.watch(planetControllerProvider.notifier).planetImage$;
});

class PlanetImageController extends StateNotifier<ui.Image?> {
  PlanetImageController() : super(null);
}

class PlanetController extends StateNotifier<Planet> {
  static const databaseKey = 'planet';
  Planet get planet => state;
  set planet(Planet planet) {
    _genImage(planet.map, planet.width, planet.height, planet.maxResourceSize);
    state = planet;
  }

  final planetImageStreamController = StreamController<ui.Image>.broadcast();

  Stream<ui.Image> get planetImage$ => planetImageStreamController.stream;

  PlanetController({required GameConfigs configs}) : super(Planet.empty()) {
    void loadInitialData() async {
      final loadedBox =
          await Hive.openBox<Planet>(DatabaseName.planet000p223ds.name);
      final loadedPlanet = loadedBox.get(databaseKey);
      if (loadedPlanet == null) {
        planet = _generatePlanet(configs);
      } else {
        planet = loadedPlanet;
      }
    }

    void updateBox() async {
      final loadedBox =
          await Hive.openBox<Planet>(DatabaseName.planet000p223ds.name);
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
            resources: ItemContainer.single(ItemKeys.IRON, resourceSize),
            visible: false);
        maxResourceSize =
            maxResourceSize > resourceSize ? maxResourceSize : resourceSize;
      }
    }

    return Planet.newPlanet(
        configs: configs, maxResources: maxResourceSize, map: planetMap);
  }

  BuiltList<ItemInstance> dig(PlanetPoint p, ItemRequirement damage) {
    final tile = planet.map[p];
    if (tile == null || tile.resources.empty) return BuiltList();

    final resolvedDamage = tile.resources.maxCanBeRemoved(damage);
    planet = planet.rebuild((p0) {
      p0[p] = tile.copyWith(resources: tile.resources - resolvedDamage);
    });
    return ItemInstanceGenerator.generateItemInstance(
        ItemKeys.IRON, resolvedDamage.items[ItemKeys.IRON] ?? 0);
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

    planet = planet.rebuild((p0) {
      for (final point in points) {
        final tile = p0[point];
        if (tile != null) p0[point] = tile.copyWith(visible: true);
      }
    });
    return points;
  }

  tileColor(PlanetTile planetTile) => Color.fromARGB(
      255,
      min(
              255,
              (255 *
                  planetTile.resources.get(ItemKeys.IRON) /
                  planet.maxResourceSize))
          .toInt(),
      0,
      0);

  void _genImage(BuiltMap<PlanetPoint, PlanetTile> map, int width, int height,
      int maxResourceSize) {
    if (width == 0) return;
    final Int32List pixels = Int32List(map.length);

    final r = Random(9);
    for (var y = 0; y < height; y++) {
      for (var x = 0; x < width; x++) {
        int index = y * width + x;
        var tile = map[PlanetPoint(x, y, 0)]!;

        final color = min(255,
                (255 * tile.resources.get(ItemKeys.IRON) / maxResourceSize))
            .toInt();
        pixels[index] = Color.fromRGBO(
                tile.visible ? color : 20,
                tile.visible ? r.nextInt(1) : 100 + r.nextInt(100),
                tile.visible ? r.nextInt(1) : 100 + r.nextInt(100),
                1.0)
            .value;
      }
    }
    ui.decodeImageFromPixels(
      pixels.buffer.asUint8List(),
      width,
      height,
      ui.PixelFormat.bgra8888,
      (ui.Image img) {
        planetImageStreamController.add(img);
      },
    );
  }
}
