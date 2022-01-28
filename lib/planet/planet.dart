import 'dart:math';
import 'dart:ui';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_configs.dart';
import 'package:mining_game/inventory/item_container.dart';
import 'package:mining_game/inventory/item_directory.dart';
import 'package:mining_game/persistence.dart';

import 'generation/perline_noise.dart';
import 'planet_tile.dart';
import 'point.dart';

part 'planet.g.dart';

final planetControllerProvider =
    StateNotifierProvider<PlanetController, Planet>((ref) {
  final configs = ref.watch(gameConfigsProvider);
  return PlanetController(configs: configs);
});

class BuiltMapAdapter<KeyT, ValueT>
    extends TypeAdapter<BuiltMap<KeyT, ValueT>> {
  @override
  final int typeId;

  BuiltMapAdapter(this.typeId);

  @override
  BuiltMap<KeyT, ValueT> read(BinaryReader reader) {
    return BuiltMap(Map.from(reader.readMap()));
  }

  @override
  void write(BinaryWriter writer, BuiltMap<KeyT, ValueT> obj) {
    writer.writeMap(obj.toMap());
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BuiltMapAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// @JsonSerializable()
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

  // factory Planet.fromJson(Map<String, dynamic> json) => _$Planet(json);
  //
  // Map<String, dynamic> toJson() => _$PlanetToJson(this);

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
  Planet._newPlanet(
      {required GameConfigs configs,
      required int maxResources,
      required Map<PlanetPoint, PlanetTile> map})
      : width = configs.width,
        height = configs.height,
        depth = configs.depth,
        maxResourceSize = maxResources,
        map = map.build().rebuild((p0) => null);
  Planet._empty()
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
}

class PlanetController extends StateNotifier<Planet> {
  static const databaseKey = 'planet';
  Planet get planet => state;
  set planet(Planet planet) => state = planet;

  PlanetController({required GameConfigs configs}) : super(Planet._empty()) {
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
    return Planet._newPlanet(
        configs: configs, maxResources: maxResourceSize, map: planetMap);
  }

  ItemContainer dig(PlanetPoint p, ItemContainer damage) {
    final tile = planet.map[p];
    if (tile == null) return ItemContainer(BuiltMap());

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
                  planetTile.resources.get(ItemKey.IRON) /
                  planet.maxResourceSize))
          .toInt(),
      0,
      0);
}
