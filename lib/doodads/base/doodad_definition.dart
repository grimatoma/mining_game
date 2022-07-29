import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/planet/planet_manager.dart';

import '../doodad_types/digger_doodad.dart';
import '../doodad_types/material_processor_doodad.dart';
import '../doodad_types/tree_cutter_doodad.dart';
import '../doodad_types/tree_doodad.dart';
import 'doodad_id.dart';
import 'doodad_interface_and_instance.dart';
import 'tickable_doodad.dart';

part 'doodad_definition.freezed.dart';

part 'doodad_definition.g.dart';

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

@freezed
class DoodadDefinition with _$DoodadDefinition implements DoodadInterface {
  const DoodadDefinition._();

  @Implements<TickableDoodadInterface>()
  const factory DoodadDefinition.digger({
    required DoodadId id,
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
    required String ticksName,
  }) = DiggerDoodadDefinition;

  @Implements<TickableDoodadInterface>()
  const factory DoodadDefinition.tree({
    required DoodadId id,
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
    required String ticksName,
  }) = TreeDoodadDefinition;

  @Implements<TickableDoodadInterface>()
  const factory DoodadDefinition.treeCutterHut({
    required DoodadId id,
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
    required String ticksName,
  }) = TreeCutterHutDoodadDefinition;

  @Implements<MaterialProcessorDoodadInterface>()
  const factory DoodadDefinition.materialProcessor({
    required DoodadId id,
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
    required String ticksName,
    required ItemRequirement consumedMaterials,
    required BuiltList<ItemInstance> itemsProduced,
  }) = MaterialProcessorDoodadDefinition;

  DoodadInstance create(
      Ref ref,
      PlanetManager planetManager,
      TileStateController controller,
      DoodadDefinition doodadDefinition,
      Function() notifyListeners) {
    return doodadDefinition.map(
        digger: (d) =>
            DiggerInstance(ref, planetManager, controller, d, notifyListeners),
        tree: (d) =>
            TreeInstance(ref, planetManager, controller, d, notifyListeners),
        materialProcessor: (d) => MaterialProcessorDoodadInstance(
            ref, planetManager, controller, d, notifyListeners),
        treeCutterHut: (d) => TreeCutterHutInstance(
            ref, planetManager, controller, d, notifyListeners));
  }

  factory DoodadDefinition.fromJson(Map<String, dynamic> json) =>
      _$DoodadDefinitionFromJson(json);
}
