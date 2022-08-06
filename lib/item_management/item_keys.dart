// ignore_for_file: non_constant_identifier_names

import 'package:built_collection/built_collection.dart';
import 'package:mining_game/item_management/item_directory.dart';

import 'item_definition.dart';

class Items {
  static final ROCK = _getItemDefinition('ROCK');
  static final SHARP_ROCK = _getItemDefinition('SHARP_ROCK');
  static final IRON = _getItemDefinition('IRON');
  static final IRON_BAR = _getItemDefinition('IRON_BAR');
  static final COPPER = _getItemDefinition('COPPER');
  static final TEST_DRILL = _getItemDefinition('TEST_DRILL');
  static final CREDIT = _getItemDefinition('CREDIT');
  static final WOOD = _getItemDefinition('WOOD');
  static final PLANK = _getItemDefinition('PLANK');
  static final FOOD = _getItemDefinition('FOOD');
  static final SWORD = _getItemDefinition('SWORD');

  static ItemDefinition _getItemDefinition(String key) {
    return ItemDirectory.getItem(ItemDefinitionId(key));
  }
}

final _items = [
  ItemDefinition.resourceDefinition(
      id: Items.ROCK.id,
      name: 'Black Rock',
      namePlural: 'Black rocks',
      description: 'Often found in dark caves',
      image: 'assets/images/placeholder.png',
      maxStackSize: 100),
  ItemDefinition.resourceDefinition(
      id: Items.FOOD.id,
      name: 'Food',
      namePlural: 'Food',
      description: 'Test food object',
      image: 'assets/images/all/foodTest1.png',
      maxStackSize: 1000),
  ItemDefinition.swordDefinition(
      id: Items.SWORD.id,
      name: 'Sword',
      namePlural: 'Swords',
      description: 'Point stick',
      image: 'assets/images/placeholder.png',
      attributes: {WeaponAttributes.SHARP: 10.0}.build()),
  ItemDefinition.resourceDefinition(
      id: Items.IRON.id,
      name: 'Iron',
      namePlural: 'Iron',
      description: 'Can be mined',
      image: 'assets/images/minerals/iron.png',
      maxStackSize: 100),
  ItemDefinition.resourceDefinition(
      id: Items.IRON_BAR.id,
      name: 'Iron bar',
      namePlural: 'Iron bars',
      description: 'A smelted form of iron ready to be used for crafting.',
      image: 'assets/images/minerals/iron.png',
      maxStackSize: 100),
  ItemDefinition.resourceDefinition(
      id: Items.COPPER.id,
      name: 'Copper',
      namePlural: 'Copper',
      description: 'Can be mined',
      image: 'assets/images/minerals/copper.png',
      maxStackSize: 100),
  ItemDefinition.drillDefinition(
      id: Items.TEST_DRILL.id,
      name: 'Test drill',
      description: 'I do extra damage',
      image: 'assets/images/placeholder.png',
      damage: 4),
  ItemDefinition.resourceDefinition(
      id: Items.CREDIT.id,
      name: 'Credit',
      namePlural: 'Credits',
      description: 'A form of currency.',
      image: 'assets/images/money.png',
      maxStackSize: 100),
  ItemDefinition.resourceDefinition(
      id: Items.WOOD.id,
      name: 'Wood',
      description: 'Unprocessed wood',
      image: 'assets/images/1Icons/wood.png',
      maxStackSize: 100),
  ItemDefinition.resourceDefinition(
      id: Items.PLANK.id,
      name: 'Plank',
      description: 'Processed wood',
      image: 'assets/images/1Icons/plank.png',
      maxStackSize: 100),
];
