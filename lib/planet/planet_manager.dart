import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_directory.dart';

part 'planet_manager.freezed.dart';
// part 'planet_manager.g.dart';

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

enum PanelVisibility {
  None,
  BuyMenu,
  TileDetail,
}

final panelVisibilityState =
    StateProvider<PanelVisibility>((ref) => PanelVisibility.None);

// Contains planet specifics and state
class Planet {}

// Maybe add a state.
class PlanetManager {
  final Ref _ref;

  late final BuiltList<BuiltList<TileStateController>> tiles;

  // Load or for now generate the planet
  final width = 12;
  final height = 8;

  PlanetManager(this._ref) {
    final planetBuilder = ListBuilder<BuiltList<TileStateController>>();
    for (int y = 0; y < height; y++) {
      final rowBuilder = ListBuilder<TileStateController>();
      for (int x = 0; x < width; x++) {
        rowBuilder.add(TileStateController(_ref, x, y));
      }
      planetBuilder.add(rowBuilder.build());
    }

    tiles = planetBuilder.build();
    tiles[2][2].addDoodad(Tree(tiles[2][2]));
  }

  void update() {
    for (final tile in tilesIterable) {
      tile.update();
    }
  }

  Iterable<TileStateController> get tilesIterable sync* {
    for (final row in tiles) {
      for (final tile in row) {
        yield tile;
      }
    }
  }

  TileStateController getTile(int index) =>
      tiles[index ~/ width][index % height];
}

enum TileType {
  Empty,
  Mountain,
  Grass,
  IronDeposit,
}

@freezed
class Tile with _$Tile {
  const Tile._();

  factory Tile.empty(int x, int y, TileType tileType, {Doodad? doodad}) = Empty;

  // factory Tile.iron(int x, int y, BuiltSet<Doodad> doodads) = Empty;

  String get title {
    if (doodad != null) doodad.runtimeType;
    return tileType.toString();
  }

  bool get hasDoodad => doodad != null;
}

class TileStateController extends StateNotifier<Tile> {
  final Ref ref;

  TileStateController(this.ref, int x, int y)
      : super(Tile.empty(x, y, TileType.Grass));

  StateNotifierProvider<TileStateController, Tile> get provider =>
      StateNotifierProvider((ref) => this);

  Tile get tile => state;

  void update() {
    tile.doodad?.update();
  }

  void addDoodad(Doodad doodad) {
    state = state.copyWith(doodad: doodad);
  }

  void removeDoodad() {
    state = state.copyWith(doodad: null);
  }
}

// abstract class Doodad<InstanceT> {
//   String? get imageAsset => null;
//   Doodad get singletonRef;
//
//   InstanceT createNew(TileStateController parent);
// }

abstract class Doodad {
  String? get imageAsset;

  final TileStateController parent;

  Doodad(this.parent);

  void update();
}

abstract class BuildMenuItem {
  String get name;

  String get description;

  String get image;

  Doodad createNew(TileStateController parent);
}

class TreeBuildMenuItem extends BuildMenuItem {
  TreeBuildMenuItem._();

  static final singleton = TreeBuildMenuItem._();

  @override
  Doodad createNew(TileStateController parent) {
    return Tree(parent);
  }

  @override
  final image = 'assets/images/tree.png';

  @override
  final name = 'Tree';

  @override
  final description =
      'A tree that flows in the wind. Must be cleared before a building can be placed here.';
}

class Tree extends Doodad {
  @override
  String? get imageAsset => 'assets/images/tree.png';

  Tree(TileStateController parent) : super(parent);

  @override
  void update() {
    // print('Updating Tree!');
  }
}

abstract class TickableDoodad extends Doodad {
  TickableDoodad(super.parent);

  final tickState = StateProvider<int>((ref) => 0);

  int get ticksRequired;
}

class Digger extends TickableDoodad {
  @override
  final ticksRequired = 5;

  Digger(super.parent);

  @override
  void update() {
    final provider = parent.ref.read(tickState.notifier);
    provider.state = provider.state + 1;
    if (provider.state <= ticksRequired) return;
    provider.state = 1;
    print('Updating Digger!');
    parent.ref.read(inventoryStateProvider.notifier).addItems(
        ItemDirectory.getItem(const ItemDefinitionId('IRON'))
            .generateItemInstance(2));
  }

  @override
  String? get imageAsset => 'assets/images/drills/5.png';
}

class DiggerBuildMenuItem extends BuildMenuItem {
  DiggerBuildMenuItem._();

  static final singleton = DiggerBuildMenuItem._();

  @override
  Doodad createNew(TileStateController parent) {
    return Digger(parent);
  }

  @override
  final image = 'assets/images/drills/5.png';

  @override
  final name = 'Digger';

  @override
  final description =
      'Digs for resources and will store them in the planets resource depot.';
}
