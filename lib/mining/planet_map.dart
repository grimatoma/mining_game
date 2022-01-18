import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/mining/game_core_provider.dart';
import 'package:mining_game/mining/models/mining/planet_tile.dart';
import 'package:mining_game/mining/models/point.dart';
import 'package:mining_game/mining/models/shopping/inventory.dart';
import 'package:mining_game/mining/models/shopping/store.dart';
import 'package:mining_game/mining/planet.dart';
import 'package:mining_game/mining/planet_marker/planet_marker.dart';

void main() {
  runApp(const ProviderScope(child: MaterialApp(home: PlanetWidget())));
}

class PlanetWidget extends HookConsumerWidget {
  const PlanetWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(gameCoreProvider);
    final planet = ref.watch(planetProvider);
    final inventory = ref.watch(inventoryProvider);
    ref.watch(inventory.streamProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('sdsss'),
        ),
        // body: const PlanetMapRenderer(),
        body: Column(
          children: [
            Text('Iron: ${inventory.iron}'),
            Center(
                child: Table(children: [
              for (var y = 0; y < planet.height; y++)
                TableRow(children: [
                  for (var x = 0; x < planet.width; x++)
                    FittedBox(
                      child: PlanetTileViewerWidget(
                          planetTile: planet.getTile(PlanetPoint(x, y, 0))),
                    )
                ])
            ])),
          ],
        ));
  }
}

class PlanetTileViewerWidget extends HookConsumerWidget {
  final PlanetTile planetTile;
  const PlanetTileViewerWidget({Key? key, required this.planetTile})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(planetTile.streamProvider);
    final inventory = ref.watch(inventoryProvider);
    return Container(
      color: planetTile.visible ? planetTile.color : Colors.white,
      child: Column(
        children: [
          Text(planetTile.point.toString(), style: textStyle),
          TextButton(
              onPressed: () => inventory.addIron(planetTile.dig(1)),
              child: Text('dig', style: textStyle)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!planetTile.visible)
                TextButton(
                    onPressed: () => planetTile.scanForResources(1),
                    child: Text('scan', style: textStyle)),
              if (!planetTile.hasAutoMiner)
                TextButton(
                    onPressed: () {
                      print('try buy miner');
                      ref.read(storeProvider).buyAutoMiner(planetTile);
                    },
                    child: Text('Add miner', style: textStyle)),
              if (planetTile.hasAutoMiner)
                TextButton(
                    onPressed: () =>
                        ref.read(storeProvider).updateAutoMiner(planetTile),
                    child: Text('Upgrade miner', style: textStyle)),
              if (planetTile.visible)
                Text(planetTile.iron.toString(), style: textStyle),
            ],
          )
        ],
      ),
    );
  }

  Color get textColor => planetTile.visible ? Colors.white : Colors.black;
  TextStyle get textStyle => TextStyle(color: textColor);
}

class PlanetMapRenderer extends HookConsumerWidget {
  const PlanetMapRenderer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planet = ref.watch(planetProvider);
    ref.watch(planet.streamProvider);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * (1 - .65),
      child: FittedBox(
        fit: BoxFit.fill,
        child: GestureDetector(
          onTapDown: (details) {
            final position = details.localPosition;
            print('x${position.dx.floor()},y${position.dy.floor()}');
            ref
                .read(planetMarkerProvider.notifier)
                .updateMarker(details.localPosition);
            planet
                .getTile(
                    PlanetPoint(position.dx.floor(), position.dy.floor(), 0))
                .scanForResources(1);
          },
          child: Stack(children: [
            Container(
                // pass double.infinity to prevent shrinking of the painter area to 0.
                width: planet.width.toDouble(),
                height: planet.height.toDouble(),
                color: Colors.yellow,
                child: CustomPaint(painter: PlanetMapPainter(planet))),
            const PlanetMarkerWidget()
          ]),
        ),
      ),
    );
  }
}

class PlanetMapPainter extends CustomPainter {
  final Planet _planet;
  Canvas? canvas;

  PlanetMapPainter(this._planet);

  @override
  void paint(Canvas canvas, Size size) {
    print('canvas equals? ${this.canvas == canvas} ${this.canvas}  $canvas');
    this.canvas = canvas;
    // Define a paint object

    Paint getPaint(PlanetTile planetTile) => Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0
      ..color = planetTile.visible ? planetTile.color : Colors.grey;

    // V1 which is iterate. Try v2 where all tiles are stored by their resource size? THAT SOUNDS REALLY STUPID

    for (var x = 0.0; x < _planet.width; x++) {
      for (var y = 0.0; y < _planet.height; y++) {
        final tile = _planet.getTile(PlanetPoint(x.toInt(), y.toInt(), 0));

        canvas.drawPoints(
            PointMode.points, [Offset(x + .5, y + .5)], getPaint(tile));
      }
    }

    // // Left eye
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(
    //       Rect.fromLTWH(20, 40, 100, 100), Radius.circular(20)),
    //   paint,
    // );
    // // Right eye
    // canvas.drawOval(
    //   Rect.fromLTWH(size.width - 120, 40, 100, 100),
    //   paint,
    // );
    // // Mouth
    // final mouth = Path();
    // mouth.moveTo(size.width * 0.8, size.height * 0.6);
    // mouth.arcToPoint(
    //   Offset(size.width * 0.2, size.height * 0.6),
    //   radius: Radius.circular(150),
    // );
    // mouth.arcToPoint(
    //   Offset(size.width * 0.8, size.height * 0.6),
    //   radius: Radius.circular(200),
    //   clockwise: false,
    // );
    // canvas.drawPath(mouth, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    print('repaint');
    return true;
  }
}
