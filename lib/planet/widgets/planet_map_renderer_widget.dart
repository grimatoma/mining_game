import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_marker.dart';
import 'package:mining_game/planet/widgets/src/planet_marker_widget.dart';
import 'package:mining_game/planet/widgets/src/planet_painter_widget.dart';

class PlanetMapRenderer extends HookConsumerWidget {
  const PlanetMapRenderer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planet = ref.watch(planetControllerProvider);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height * (1 - .65);
    if (ref.read(planetScreenInfoControllerProvider) == emptyPlanetScreenInfo &&
        planet.width > 0) {
      Future.delayed(Duration.zero, () {
        final planet = ref.read(planetControllerProvider);
        ref.read(planetScreenInfoControllerProvider.notifier).updateMarker(
              pointerOffset: const Offset(-1, -1),
              planetHeight: planet.height,
              planetWidth: planet.width,
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            );
      });
    }
    return SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: GestureDetector(
        onTapDown: (details) {
          ref.read(planetScreenInfoControllerProvider.notifier).updateMarker(
                pointerOffset: details.localPosition,
                planetHeight: planet.height,
                planetWidth: planet.width,
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              );
        },
        child: Stack(children: [
          SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Container(
                  width: planet.width.toDouble(),
                  height: planet.height.toDouble(),
                  color: Colors.yellow,
                  child: CustomPaint(painter: PlanetMapPainter(planet))),
            ),
          ),
          MinerLayerWidget(screenWidth, screenHeight),
          const PlanetMarkerWidget(),
        ]),
      ),
    );
  }
}
