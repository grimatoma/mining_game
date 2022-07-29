import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/planet/planet_manager.dart';

import 'doodad_definition.dart';
import 'doodad_id.dart';

abstract class DoodadInterface {
  const DoodadInterface();

  DoodadId get id;

  String get imageAsset;

  String get storeImageAsset;

  String get name;

  String get description;

  Set<TileType> get supportedLocations;
}

abstract class DoodadInstance<DefinitionT extends DoodadInterface>
    implements DoodadInterface {
  @protected
  final Ref ref;
  @protected
  final PlanetManager planetManager;
  @protected
  final TileStateController parent;
  final DefinitionT definition;
  @protected
  final void Function() notifyListeners;

  DoodadInstance(this.ref, this.planetManager, this.parent, this.definition,
      this.notifyListeners);

  void update();

  Widget? get statusWidget => null;

  @override
  String get description => definition.description;

  @override
  String get imageAsset => definition.imageAsset;

  @override
  String get name => definition.name;

  @override
  DoodadId get id => definition.id;

  @override
  String get storeImageAsset => definition.storeImageAsset;

  @override
  Set<TileType> get supportedLocations => definition.supportedLocations;
}
