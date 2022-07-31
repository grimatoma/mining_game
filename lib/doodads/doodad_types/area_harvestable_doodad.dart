import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:mining_game/planet/planet_manager.dart';

import '../base/doodad_definition.dart';
import '../base/tickable_doodad.dart';
import 'tree_doodad.dart';

abstract class AreaHarvestableDoodadInterface extends TickableDoodadInterface {
  int get range;
}

class AreaHarvestableDoodadInstance
    extends TickableDoodadInstance<AreaHarvestableDoodadDefinition>
    implements AreaHarvestableDoodadInterface {
  AreaHarvestableDoodadInstance(super.ref, super.planetManager, super.parent,
      super.definition, super.notifyListeners) {
    tilesInRange = planetManager.getTilesInRange(parent.hexagon, range);
  }

  var isHarvestingTile = false;
  late final BuiltList<TileStateController> tilesInRange;

  @override
  bool canTick() {
    if (tilesInRange.isEmpty) return false;
    if (!isHarvestingTile) {
      final treesInRange = tilesInRange
          .map((p0) => p0.doodadInstance)
          .whereType<RegenerativeHarvestableDoodadInstance>()
          .where((element) =>
              element.currentResources >= element.resourceRequiredToHarvestOne)
          .toList(growable: false);
      if (treesInRange.isEmpty) return false;

      final targetIndex = Random().nextInt(treesInRange.length);
      final target = treesInRange[targetIndex];
      target.harvest();
      isHarvestingTile = true;
    }
    return true;
  }

  @override
  void ticksMet() {
    isHarvestingTile = false;
  }

  @override
  int get range => definition.range;
}
