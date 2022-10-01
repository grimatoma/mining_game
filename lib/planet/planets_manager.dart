import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/doodads/base/doodad_interface_and_instance.dart';
import 'package:mining_game/persistence/hive_manager.dart';

import 'planet_manager.dart';

class PlanetsManager {
  final Ref _ref;
  final planets = <PlanetManager>[];

  // ignore: unused_field
  late final Timer _timer;

  PlanetsManager(this._ref) {
    try {
      final json = HiveManager.getIterableJson(BoxKey.PLANETS);
      if (json != null) {
        for (final planetJson in json) {
          planets.add(PlanetManager(_ref, planetJson));
        }
      } else {
        createPlanet(false);
      }
    } catch (e) {
      print(e);
      rethrow;
    }
    // Init all Doodads
    for (final planet in planets) {
      for (final tile in planet.tiles.values) {
        tile.doodadInstance?.init();
      }
    }
    DoodadInstance.canInit = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateAllPlanets();
    });
  }

  void createPlanet([bool selectPlanet = true]) {
    final newPlanet = PlanetManager(_ref);
    planets.add(newPlanet);
    if (selectPlanet) {
      _ref.read(selectedPlanetProvider.notifier).state = newPlanet;
    }
  }

  void _updateAllPlanets() {
    for (final planet in planets) {
      planet.update();
    }
  }
}

final planetsManagerProvider = StateProvider<PlanetsManager>((ref) {
  PlanetsManager q;
  try {
    q = PlanetsManager(ref);
  } catch (e) {
    print('fuck $e');
    print(e);
    q = PlanetsManager(ref);
  }
  return q;
});
final selectedPlanetProvider = StateProvider<PlanetManager>(
    (ref) => ref.read(planetsManagerProvider).planets.first);
