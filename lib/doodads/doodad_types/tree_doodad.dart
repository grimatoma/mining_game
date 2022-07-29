import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/widgets/planet_page.dart';

import '../base/doodad_definition.dart';
import '../base/tickable_doodad.dart';

class TreeInstance extends TickableDoodadInstance<TreeDoodadDefinition> {
  static const treeCost = 0.25;
  static const treeMax = 1.0;
  double treeCount = 1;
  int chopCount = 0;
  static const chopsPerTree = 5;

  TreeInstance(super.ref, super.planetManager, super.parent, super.definition,
      super.notifyListeners) {
    imageAsset = _newImageAsset;
  }

  @override
  bool canTick() => treeCount < 1;

  @override
  void ticksMet() {
    if (treeCount < treeMax) {
      treeCount = min(treeCount + 0.1, treeMax);
      _refreshImageAsset();
    }
  }

  void cutTree() {
    if (treeCount < treeCost) return;
    treeCount -= treeCost;
    ref
        .read(inventoryStateProvider.notifier)
        .addItems(Items.WOOD.generateItemInstance(1));
    notifyListeners();
  }

  void chopTree() {
    chopCount++;
    if (chopCount >= chopsPerTree) {
      cutTree();
      chopCount = 0;
      notifyListeners();
    }
  }

  void _refreshImageAsset() {
    final newImageAsset = _newImageAsset;
    if (newImageAsset != imageAsset) {
      imageAsset = newImageAsset;
      notifyListeners();
    }
  }

  String get _newImageAsset {
    if (treeCount >= 1) {
      return 'assets/images/forestTest/forest100.png';
    }
    if (treeCount >= .90) {
      return 'assets/images/forestTest/forest90.png';
    }
    if (treeCount >= .75) {
      return 'assets/images/forestTest/forest75.png';
    }
    if (treeCount >= .65) {
      return 'assets/images/forestTest/forest65.png';
    }
    if (treeCount >= .60) {
      return 'assets/images/forestTest/forest60.png';
    }
    if (treeCount >= .50) {
      return 'assets/images/forestTest/forest50.png';
    }
    if (treeCount >= .25) {
      return 'assets/images/forestTest/forest25.png';
    }
    if (treeCount >= .10) {
      return 'assets/images/forestTest/forest10.png';
    }
    return 'assets/images/forestTest/forest0.png';
  }

  @override
  late String imageAsset;

  @override
  Widget get statusWidget => TreeStatusWidget(this);
}

class TreeStatusWidget extends ConsumerWidget {
  final TreeInstance _treeInstance;

  const TreeStatusWidget(
    this._treeInstance, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTick = _treeInstance.currentTickState.watch(ref);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Forest growth:'),
              Text(
                  '${(_treeInstance.treeCount * 100).toInt()}/${(TreeInstance.treeMax * 100).toInt()}'),
              Text('Trees cost ${(TreeInstance.treeCost * 100).toInt()} each'),
              TextButton(
                  onPressed: () {
                    _treeInstance.chopTree();
                  },
                  child: const Text('Chop')),
            ],
          ),
        ),
        Expanded(flex: 1, child: DoodadStatus(_treeInstance)),
        // Expanded(
        //   flex: 1,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text('${(ticksLeft ~/ 60).toString().padLeft(2, '0')}'
        //           ':'
        //           '${(ticksLeft % 60).toString().padLeft(2, '0')}'),
        //       LinearProgressIndicator(
        //         value: currentTick.toDouble() / _treeInstance.ticksRequired,
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
