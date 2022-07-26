import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/planet/planet_manager.dart';
import 'package:mining_game/widgets/planet_page.dart';

part 'buildings.freezed.dart';

// create a loadable enum that is fixed once loaded
// class LoadableEnum {
//   final String val;
//
//   // make freexed and create a way to load these
//   // has values and static accessors
//   static final grass = LoadableEnum('Grass');
//   static final grass = LoadableEnum('Mountain');
//
//   LoadableEnum(this.val);
// }

enum TileType {
  Empty,
  Mountain, // Can get stone
  Grass,
  IronDeposit,
  Tree,
  Water,
}

// try and hide?
abstract class DoodadInterface {
  const DoodadInterface();

  DoodadId get id;

  String get imageAsset;

  String get storeImageAsset;

  String get name;

  String get description;

  Set<TileType> get supportedLocations;
}

abstract class TickableDoodadDefinition implements DoodadInterface {
  int get ticksRequired;
}

const digger = Digger(
  id: DoodadId.ironDigger,
  name: 'Iron Digger',
  description:
      'Digs for resources and will store them in the planets resource depot.',
  imageAsset: 'assets/images/drills/5.png',
  storeImageAsset: 'assets/images/drills/5.png',
  supportedLocations: {TileType.IronDeposit},
  ticksRequired: 5,
);

const tree = Tree(
    id: DoodadId.tree,
    name: 'Tree',
    description:
        'A tree that flows in the wind. Must be cleared before a building can be placed here.',
    imageAsset: 'assets/images/tree.png',
    storeImageAsset: 'assets/images/tiles/03Trees/jungle_heavy.png',
    supportedLocations: {TileType.Grass},
    ticksRequired: 5);
const treeCutterHut = TreeCutterHut(
    id: DoodadId.treeCutterHut,
    name: 'Tree cutter hut',
    description: 'Cuts down trees within 1 range.',
    imageAsset: 'assets/images/doodad/lumberHut.jpg',
    storeImageAsset: 'assets/images/doodad/lumberHut.jpg',
    supportedLocations: {TileType.Grass},
    ticksRequired: 20);

@freezed
class DoodadId with _$DoodadId {
  const DoodadId._();

  const factory DoodadId(String id) = _DoodadId;

  static const DoodadId ironDigger = DoodadId('IRON_DIGGER');
  static const DoodadId tree = DoodadId('TREE');
  static const DoodadId treeCutterHut = DoodadId('TREE_CUTTER_HUT');
}

@freezed
class Doodad with _$Doodad implements DoodadInterface {
  const Doodad._();

  @Implements<TickableDoodadDefinition>()
  const factory Doodad.digger({
    required DoodadId id,
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
  }) = Digger;

  @Implements<TickableDoodadDefinition>()
  const factory Doodad.tree({
    required DoodadId id,
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
  }) = Tree;

  @Implements<TickableDoodadDefinition>()
  const factory Doodad.treeCutterHut({
    required DoodadId id,
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
  }) = TreeCutterHut;

  @Implements<TickableDoodadDefinition>()
  const factory Doodad.smelter({
    required DoodadId id,
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
  }) = Smelter;

  DoodadInstance create(
      Ref ref,
      PlanetManager planetManager,
      TileStateController controller,
      Doodad doodad,
      Function() notifyListeners) {
    return doodad.map(
        digger: (d) =>
            DiggerInstance(ref, planetManager, controller, d, notifyListeners),
        tree: (d) =>
            TreeInstance(ref, planetManager, controller, d, notifyListeners),
        smelter: (d) =>
            SmelterInstance(ref, planetManager, controller, d, notifyListeners),
        treeCutterHut: (d) => TreeCutterHutInstance(
            ref, planetManager, controller, d, notifyListeners));
  }
}

abstract class DoodadInstance<DefinitionT extends DoodadInterface>
    implements DoodadInterface {
  final Ref _ref;
  final PlanetManager _planetManager;
  final TileStateController _parent;
  final DefinitionT _definition;
  final void Function() _notifyListeners;

  DoodadInstance(this._ref, this._planetManager, this._parent, this._definition,
      this._notifyListeners);

  void update();

  Widget? get statusWidget => null;

  @override
  String get description => _definition.description;

  @override
  String get imageAsset => _definition.imageAsset;

  @override
  String get name => _definition.name;

  @override
  DoodadId get id => _definition.id;

  @override
  String get storeImageAsset => _definition.storeImageAsset;

  @override
  Set<TileType> get supportedLocations => _definition.supportedLocations;
}

