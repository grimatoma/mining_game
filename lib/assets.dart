import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:mining_game/planet/planet_manager.dart';

import 'doodads/base/doodad_definition.dart';

class Assets {
  static Image getTile(TileType tileType, Hexagon location,
      [double? width, double? height]) {
    var sourceMap = <String>[];
    switch (tileType) {
      case TileType.GRASS:
        sourceMap = const [
          'assets/images/all/grass1.png',
          'assets/images/all/grass2.png',
          'assets/images/all/grass3.png',
          'assets/images/all/grass4.png',
        ];
        break;
      case TileType.MOUNTAIN:
        sourceMap = const [
          'assets/images/tiles/11-mountains/mountain_range.png',
        ];
        break;
      case TileType.EMPTY:
        sourceMap = const [
          'assets/images/tiles/08-hot_weather/desert_rocky.png',
        ];
        break;
      case TileType.IRON_DEPOSIT:
        sourceMap = const [
          'assets/images/tiles/08-hot_weather/desert_rocky.png',
        ];
        break;
      case TileType.TREE:
        sourceMap = const [
          'assets/images/tree.png',
          'assets/images/tiles/03Trees/jungle_light.png',
          'assets/images/tiles/03Trees/trees_heavy.png',
          'assets/images/tiles/03Trees/trees_light.png',
          'assets/images/tiles/03Trees/forest_heavy.png',
          'assets/images/tiles/03Trees/forest_light.png',
        ];
        break;
      case TileType.WATER:
        sourceMap = const [
          'assets/images/all/water1.png',
          'assets/images/all/water2.png',
          'assets/images/all/water3.png',
          'assets/images/all/water4.png',
          'assets/images/all/water5.png',
        ];
        break;
      // case TileType.Stone:
      //   sourceMap = const [
      //     'assets/images/tiles/11-mountains/mountain_range.png',
      //   ];
      //   break;
      case TileType.COASTAL:
        sourceMap = const [
          'assets/images/all/coastal1.png',
          'assets/images/all/coastal2.png',
          'assets/images/all/coastal3.png',
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
