import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/planet/point.dart';

part 'planet_marker.freezed.dart';

final planetMarkerControllerProvider =
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

  PlanetPoint get planetPoint => PlanetPoint(x.floor(), y.floor(), 0);
}
