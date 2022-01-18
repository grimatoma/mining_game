import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'planet_marker.freezed.dart';

final planetMarkerProvider =
    StateNotifierProvider<PlanetMarkerController, PlanetMarker>((ref) {
  return PlanetMarkerController(const PlanetMarker(-1, -1));
});

class PlanetMarkerController extends StateNotifier<PlanetMarker> {
  PlanetMarkerController(PlanetMarker state) : super(state);

  void updateMarker(Offset offset) {
    // add .5?
    state = PlanetMarker(offset.dx.floorToDouble(), offset.dy.floorToDouble());
  }
}

@freezed
class PlanetMarker with _$PlanetMarker {
  const PlanetMarker._();

  const factory PlanetMarker(double x, double y) = _PlanetMarker;
}

class PlanetMarkerWidget extends HookConsumerWidget {
  const PlanetMarkerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var marker = ref.watch(planetMarkerProvider);
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
