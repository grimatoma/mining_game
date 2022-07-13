// ignore_for_file: non_constant_identifier_names

import 'package:mining_game/item_management/item_directory.dart';

import 'item_definition.dart';

class ItemKeys {
  static const ROCK = ItemDefinitionId('ROCK');
  static const SHARP_ROCK = ItemDefinitionId('SHARP_ROCK');
  static const IRON = ItemDefinitionId('IRON');
  static final IRON_BAR =
      ItemDirectory.getItem(const ItemDefinitionId('IRON_BAR'));
  static const COPPER = ItemDefinitionId('COPPER');
  static const TEST_DRILL = ItemDefinitionId('TEST_DRILL');
  static const CREDIT = ItemDefinitionId('CREDIT');
}
