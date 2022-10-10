import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';

final itemModels = [
  const ItemDefinition.resourceDefinition(
      id: Items.ROCK,
      name: 'Black Rock',
      namePlural: 'Black rocks',
      description: 'Often found in dark caves',
      image:
          ImageDefinition('all/resources_sprite_page.png', row: 8, column: 3),
      maxStackSize: 100),
  const ItemDefinition.resourceDefinition(
      id: Items.FOOD,
      name: 'Food',
      namePlural: 'Food',
      description: 'Test food object',
      image:
          ImageDefinition('all/resources_sprite_page.png', row: 6, column: 2),
      maxStackSize: 1000),
  const ItemDefinition.swordDefinition(
      id: Items.SWORD,
      name: 'Sword',
      namePlural: 'Swords',
      description: 'Point stick',
      image:
          ImageDefinition('all/resources_sprite_page.png', row: 7, column: 6),
      attributes: {WeaponAttributes.SHARP: 10.0}),
  const ItemDefinition.resourceDefinition(
      id: Items.IRON_ORE,
      name: 'Iron ore',
      namePlural: 'Iron ore',
      description: 'Can be mined',
      image:
          ImageDefinition('all/resources_sprite_page.png', row: 4, column: 1),
      maxStackSize: 100),
  const ItemDefinition.resourceDefinition(
      id: Items.IRON_BAR,
      name: 'Iron bar',
      namePlural: 'Iron bars',
      description: 'A smelted form of iron ready to be used for crafting.',
      image:
          ImageDefinition('all/resources_sprite_page.png', row: 5, column: 1),
      maxStackSize: 100),
  const ItemDefinition.resourceDefinition(
      id: Items.COPPER_ORE,
      name: 'Copper ore',
      namePlural: 'Copper ore',
      description: 'Can be mined',
      image:
          ImageDefinition('all/resources_sprite_page.png', row: 4, column: 0),
      maxStackSize: 100),
  const ItemDefinition.resourceDefinition(
      id: Items.COPPER,
      name: 'Copper',
      namePlural: 'Copper',
      description: 'Can be mined',
      image:
          ImageDefinition('all/resources_sprite_page.png', row: 5, column: 0),
      maxStackSize: 100),
  const ItemDefinition.resourceDefinition(
      id: Items.SHARP_ROCK,
      name: 'Sharp rock',
      namePlural: 'Sharp rocks',
      description: 'A useless rock',
      image:
          ImageDefinition('all/resources_sprite_page.png', row: 1, column: 0),
      maxStackSize: 100),
  const ItemDefinition.resourceDefinition(
      id: Items.SMALL_ROCK,
      name: 'Small rock',
      namePlural: 'Small rocks',
      description: 'A useless rock',
      image:
          ImageDefinition('all/resources_sprite_page.png', row: 0, column: 5),
      maxStackSize: 100),
  const ItemDefinition.drillDefinition(
      id: Items.TEST_DRILL,
      name: 'Test drill',
      description: 'I do extra damage',
      image: ImageDefinition('assets/images/placeholder.png'),
      damage: 4),
  const ItemDefinition.resourceDefinition(
      id: Items.CREDIT,
      name: 'Credit',
      namePlural: 'Credits',
      description: 'A form of currency.',
      image:
          ImageDefinition('all/resources_sprite_page.png', row: 4, column: 9),
      maxStackSize: 100),
  const ItemDefinition.resourceDefinition(
      id: Items.WOOD,
      name: 'Wood',
      description: 'Unprocessed wood',
      image:
          ImageDefinition('all/resources_sprite_page.png', row: 0, column: 0),
      maxStackSize: 100),
  const ItemDefinition.resourceDefinition(
      id: Items.WOOD_PLANK,
      name: 'Plank',
      description: 'Processed wood',
      image:
          ImageDefinition('all/resources_sprite_page.png', row: 0, column: 1),
      maxStackSize: 100),
  const ItemDefinition.minerDefinition(
    id: Items.MINER1,
    name: 'Junk miner',
    description:
        'Salvaged from a garage sale. Barely functional and guzzles gas',
    radius: 1,
    depth: 1,
    baseDamage: 1,
    baseHopperSize: 50,
    fuelConsumption: 5,
    image: ImageDefinition('assets/images/drills/1.jpg'),
  ),
  const ItemDefinition.minerDefinition(
    id: Items.MINER2,
    name: 'Basic miner',
    description: 'Generic off the shelf miner',
    radius: 1,
    depth: 1,
    baseDamage: 2,
    baseHopperSize: 150,
    fuelConsumption: 5,
    image: ImageDefinition('assets/images/drills/2.jpg'),
  ),
  const ItemDefinition.minerDefinition(
    id: Items.MINER3,
    name: 'Test miner 3',
    description: 'This is the third miner',
    radius: 1,
    depth: 1,
    baseDamage: 1,
    baseHopperSize: 50,
    fuelConsumption: 5,
    image: ImageDefinition('assets/images/drills/3.png'),
  ),
  const ItemDefinition.minerDefinition(
    id: Items.MINER4,
    name: 'Test miner 4',
    description: 'This is the fourth miner',
    radius: 1,
    depth: 1,
    baseDamage: 1,
    baseHopperSize: 50,
    fuelConsumption: 5,
    image: ImageDefinition('assets/images/drills/4.jpg'),
  ),
  const ItemDefinition.minerDefinition(
    id: Items.MINER5,
    name: 'Test miner 5',
    description: 'This is the 5th miner',
    radius: 1,
    depth: 1,
    baseDamage: 1,
    baseHopperSize: 50,
    fuelConsumption: 5,
    image: ImageDefinition('assets/images/drills/5.png'),
  ),
];