class DiggerInstance extends TickableDoodadInstance<Digger> {
  DiggerInstance(super.ref, super.planetManager, super.parent, super.definition,
      super.notifyListeners);

  @override
  void ticksMet() {
    _ref
        .read(inventoryStateProvider.notifier)
        .addItems(Items.IRON.generateItemInstance(2));
  }

  @override
  bool canTick() => true;

  @override
  final ticksName = 'Digging';
}

abstract class TickableDoodadInstance<
        DefinitionT extends TickableDoodadDefinition>
    extends DoodadInstance<DefinitionT> implements TickableDoodadDefinition {
  final SimpleStateProvider<int> currentTickState;

  @override
  int get ticksRequired => _definition.ticksRequired;

  TickableDoodadInstance(super.ref, super.planetManager, super.parent,
      super.definition, super.notifyListeners)
      : currentTickState = SimpleStateProvider<int>(ref, (ref) => 0) {
    print('created instance');
  }

  bool canTick();

  /// Like growing or cutting for cutting a tree.
  String get ticksName;

  @override
  @mustCallSuper
  void update() {
    if (!canTick()) return;
    final newVal = currentTickState.read + 1;
    currentTickState.updateState = newVal;
    if (newVal <= ticksRequired) return;
    currentTickState.updateState = 0;
    print('Updating Digger!');
    ticksMet();
  }

  void ticksMet();
}

class TreeInstance extends TickableDoodadInstance<Tree> {
  static const treeCost = 0.25;
  static const treeMax = 1.0;
  double treeCount = 1;

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
    _ref
        .read(inventoryStateProvider.notifier)
        .addItems(Items.WOOD.generateItemInstance(1));
  }

  void _refreshImageAsset() {
    final newImageAsset = _newImageAsset;
    if (newImageAsset != imageAsset) {
      imageAsset = newImageAsset;
      _notifyListeners();
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

  @override
  final ticksName = 'Growing';
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
    final ticksLeft = _treeInstance.ticksRequired - currentTick;
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

class SmelterInstance extends TickableDoodadInstance<Smelter> {
  final InventoryStateController _inventoryController;
  final materials = ItemRequirement.fromMap({Items.IRON.id: 2});

  BuiltList<ItemInstance> get itemsProduced =>
      Items.IRON_BAR.generateItemInstance(2);
  final SimpleStateProvider<bool> _hasResourceState;

  ReadOnlySimpleStateProvider<bool> get hasResources => _hasResourceState;

  SmelterInstance(super.ref, super.planetManager, super.parent,
      super.definition, super.notifyListeners)
      : _inventoryController = ref.read(inventoryStateProvider.notifier),
        _hasResourceState = SimpleStateProvider<bool>(ref, (ref) => false);

  @override
  final ticksRequired = 8;

  @override
  final ticksName = 'Smelting';

  @override
  bool canTick() {
    if (hasResources.read) return true;
    if (_inventoryController.subtractItemRequirement(materials)) {
      _hasResourceState.updateState = true;
      return true;
    }
    return false;
  }

  @override
  void ticksMet() {
    _inventoryController.addItems(itemsProduced);
    _ref.read(inventoryStateProvider.notifier).addItems(itemsProduced);
  }
}

// extension TileFilters on BuiltList<TileStateController> {
//   BuiltList<TileStateController> whereDoodadId(Iterable<DoodadId>? doodadIds) {
//     final builder = ListBuilder<TileStateController>();
//     for (final tile in this) {
//       if (doodadIds == null ||
//           // Check if the type string matches since this is the only way to check runtime types.
//           doodadIds.any((d) {
//             return d == tile.tile.doodadInstance?.id;
//           })) {
//         builder.add(tile);
//       }
//     }
//     return builder.build();
//   }
// }

class TreeCutterHutInstance extends TickableDoodadInstance<TreeCutterHut> {
  TreeCutterHutInstance(super.ref, super.planetManager, super.parent,
      super.definition, super.notifyListeners) {
    tilesInRange = _planetManager.getTilesInRange(_parent.hexagon, 1);
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
  final ticksName = 'Chopping';

  @override
  void ticksMet() {
    cuttingTree = false;
  }
}
