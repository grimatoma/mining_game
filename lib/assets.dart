import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:mining_game/planet/planet_manager.dart';
import 'package:mining_game/planet/widgets/buildings.dart';

class Assets {
  static Image getTile(TileType tileType, Hexagon location,
      [double? width, double? height]) {
    var sourceMap = <String>[];
    switch (tileType) {
      case TileType.Grass:
        sourceMap = const [
          'assets/images/tiles/02Grass/farmland.png',
          'assets/images/tiles/02Grass/plains.png',
          'assets/images/tiles/02Grass/prairie.png',
          'assets/images/tiles/02Grass/shrubland.png',
        ];
        break;
      case TileType.Mountain:
        sourceMap = const [
          'assets/images/tiles/11-mountains/mountain_range.png',
        ];
        break;
      case TileType.Empty:
        sourceMap = const [
          'assets/images/tiles/08-hot_weather/desert_rocky.png',
        ];
        break;
      case TileType.IronDeposit:
        sourceMap = const [
          'assets/images/tiles/08-hot_weather/desert_rocky.png',
        ];
        break;
      case TileType.Tree:
        sourceMap = const [
          'assets/images/tree.png',
          'assets/images/tiles/03trees/jungle_light.png',
          'assets/images/tiles/03trees/trees_heavy.png',
          'assets/images/tiles/03trees/trees_light.png',
          'assets/images/tiles/03trees/forest_heavy.png',
          'assets/images/tiles/03trees/forest_light.png',
        ];
        break;
      case TileType.Water:
        sourceMap = const [
          'assets/images/tiles/09-water/sea.png',
          'assets/images/tiles/09-water/shoals.png',
        ];
        break;
    }
    return Image.asset(
      _getAsset(location, sourceMap),
      width: width,
      height: height,
    );
  }

  static final _noise = <Hexagon, Map<int, String>>{};

  static String _getAsset(Hexagon hexagon, List<String> assets) {
    if (!_noise.containsKey(hexagon) ||
        !_noise[hexagon]!.containsKey(assets.length)) {
      _noise.putIfAbsent(hexagon, () => <int, String>{});
      _noise[hexagon]![assets.length] =
          assets[Random(hexagon.hashCode).nextInt(assets.length)];
    }
    return _noise[hexagon]![assets.length]!;
  }
}
