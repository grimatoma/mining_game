import 'package:built_collection/built_collection.dart';
import 'package:mining_game/crafting/crafting_definitions.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/item_management/requirement.dart';

final craftingModels = [
  ItemCraftingRecipe(
      id: 1,
      input: ItemContainer.single(Items.WOOD, 2),
      output: Items.PLANK,
      craftingDuration: 5),
  ItemCraftingRecipe(
      id: 2,
      input: ItemContainer.single(Items.IRON_ORE, 2),
      output: Items.IRON_BAR,
      craftingDuration: 6),
  ItemCraftingRecipe(
      id: 3,
      input: ItemContainer({Items.IRON_BAR: 2, Items.PLANK: 1}),
      output: Items.SWORD,
      craftingDuration: 15),
].build();
