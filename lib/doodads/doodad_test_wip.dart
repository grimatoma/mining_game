import 'package:built_collection/built_collection.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';

import 'base/doodad_definition.dart';
import 'base/doodad_id.dart';

final doodadDefinitionsExample = [
  const DiggerDoodadDefinition(
    id: DoodadId.ironDigger,
    name: 'Iron Digger',
    description:
        'Digs for resources and will store them in the planets resource depot.',
    imageAsset: 'assets/images/drills/5.png',
    storeImageAsset: 'assets/images/drills/5.png',
    supportedLocations: {TileType.IronDeposit},
    ticksRequired: 5,
    ticksName: 'Digging',
  ),
  const TreeDoodadDefinition(
      id: DoodadId.tree,
      name: 'Tree',
      description:
          'A tree that flows in the wind. Must be cleared before a building can be placed here.',
      imageAsset: 'assets/images/tree.png',
      storeImageAsset: 'assets/images/tiles/03Trees/jungle_heavy.png',
      supportedLocations: {TileType.Grass},
      ticksRequired: 5,
      ticksName: 'Chopping'),
  const TreeCutterHutDoodadDefinition(
      id: DoodadId.treeCutterHut,
      name: 'Tree cutter hut',
      description: 'Cuts down trees within 1 range.',
      imageAsset: 'assets/images/doodad/lumberHut.jpg',
      storeImageAsset: 'assets/images/doodad/lumberHut.jpg',
      supportedLocations: {TileType.Grass},
      ticksRequired: 20,
      ticksName: 'Cutting'),
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
