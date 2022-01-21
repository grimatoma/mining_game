import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/planet/planet_marker.dart';

class PlanetMarkerWidget extends HookConsumerWidget {
  const PlanetMarkerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var marker = ref.watch(planetMarkerControllerProvider);
    return Positioned(
        left: marker.x,
        top: marker.y,
        child: Container(
          width: 1,
          height: 1,
          color: Colors.blue,
        ));
  }
}
