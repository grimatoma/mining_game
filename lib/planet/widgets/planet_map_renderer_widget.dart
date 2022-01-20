import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_marker.dart';
import 'package:mining_game/planet/widgets/src/planet_marker_widget.dart';

import 'src/planet_painter_widget.dart';

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
