import 'dart:async';
import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/item_definition.dart';

import 'widgets/buildings.dart';

part 'planet_manager.freezed.dart';

class PlanetsManager {
  final Ref _ref;
  final List<PlanetManager> planets;
  late final Timer _timer;

  PlanetsManager(this._ref) : planets = [PlanetManager(_ref)] {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateAllPlanets();
    });
  }

  void createPlanet() {
    final newPlanet = PlanetManager(_ref);
    planets.add(newPlanet);
    _ref.read(selectedPlanetProvider.notifier).state = newPlanet;
  }

  void _updateAllPlanets() {
    for (final planet in planets) {
      planet.update();
    }
  }
}

final planetsManagerProvider =
    StateProvider<PlanetsManager>((ref) => PlanetsManager(ref));
final selectedPlanetProvider = StateProvider<PlanetManager>(
    (ref) => ref.watch(planetsManagerProvider).planets.first);

final selectedTileControllerProvider =
    StateProvider<TileStateController?>((ref) => null);

// only uses
List<Hexagon> generateHexagonMapOfSize(int width) {
  print('generating map of size $width');
  int indexStart = -(width / 2).floor();
  int indexEndInclusive = width + indexStart - 1;

  return [
    for (int q = indexStart; q <= indexEndInclusive; q++)
      for (int r = indexStart; r <= indexEndInclusive; r++) Hexagon(q, r),
  ];
}

List<Hexagon> generateRectangleMap(int left, int right, int top, int bottom) {
  final list = <Hexagon>[];
  for (int q = left; q <= right; q++) {
    // flat top
    int qOffset = (q / 2.0).floor(); // or q>>1
    for (int r = top - qOffset; r <= bottom - qOffset; r++) {
      list.add(Hexagon(q, r));
    }
  }
  return list;
}

List<Hexagon> generateHexagonMapOfSize2(int mapRadius) {
  // print('generating map of size $width');
  // int indexStart = -(width / 2).floor();
  // int indexEndInclusive = width + indexStart - 1;

  final list = <Hexagon>[];
  for (int q = -mapRadius; q <= mapRadius; q++) {
    int r1 = max(-mapRadius, -q - mapRadius);
    int r2 = min(mapRadius, -q + mapRadius);
    for (int r = r1; r <= r2; r++) {
      list.add(Hexagon(q, r));
    }
  }
  return list;
}

enum PanelVisibility {
  None,
  BuyMenu,
  TileDetail,
}

const tileSize = 50.0;
const tileSize2 = 42.0;
const tileSize3 = 41.0;

final panelVisibilityState =
    StateProvider<PanelVisibility>((ref) => PanelVisibility.None);

// Contains planet specifics and state
class Planet {}

// Maybe add a state.
class PlanetManager {
  final Ref _ref;

  late final BuiltMap<Hexagon, TileStateController> tiles;

  // Load or for now generate the planet
  final width = 9;
  final height = 9;

  PlanetManager(this._ref) {
    final planetBuilder = MapBuilder<Hexagon, TileStateController>();
    // for (int y = 0; y < height; y++) {
    //   final rowBuilder = ListBuilder<TileStateController>();
    //   for (int x = 0; x < width; x++) {
    //     rowBuilder.add(TileStateController(_ref, Hexagon(x, y)));
    //   }
    //   planetBuilder.add(rowBuilder.build());
    // }

    final water = cubeRing(const Hexagon(0, 0), 4);

    var index = 0;
    for (final hexagon in generateHexagonMapOfSize2(4)) {
      var type = TileType.Grass;
      if (index == 29) {
        type = TileType.IronDeposit;
      }
      if (index == 15) {
        type = TileType.Mountain;
      }

      if (water.contains(hexagon)) {
        type = TileType.Water;
      }
      planetBuilder[hexagon] = TileStateController(_ref, hexagon, type);
      index++;
    }
    print(planetBuilder);
    //
    // planetBuilder
    //     .putIfAbsent(const Hexagon(0, 0),
    //         () => TileStateController(_ref, const Hexagon(0, 0)))
    //     .addDoodad((c) => Tree(c));
    tiles = planetBuilder.build();
  }

  BuiltSet<Hexagon> cubeRing(Hexagon center, int radius) {
    final builder = SetBuilder<Hexagon>();
    var current = hexagonDirections[4] * radius;

    for (int i = 0; i < 6; i++) {
      for (int j = 0; j < radius; j++) {
        builder.add(current);
        current = current + hexagonDirections[i];
      }
    }

    return builder.build();
  }

  void update() {
    for (final tile in tilesIterable) {
      tile.update();
    }
  }

