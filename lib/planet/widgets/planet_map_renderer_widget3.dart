import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/assets.dart';
import 'package:mining_game/planet/planet_manager.dart';

class PlanetMapRendererWidget3 extends StatefulHookConsumerWidget {
  const PlanetMapRendererWidget3({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PlanetMapRendererWidget2State();
}

class _PlanetMapRendererWidget2State
    extends ConsumerState<PlanetMapRendererWidget3> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, viewConstraints) {
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
                      for (int y = 0; y < selectedPlanet.height; y++)
                        for (final tile in selectedPlanet.tilesIterable)
                          Transform.translate(
                            offset: flatHexToPixel(
                                32, Hexagon(tile.tile.x, tile.tile.y)),
                            child: TileWidget(tile),
                          ),
                      const SelectedTileWidget(),
                    ],
                  ),
                  //           )
                  //           // Stack(children: [
                  //           //   SizedBox(
                  //           //     width: viewConstraints.maxWidth,
                  //           //     height: viewConstraints.maxHeight,
                  //           //     child: FittedBox(
                  //           //         fit: BoxFit.fill,
                  //           //         child: PlanetImageWidget(viewConstraints)),
                  //           //   ),
                  //           //   // MinerLayerWidget(viewConstraints),
                  //           //   // PlanetMarkerWidget(viewConstraints),
                  //           // ]),
                  //           );
                  //     },
                  //   ),
                ),
              ),
            ),
          ),
        ),
      );
    });
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
    return SizedBox(
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
            Assets.getTile(TileType.Grass, tileState.asHexagon),
            // Image.asset('assets/images/tiles/02Grass/plains.png'),
            if (tileState.doodad != null) ...[
              if (tileState.doodad?.imageAsset != null)
                Image.asset((tileState.doodad?.imageAsset)!),
            ],

            // Container(
            //   decoration: BoxDecoration(
            //       border: Border.all(color: Colors.red, width: 5)),
          ],
        ),
      ),
    );
  }
}

class Hexagon {
  final int q;
  final int r;

  const Hexagon(this.q, this.r);

  @override
  String toString() => '$q,$r';
}

// only uses
List<Hexagon> generateHexagonMapOfSize(int width) {
  int indexStart = -(width / 2).floor();
  int indexEndInclusive = width + indexStart - 1;

  return [
    for (int q = indexStart; q <= indexEndInclusive; q++)
      for (int r = indexStart; r <= indexEndInclusive; r++) Hexagon(q, r),
  ];
}

class Point {
  final double x;
  final double y;

  const Point(this.x, this.y);

  @override
  String toString() => '$x,$y';
}

Offset flatHexToPixel(double size, Hexagon hex) {
  var x = size * (3.0 / 2 * hex.q);
  var y = size * (sqrt(3) / 2 * hex.q + sqrt(3) * hex.r);
  return Offset(x, y);
}

//focus tile
class SelectedTileMarker extends CustomPainter {
  final Tile hexagon;
  final double length;

  SelectedTileMarker(this.length, this.hexagon);

  @override
  void paint(Canvas canvas, Size size) {
    final center = flatHexToPixel(length, Hexagon(hexagon.x, hexagon.y))
        .translate(length, length);
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 5;
    for (int i = 0; i < 6; i++) {
      int next = (i + 1) % 6;
      canvas.drawLine(flatHexCorner(center, length, i),
          flatHexCorner(center, length, next), paint);
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
