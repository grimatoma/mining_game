import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';
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

  bool get userCanBuild;
}

class DoodadInstancePack<DefinitionT extends DoodadInterface> {
  final Ref ref;
  final PlanetManager planetManager;
  final TileStateController parent;
  final DefinitionT definition;
  final void Function() notifyListeners;
  final Map<String, dynamic>? json;

  DoodadInstancePack(
      {required this.ref,
      required this.planetManager,
      required this.parent,
      required this.definition,
      required this.notifyListeners,
      this.json});
}

const doodadDefintionIdField = 'doodadDefinitionId';

abstract class DoodadInstance<DefinitionT extends DoodadInterface>
    implements DoodadInterface {
  static var canInit = false;

  DoodadInstance(this.pack) {
    if (canInit) init();
  }

  @protected
  final DoodadInstancePack<DefinitionT> pack;

  @protected
  Ref get ref => pack.ref;

  @protected
  PlanetManager get planetManager => pack.planetManager;

  @protected
  TileStateController get parent => pack.parent;

  DefinitionT get definition => pack.definition;

  @JsonKey(name: doodadDefintionIdField)
  DoodadId get doodadId => definition.id;

  @protected
  void Function() get notifyListeners => pack.notifyListeners;

  @mustCallSuper
  void update();

  void init();

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

  @override
  bool get userCanBuild => definition.userCanBuild;

  void onDestroy() {}

  Map<String, dynamic> toJson();
}

// abstract class StatefulDoodadInstance<DefinitionT extends DoodadInterface,
//     StateT extends DoodadState> extends DoodadInstance<DefinitionT> {
//   StatefulDoodadInstance(super.ref, super.planetManager, super.parent,
//       super.definition, super.notifyListeners);
// }
//
// abstract class DoodadState {}
//
// @freezed
// class DoodadStateMap with _$DoodadStateMap {
//   const DoodadStateMap._();
//
//   const factory DoodadStateMap(Map<String, dynamic> map) = _DoodadStateMap;
// }
