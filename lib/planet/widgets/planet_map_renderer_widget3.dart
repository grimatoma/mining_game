import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/assets.dart';
import 'package:mining_game/planet/planet_manager.dart';

class HexagonPlanetRenderer extends HookConsumerWidget {
  const HexagonPlanetRenderer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPlanet = ref.watch(selectedPlanetProvider);
    return InteractiveViewer(
      constrained: false,
      minScale: 1.0,
      maxScale: 3,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 16, horizontal: MediaQuery.of(context).size.width * 0.3),
        child: Container(
          width: selectedPlanet.width * tileSize2 * 2,
          height: selectedPlanet.height * tileSize2 * sqrt(3),
          color: Colors.teal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
              fit: BoxFit.fill,
              child: SizedBox(
                width: selectedPlanet.width * tileSize2 * 2,
                height: selectedPlanet.height * tileSize2 * sqrt(3),
                child: Stack(
                  children: [
                    for (final tile in selectedPlanet.tilesIterable)
                      // for (final tile in [selectedPlanet.tilesIterable.last])
                      Transform.translate(
                        offset: flatHexToPixel(41, tile.tile.hexagon),
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
    final tile = ref.watch(selectedTileControllerProvider);

    return Transform.translate(
        offset: flatHexToPixel(tileSize3, tile!.tile.hexagon),
        child: ClipPath(
          clipper: SelectedTileMarkerClipper(tileSize - 4),
          child: ClipPath(
            clipper: SelectedTileMarkerClipper(tileSize + 4, true),
            child: Container(
              color: Colors.red,
            ),
          ),
        ));
  }
}

class TileWidget extends ConsumerWidget {
  final TileStateController _controller;

  const TileWidget(this._controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tileState = ref.watch(_controller.provider);
    return ClipPath(
      clipper: SelectedTileMarkerClipper(),
      child: Container(
        color: Colors.red[50],
        child: SizedBox(
          height: tileSize * sqrt(3),
          width: tileSize * 2,
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
                Assets.getTile(TileType.Grass, tileState.hexagon, 210, 210),
                if (tileState.doodad != null) ...[
                  if (tileState.doodad?.imageAsset != null)
                    Image.asset(
                      (tileState.doodad?.imageAsset)!,
                      width: 210,
                      height: 210,
                      // fit: BoxFit.,
                      // width: 64,
                      // height: 32 * sqrt(3),
                    ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Offset flatHexToPixel(double size, Hexagon hex, [int radius = 4]) {
  var x = size * (3.0 / 2 * hex.q) + size * 2 * radius;
  var y =
      size * (sqrt(3) / 2 * hex.q + sqrt(3) * hex.r) + size * sqrt(3) * radius;
  return Offset(x, y);
}

//focus tile
class SelectedTileMarkerClipper extends CustomClipper<Path> {
  final double _hexagonLength;
  final bool clipOutline;

  SelectedTileMarkerClipper(
      [this._hexagonLength = tileSize3, this.clipOutline = false]);

  @override
  Path getClip(Size size) {
    final path = Path();

    path.addPolygon([
      for (int i = 0; i < 6; i++)
        flatHexCorner(Offset(tileSize - 0.35, tileSize * sqrt(3) / 2 + 0.15),
            _hexagonLength, i),
    ], true);
    if (clipOutline) {
      path
        ..fillType = PathFillType.evenOdd
        ..addPolygon([
          if (clipOutline)
            for (int i = 0; i < 6; i++)
              flatHexCorner(
                  Offset(tileSize - 0.35, tileSize * sqrt(3) / 2 + 0.15),
                  _hexagonLength - 15,
                  i),
        ], true);
    }

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

// //focus tile
// class SelectedTileMarker extends CustomPainter {
//   final Tile _tile;
//
//   SelectedTileMarker(this._tile);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = flatHexToPixel(tileSize2, _tile.hexagon)
//         .translate(tileSize2, tileSize2 * sqrt(3) / 2);
//     final paint = Paint()
//       ..color = Colors.red
//       ..strokeWidth = 5;
//     for (int i = 0; i < 6; i++) {
//       int next = (i + 1) % 6;
//       canvas.drawLine(flatHexCorner(center, tileSize2, i),
//           flatHexCorner(center, tileSize2, next), paint);
//     }
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// // canvas.drawLine(
// //     Offset(0, length),
// //     Offset(length, length),
// //     Paint()
// //       ..color = Colors.red
// //       ..strokeWidth = 5);
// // TODO: implement paint
// }

Offset flatHexCorner(Offset center, double size, int i) {
  var angleDeg = 60 * i;
  var angleRad = pi / 180 * angleDeg;
  return Offset(
      center.dx + size * cos(angleRad), center.dy + size * sin(angleRad));
}
