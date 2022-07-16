import 'package:flutter/widgets.dart';
import 'package:mining_game/planet/planet_manager.dart';
import 'package:mining_game/planet/widgets/planet_map_renderer_widget3.dart';

class Assets {
  static Image getTile(TileType tileType, Hexagon location) {
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
        // TODO: Handle this case.
        break;
      case TileType.Empty:
        // TODO: Handle this case.
        break;
      case TileType.IronDeposit:
        // TODO: Handle this case.
        break;
    }
    return Image.asset(sourceMap[
        (((location.q + 1 * 123) + (location.r - 1 * 123)) % sourceMap.length)
            .abs()]);
  }
}
