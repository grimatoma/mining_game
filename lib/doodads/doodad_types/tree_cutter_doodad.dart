import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:mining_game/planet/planet_manager.dart';

import '../base/doodad_definition.dart';
import '../base/tickable_doodad.dart';
import 'tree_doodad.dart';

class TreeCutterHutInstance
    extends TickableDoodadInstance<TreeCutterHutDoodadDefinition> {
  TreeCutterHutInstance(super.ref, super.planetManager, super.parent,
      super.definition, super.notifyListeners) {
    tilesInRange = planetManager.getTilesInRange(parent.hexagon, 1);
  }

  var cuttingTree = false;
  late final BuiltList<TileStateController> tilesInRange;

  @override
  bool canTick() {
    if (tilesInRange.isEmpty) return false;
    if (!cuttingTree) {
      final treesInRange = tilesInRange
          .map((p0) => p0.doodadInstance)
          .whereType<TreeInstance>()
          .where((element) => element.treeCount >= TreeInstance.treeCost)
          .toList(growable: false);
      if (treesInRange.isEmpty) return false;

      final targetIndex = Random().nextInt(treesInRange.length);
      final target = treesInRange[targetIndex];
      target.cutTree();
      cuttingTree = true;
    }
    return true;
  }

  @override
  void ticksMet() {
    cuttingTree = false;
  }
}
