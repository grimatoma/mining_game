import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_configs.dart';
import 'package:mining_game/planet/planet_controller.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';
import 'package:vector_math/vector_math_64.dart';

final planetViewerConstraintsProvider =
    StateNotifierProvider<PlanetViewerConstraintsController, Vector2>(
        (ref) => PlanetViewerConstraintsController());

/// Used to know the size of the window that is currently rendering the
/// planet viewer.
class PlanetViewerConstraintsController extends StateNotifier<Vector2> {
  PlanetViewerConstraintsController() : super(Vector2.zero());

  void update(Vector2 constraints) => state = constraints;
}

final planetInteractiveViewerTranslationProvider = StateNotifierProvider<
    PlanetViewerTranslationController,
    PlanetViewerTranslation>((ref) => PlanetViewerTranslationController());

/// Provides details on the offset and scale of the viewer window for the
/// planet.
class PlanetViewerTranslationController
    extends StateNotifier<PlanetViewerTranslation> {
  PlanetViewerTranslationController()
      : super(PlanetViewerTranslation(Vector3.zero(), 1));

  void update(Matrix4 transformation) {
    state = PlanetViewerTranslation(
        transformation.getTranslation(), transformation.row0[0]);
  }
}

class PlanetViewerTranslation {
  final Vector3 offset;
  final double scale;

  const PlanetViewerTranslation(this.offset, this.scale);
}

final planetToImageScalerProvider =
    StateNotifierProvider<PlanetToImageScaler, Vector2>((ref) =>
        PlanetToImageScaler(ref.watch(planetViewerConstraintsProvider),
            ref.watch(gameConfigsProvider)));

class PlanetToImageScaler extends StateNotifier<Vector2> {
  PlanetToImageScaler(Vector2 planetViewerConstraints, GameConfigs gameConfigs)
      : super(Vector2(planetViewerConstraints.x / gameConfigs.width,
            planetViewerConstraints.y / gameConfigs.height));
}

final markerLocationProvider =
    StateNotifierProvider<MarkerLocationController, PlanetTile?>(
        (ref) => MarkerLocationController());

class MarkerLocationController extends StateNotifier<PlanetTile?> {
  MarkerLocationController() : super(null);

  void select(PlanetTile point) {
    state = point;
  }
}

final planetViewTransformHelperProvider = Provider<PlanetViewTransformHelper>(
    (ref) => PlanetViewTransformHelper(ref.watch(planetToImageScalerProvider),
        ref.watch(planetControllerProvider.notifier)));

class PlanetViewTransformHelper {
  final PlanetController _planetController;
  final Vector2 planetToImageScaler;
  PlanetViewTransformHelper(this.planetToImageScaler, this._planetController);

  Offset toView(PlanetPoint planetPoint) {
    return Offset(planetPoint.x * planetToImageScaler.x,
        planetPoint.y * planetToImageScaler.y);
  }

  PlanetTile toTile(Offset selectionLocation) {
    return _planetController.planet.getTile(PlanetPoint(
        (selectionLocation.dx / planetToImageScaler.x).floor(),
        (selectionLocation.dy / planetToImageScaler.y).floor(),
        0));
  }

  Rect toOnTileScaled(PlanetPoint planetPoint, double percentOfTileWidth,
      double percentOfTileHeight) {
    final offset = toView(planetPoint)
        .translate(planetToImageScaler.x / 2, planetToImageScaler.y / 2);
    return Rect.fromCenter(
        center: offset,
        width: planetToImageScaler.x * percentOfTileWidth,
        height: planetToImageScaler.y * percentOfTileHeight);
  }

  Rect toOnTileFixed(PlanetPoint planetPoint, double width, double height) {
    final offset = toView(planetPoint)
        .translate(planetToImageScaler.x / 2, planetToImageScaler.y / 2);
    return Rect.fromCenter(center: offset, width: width, height: height);
  }
}
