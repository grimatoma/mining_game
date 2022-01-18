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

    return Scaffold(
      appBar: AppBar(
        title: const Text('sdsss'),
      ),
      body: Column(
        children: const [
          PlanetMapRenderer(),
          PlanetInterfaceWidget(),
        ],
      ),
    );
  }
}

class PlanetInterfaceWidget extends HookConsumerWidget {
  const PlanetInterfaceWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventory = ref.watch(inventoryStateProvider);
    final planetTile = ref
        .read(planetProvider)
        .getTile(ref.watch(planetMarkerProvider).planetPoint);
    return Row(
      children: [
        Text(planetTile.point.toString()),
        TextButton(
            onPressed: () => ref
                .read(inventoryStateProvider.notifier)
                .addIron(planetTile.dig(1)),
            child: const Text('dig')),
        Text('Iron: ${inventory.iron}'),
        if (!planetTile.visible)
          TextButton(
              onPressed: () => planetTile.scanForResources(1),
              child: const Text('scan')),
        if (!planetTile.hasAutoMiner)
          TextButton(
              onPressed: () {
                print('try buy miner');
                ref.read(storeProvider).buyAutoMiner(planetTile);
              },
              child: const Text('Add miner')),
        if (planetTile.hasAutoMiner)
          TextButton(
              onPressed: () =>
                  ref.read(storeProvider).updateAutoMiner(planetTile),
              child: const Text('Upgrade miner')),
        if (planetTile.visible) Text(planetTile.iron.toString()),
      ],
    );
  }
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
          },
          child: Stack(children: [
            Container(
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
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    print('repaint');
    return true;
  }
}
