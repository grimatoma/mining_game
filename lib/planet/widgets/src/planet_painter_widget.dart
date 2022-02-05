import 'package:flutter/material.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';

class PlanetMapPainter extends CustomPainter {
  final Planet _planet;
  Canvas? canvas;

  PlanetMapPainter(this._planet);

  @override
  void paint(Canvas canvas, Size size) {
    this.canvas = canvas;
    // Define a paint object

    Paint getPaint(PlanetTile? planetTile) => Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0
      ..color = (planetTile != null && planetTile.visible)
          ? _planet.tileColor(planetTile)
          : _planet.tileColor(planetTile!);

    // V1 which is iterate. Try v2 where all tiles are stored by their resource size? THAT SOUNDS REALLY STUPID

    for (var x = 0.0; x < _planet.width; x++) {
      for (var y = 0.0; y < _planet.height; y++) {
        final tile = _planet.getTile(PlanetPoint(x.toInt(), y.toInt(), 0));

        canvas.drawRect(Rect.fromLTWH(x * 10, y * 10, 10, 10), getPaint(tile));
        // canvas.drawPoints(
        //     PointMode.points, [Offset(x + .5, y + .5)], getPaint(tile));
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
