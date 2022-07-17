import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/assets.dart';
import 'package:mining_game/planet/planet_manager.dart';

class HexagonPlanetRenderer extends ConsumerWidget {
  const HexagonPlanetRenderer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPlanet = ref.watch(selectedPlanetProvider);
    return InteractiveViewer(
      constrained: false,
      minScale: 0.01,
      maxScale: 5,
      child: Padding(
        padding: const EdgeInsets.all(128.0),
        child: Container(
          width: selectedPlanet.width * 64,
          height: selectedPlanet.height * 64,
          color: Colors.teal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              fit: BoxFit.fill,
              child: SizedBox(
                width: selectedPlanet.width * 64,
                height: selectedPlanet.height * 64,
                child: Stack(
                  children: [
                    for (final tile in selectedPlanet.tilesIterable)
                      Transform.translate(
                        offset: flatHexToPixel(32, tile.tile.hexagon),
                        child: TileWidget(tile),
                      ),
                    const SelectedTileWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SelectedTileWidget extends ConsumerWidget {
  const SelectedTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (ref.watch(selectedTileControllerProvider) == null) return Container();
    return CustomPaint(
        painter: SelectedTileMarker(
            32, ref.watch(selectedTileControllerProvider)!.tile));
  }
}

class TileWidget extends ConsumerWidget {
  final TileStateController _controller;

  const TileWidget(this._controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tileState = ref.watch(_controller.provider);
    return ClipPath(
      clipper: SelectedTileMarkerClipper(32),
      child: Container(
        color: Colors.red[50],
        child: SizedBox(
          height: 64,
          width: 64,
          child: InkResponse(
            onTap: () {
              final selectedTileController =
                  ref.read(selectedTileControllerProvider.notifier);
              if (selectedTileController.state == _controller) {
                ref.read(panelVisibilityState.notifier).state =
                    PanelVisibility.BuyMenu;
              } else {
                selectedTileController.state = _controller;
                ref.read(panelVisibilityState.notifier).state =
                    PanelVisibility.TileDetail;
              }
            },
            child: Stack(
              children: [
                Assets.getTile(TileType.Grass, tileState.hexagon),
                if (tileState.doodad != null) ...[
                  if (tileState.doodad?.imageAsset != null)
                    Image.asset((tileState.doodad?.imageAsset)!),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  @override
  String toString() => '$x,$y';
}

Offset flatHexToPixel(double size, Hexagon hex, [int radius = 4]) {
  var x = size * (3.0 / 2 * hex.q) + size * 2 * radius;
  var y = size * (sqrt(3) / 2 * hex.q + sqrt(3) * hex.r) + size * 2 * radius;
  return Offset(x, y);
}

//focus tile
class SelectedTileMarkerClipper extends CustomClipper<Path> {
  final double _length;

  SelectedTileMarkerClipper(this._length);

  @override
  Path getClip(Size size) {
    final path = Path();

    path.addPolygon([
      for (int i = 0; i < 6; i++) flatHexCorner(const Offset(32, 32), 32, i),
    ], true);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

//focus tile
class SelectedTileMarker extends CustomPainter {
  final Tile _tile;
  final double _length;

  SelectedTileMarker(this._length, this._tile);

  @override
  void paint(Canvas canvas, Size size) {
    final center =
        flatHexToPixel(_length, _tile.hexagon).translate(_length, _length);
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 5;
    for (int i = 0; i < 6; i++) {
      int next = (i + 1) % 6;
      canvas.drawLine(flatHexCorner(center, _length, i),
          flatHexCorner(center, _length, next), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
// canvas.drawLine(
//     Offset(0, length),
//     Offset(length, length),
//     Paint()
//       ..color = Colors.red
//       ..strokeWidth = 5);
// TODO: implement paint
}

Offset flatHexCorner(Offset center, double size, int i) {
  var angle_deg = 60 * i;
  var angle_rad = pi / 180 * angle_deg;
  return Offset(
      center.dx + size * cos(angle_rad), center.dy + size * sin(angle_rad));
}