  Iterable<TileStateController> get tilesIterable {
    return tiles.values;
  }

  BuiltList<TileStateController> getControllerNeighbors(
          TileStateController c) =>
      getNeighbors(c.tile.hexagon);

  BuiltList<TileStateController> getNeighbors(Hexagon hexagon) {
    final map = ListBuilder<TileStateController>();
    for (final offset in hexagonDirections) {
      final neighbor = tiles[hexagon + offset];
      if (neighbor != null) map.add(neighbor);
    }
    return map.build();
  }
}

const hexagonDirections = [
  Hexagon(1, 0),
  Hexagon(1, -1),
  Hexagon(0, -1),
  Hexagon(-1, 0),
  Hexagon(-1, 1),
  Hexagon(0, 1)
];

// enum TileType {
//   Empty,
//   Mountain,
//   Grass,
//   IronDeposit,
//   Tree,
//   Water,
// }

@freezed
class Hexagon with _$Hexagon {
  const Hexagon._();

  const factory Hexagon(int q, int r) = _Hexagon;

  int get s => -q - r;

  @override
  String toString() => '($q,$r)';

  Hexagon operator +(Hexagon other) => Hexagon(q + other.q, r + other.r);

  Hexagon operator -(Hexagon other) => Hexagon(q - other.q, r - other.r);

  Hexagon operator *(int scale) => Hexagon(q * scale, r * scale);
}

@freezed
class Tile with _$Tile {
  const Tile._();

  factory Tile.empty(Hexagon hexagon, TileType tileType,
      {DoodadInstance? doodadInstance}) = Empty;

  // factory Tile.iron(int x, int y, BuiltSet<Doodad> doodads) = Empty;

  String get title {
    if (doodadInstance != null) doodadInstance.runtimeType;
    return tileType.toString();
  }

  bool get hasDoodad => doodadInstance != null;
}

class TileStateController extends StateNotifier<Tile> {
  final Ref ref;

  TileStateController(this.ref, Hexagon hexagon, TileType tileType)
      : super(Tile.empty(hexagon, tileType));

  StateNotifierProvider<TileStateController, Tile> get provider =>
      StateNotifierProvider((ref) => this);

  Tile get tile => state;

  void update() {
    tile.doodadInstance?.update();
  }

  void addDoodad(Doodad doodad) {
    state = state.copyWith(doodadInstance: doodad.create(ref, doodad));
  }

  void removeDoodad() {
    state = state.copyWith(doodadInstance: null);
  }
}

class BuildMenuItem {
  final Doodad doodad;

  final ItemRequirement cost;

  BuildMenuItem({required this.doodad, required this.cost});
}

// final treeBuildMenuItem = BuildMenuItem(
//     name: 'Tree',
//     description:
//         'A tree that flows in the wind. Must be cleared before a building can be placed here.',
//     image: 'assets/images/tree.png',
//     cost: ItemRequirement.empty(),
//     createNew: (p) => Tree(p));
//
// class Tree extends Doodad {
//   @override
//   String? get imageAsset => 'assets/images/tiles/03Trees/jungle_heavy.png';
//
//   Tree(TileStateController parent) : super(parent);
//
//   @override
//   void update() {
//     // print('Updating Tree!');
//   }
//
//   @override
//   final supportedLocations = {TileType.Grass};
// }
//
// abstract class TickableDoodad extends Doodad {
//   final SimpleStateProvider<int> currentTickState;
//
//   int get ticksRequired;
//
//   TickableDoodad(super.parent)
//       : currentTickState = SimpleStateProvider<int>(parent.ref, (ref) => 0);
//
//   bool canTick();
//
//   @override
//   @mustCallSuper
//   void update() {
//     if (!canTick()) return;
//     final newVal = currentTickState.read + 1;
//     currentTickState.updateState = newVal;
//     if (newVal <= ticksRequired) return;
//     currentTickState.updateState = 1;
//     print('Updating Digger!');
//     ticksMet();
//   }
//
//   void ticksMet();
// }
//
// class Digger extends TickableDoodad {
//   @override
//   final ticksRequired = 5;
//
//   Digger(super.parent);
//
//   @override
//   void ticksMet() {
//     parent.ref
//         .read(inventoryStateProvider.notifier)
//         .addItems(Items.IRON.generateItemInstance(2));
//   }
//
//   @override
//   final imageAsset = 'assets/images/drills/5.png';
//
//   @override
//   bool canTick() => true;
//
//   @override
//   final supportedLocations = {TileType.IronDeposit};
// }
//
// final diggerBuildMenuItem = BuildMenuItem(
//     name: 'Iron Digger',
//     description:
//         'Digs for resources and will store them in the planets resource depot.',
//     image: 'assets/images/drills/5.png',
//     cost: ItemRequirement.empty(),
//     createNew: (p) => Digger(p));

