import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/planet/point.dart';

part 'planet_marker.freezed.dart';

final planetScreenInfoControllerProvider =
    StateNotifierProvider<PlanetScreenController, PlanetScreenInfo>((ref) {
  return PlanetScreenController(
      const PlanetScreenInfo(planetX: -1, planetY: -1, xScale: 1, yScale: 1));
});

class PlanetScreenController extends StateNotifier<PlanetScreenInfo> {
  PlanetScreenController(PlanetScreenInfo state) : super(state);

  void updateMarker(
      {required Offset pointerOffset,
      required double screenWidth,
      required double screenHeight,
      required int planetWidth,
      required int planetHeight}) {
    final yScaling = screenHeight / planetHeight;
    final xScaling = screenWidth / planetWidth;
    final planetX = (pointerOffset.dx / xScaling).floor();
    final planetY = (pointerOffset.dy / yScaling).floor();
    state = PlanetScreenInfo(
      planetX: planetX,
      planetY: planetY,
      xScale: xScaling,
      yScale: yScaling,
    );
  }
}

@freezed
class PlanetScreenInfo with _$PlanetScreenInfo {
  const PlanetScreenInfo._();

  const factory PlanetScreenInfo({
    required int planetX,
    required int planetY,
    required double xScale,
    required double yScale,
  }) = _PlanetMarker;

  PlanetPoint get cursorPlanetPoint => PlanetPoint(planetX, planetY, 0);
  Offset get cursorLocationScreen => Offset(planetX * xScale, planetY * yScale);
  Offset screenLocation(PlanetPoint point) => Offset(
      (point.x * xScale).floorToDouble(), (point.y * yScale).floorToDouble());
}
