import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/planet/planet_manager.dart';

import '../doodad_types/area_harvestable_doodad.dart';
import '../doodad_types/digger_doodad.dart';
import '../doodad_types/house_doodad.dart';
import '../doodad_types/material_processor_doodad.dart';
import '../doodad_types/tree_doodad.dart';
import 'doodad_id.dart';
import 'doodad_interface_and_instance.dart';

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
  EMPTY,
  MOUNTAIN, // Can get stone
  GRASS,
  IRON_DEPOSIT,
  TREE,
  WATER,
  COASTAL,
}

final tileTypeMap = buildEnumMap(TileType.values);

@freezed
class DoodadDefinition with _$DoodadDefinition implements DoodadInterface {
  const DoodadDefinition._();

  @Implements<DiggerDoodadInterface>()
  const factory DoodadDefinition.digger({
    required DoodadId id,
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    @Default(true) bool userCanBuild,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
    required String ticksName,
    required BuiltList<ItemInstanceGenerator> itemMined,
  }) = DiggerDoodadDefinition;

  // @Implements<TickableDoodadInterface>()
  // const factory DoodadDefinition.harvestable({
  //   required DoodadId id,
  //   required String name,
  //   required String description,
  //   required String imageAsset,
  //   required String storeImageAsset,
  //   required Set<TileType> supportedLocations,
  //   required int ticksRequired,
  //   required String ticksName,
  // }) = HarvestableDoodadDefinition;

  @Implements<RegenerativeHarvestableDoodadInterface>()
  const factory DoodadDefinition.regenerativeHarvestable({
    required DoodadId id,
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    @Default(true) bool userCanBuild,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
    required String ticksName,
    required double resourceRequiredToHarvestOne,
    required double resourceMax,
    required double resourceIncreasePerTick,
    required BuiltList<ItemInstanceGenerator> resourceGenerated,
    int? manualEffortToHarvest,
    Map<int, String>? dynamicImageAssets,
  }) = RegenerativeHarvestableDoodadDefinition;

  @Implements<AreaHarvestableDoodadInterface>()
  const factory DoodadDefinition.areaHarvestable({
    required DoodadId id,
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    @Default(true) bool userCanBuild,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
    required String ticksName,
    required int range,
  }) = AreaHarvestableDoodadDefinition;

  @Implements<MaterialProcessorDoodadInterface>()
  const factory DoodadDefinition.materialProcessor({
    required DoodadId id,
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    @Default(true) bool userCanBuild,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
    required String ticksName,
    required ItemRequirement consumedMaterials,
    required BuiltList<ItemInstance> itemsProduced,
  }) = MaterialProcessorDoodadDefinition;

  @Implements<HouseDoodadInterface>()
  const factory DoodadDefinition.house({
    required DoodadId id,
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    @Default(true) bool userCanBuild,
    required Set<TileType> supportedLocations,
    required int populationLimit,
    required PersonType peopleType,
  }) = HouseDoodadDefinition;

  DoodadInstance create(
      Ref ref,
      PlanetManager planetManager,
      TileStateController controller,
      DoodadDefinition doodadDefinition,
      Function() notifyListeners,
      [Map<String, dynamic>? json]) {
    DoodadInstancePack<T> getPack<T extends DoodadDefinition>(T definition) =>
        DoodadInstancePack(
            ref: ref,
            planetManager: planetManager,
            parent: controller,
            definition: definition,
            notifyListeners: notifyListeners,
            json: json);
    return doodadDefinition.map(
      digger: (d) => DiggerDoodadInstance(getPack(d)),
      regenerativeHarvestable: (d) =>
          RegenerativeHarvestableDoodadInstance(getPack(d)),
      materialProcessor: (d) => MaterialProcessorDoodadInstance(getPack(d)),
      areaHarvestable: (d) => AreaHarvestableDoodadInstance(getPack(d)),
      house: (d) => HouseDoodadInstance(getPack(d)),
    );
  }

  factory DoodadDefinition.fromJson(Map<String, dynamic> json) =>
      _$DoodadDefinitionFromJson(json);
}
