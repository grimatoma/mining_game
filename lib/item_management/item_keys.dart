// ignore_for_file: non_constant_identifier_names

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

  static ItemDefinition _getItemDefinition(String key) {
    return ItemDirectory.getItem(ItemDefinitionId(key));
  }
}