abstract class ReadOnlySimpleStateProvider<T> {
  T get read;

  T watch(WidgetRef ref);
}

class SimpleStateProvider<T> implements ReadOnlySimpleStateProvider<T> {
  final Ref _ref;
  final StateProvider<T> stateProvider;

  SimpleStateProvider(this._ref, T Function(Ref ref) initialValue)
      : stateProvider = StateProvider<T>(initialValue);

  AlwaysAliveProviderBase<StateController<T>> get notifier =>
      stateProvider.notifier;

  @override
  T get read => _ref.read(notifier).state;

  @override
  T watch(WidgetRef ref) => ref.watch(stateProvider);

  set updateState(T newState) {
    _ref.read(stateProvider.notifier).state = newState;
  }
}

// class Smelter extends TickableDoodad {
//   final InventoryStateController _inventoryController;
//   final materials = ItemRequirement.fromMap({Items.IRON.id: 2});
//
//   BuiltList<ItemInstance> get itemsProduced =>
//       Items.IRON_BAR.generateItemInstance(2);
//   final SimpleStateProvider<bool> _hasResourceState;
//
//   ReadOnlySimpleStateProvider<bool> get hasResources => _hasResourceState;
//
//   Smelter(super.parent)
//       : _inventoryController = parent.ref.read(inventoryStateProvider.notifier),
//         _hasResourceState =
//             SimpleStateProvider<bool>(parent.ref, (ref) => false);
//
//   @override
//   final imageAsset = 'assets/images/drills/4.jpg';
//
//   @override
//   final supportedLocations = {TileType.Grass};
//
//   @override
//   final ticksRequired = 8;
//
//   @override
//   bool canTick() {
//     if (hasResources.read) return true;
//     if (_inventoryController.subtractItemRequirement(materials)) {
//       _hasResourceState.updateState = true;
//       return true;
//     }
//     return false;
//   }
//
//   @override
//   void ticksMet() {
//     _inventoryController.addItems(itemsProduced);
//     parent.ref.read(inventoryStateProvider.notifier).addItems(itemsProduced);
//   }
// }
//
// final smelterBuildMenuItem = BuildMenuItem(
//     name: 'Smelter',
//     description: 'Smelts iron ore into iron bars.',
//     image: 'assets/images/drills/6.jpg',
//     cost: ItemRequirement.fromMap({Items.CREDIT.id: 5}),
//     createNew: (p) => Smelter(p));
//
// // class TreeHarvester extends TickableDoodad {
// //   @override
// //   // TODO: implement imageAsset
// //   String? get imageAsset => throw UnimplementedError();
// //
// //   @override
// //   void ticksMet() {
// //     // TODO: implement ticksMet
// //   }
// //
// //   @override
// //   // TODO: implement ticksRequired
// //   int get ticksRequired => throw UnimplementedError();
// //
// // }
//
// class Farm extends TickableDoodad {
//   Farm(super.parent);
//
//   @override
//   final imageAsset = 'assets/images/tiles/13-Icons/windmill.png';
//
//   @override
//   final supportedLocations = {TileType.Grass};
//
//   @override
//   void ticksMet() {
//     // TODO: implement ticksMet
//   }
//
//   @override
//   // TODO: implement ticksRequired
//   final ticksRequired = 20;
//
//   @override
//   bool canTick() {
//     // TODO: implement canTick
//     return true;
//   }
// }
//
// final farmBuildMenuItem = BuildMenuItem(
//     name: 'Farm',
//     description: 'Farms plants and not mobs.',
//     image: 'assets/images/tiles/13-Icons/windmill.png',
//     cost: ItemRequirement.fromMap({Items.CREDIT.id: 5}),
//     createNew: (p) => Farm(p));
//
// final dirtRoadBuildMenuItem = BuildMenuItem(
//     name: 'Dirt Road',
//     description:
//         'A road to connect your outpost. Buildings require a road to be built next to them.`',
//     image: 'assets/images/tiles/13-Icons/bridge.png',
//     cost: ItemRequirement.fromMap({Items.CREDIT.id: 5}),
//     createNew: (p) => Farm(p));
//
// class DirtRoad extends Doodad {
//   @override
//   String imageAsset =
//       'assets/images/tiles/10-barren-terrain/open_underdark.png';
//
//   @override
//   final supportedLocations = {
//     TileType.Grass,
//     TileType.Empty,
//   };
//
//   DirtRoad(super.parent);
//
//   @override
//   void update() {}
// }
