import 'package:built_collection/built_collection.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';

import 'base/doodad_definition.dart';
import 'base/doodad_id.dart';

final doodadDefinitionsExample = [
  const RegenerativeHarvestableDoodadDefinition(
      id: DoodadId.rawFish,
      name: 'School of fish',
      description:
          'A group of playful fish that are so friendly. Why is your mouth watering? Do you not care at all about these beatiful creatures? o... You care about how they taste..',
      imageAsset: 'assets/images/drills/5.png',
      storeImageAsset: 'assets/images/drills/5.png',
      supportedLocations: {TileType.Water},
      ticksRequired: 10,
      ticksName: 'Populating',
      resourceRequiredToHarvestOne: 1,
      resourceMax: 4,
      resourceIncreasePerTick: 0.25,
      manualEffortToHarvest: 5),
  DiggerDoodadDefinition(
    id: DoodadId.ironDigger,
    name: 'Iron Digger',
    description:
        'Digs for resources and will store them in the planets resource depot.',
    imageAsset: 'assets/images/drills/5.png',
    storeImageAsset: 'assets/images/drills/5.png',
    supportedLocations: {TileType.IronDeposit},
    ticksRequired: 5,
    ticksName: 'Digging',
    itemMined: [ItemInstanceGenerator(Items.IRON.id, 1)].build(),
  ),
  const RegenerativeHarvestableDoodadDefinition(
      id: DoodadId.tree,
      name: 'Tree',
      description:
          'A tree that flows in the wind. Must be cleared before a building can be placed here.',
      imageAsset: 'assets/images/tree.png',
      storeImageAsset: 'assets/images/tiles/03Trees/jungle_heavy.png',
      supportedLocations: {TileType.Grass},
      ticksRequired: 5,
      ticksName: 'Chopping',
      resourceRequiredToHarvestOne: 0.25,
      resourceMax: 1.0,
      resourceIncreasePerTick: 0.1,
      manualEffortToHarvest: 5,
      dynamicImageAssets: {
        100: 'assets/images/forestTest/forest100.png',
        90: 'assets/images/forestTest/forest90.png',
        75: 'assets/images/forestTest/forest75.png',
        65: 'assets/images/forestTest/forest65.png',
        60: 'assets/images/forestTest/forest60.png',
        50: 'assets/images/forestTest/forest50.png',
        25: 'assets/images/forestTest/forest25.png',
        1: 'assets/images/forestTest/forest10.png',
        0: 'assets/images/forestTest/forest0.png',
      }),
  const AreaHarvestableDoodadDefinition(
      id: DoodadId.treeCutterHut,
      name: 'Tree cutter hut',
      description: 'Cuts down trees within 1 range.',
      imageAsset: 'assets/images/doodad/lumberHut.jpg',
      storeImageAsset: 'assets/images/doodad/lumberHut.jpg',
      supportedLocations: {TileType.Grass},
      ticksRequired: 20,
      ticksName: 'Cutting',
      range: 1),
  MaterialProcessorDoodadDefinition(
      id: DoodadId.ironSmelter,
      name: 'Iron smelter',
      description: 'Smelts iron ore into iron bars.',
      imageAsset: 'assets/images/tiles/13-Icons/smithy.png',
      storeImageAsset: 'assets/images/tiles/13-Icons/smithy.png',
      supportedLocations: {TileType.Grass},
      ticksRequired: 15,
      ticksName: 'Smelting',
      consumedMaterials: ItemRequirement.single(Items.IRON.id, 2),
      itemsProduced: Items.IRON_BAR.generateItemInstance(1)),
].build();
