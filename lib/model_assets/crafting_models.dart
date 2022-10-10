import 'package:built_collection/built_collection.dart';
import 'package:mining_game/crafting/crafting_definitions.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/item_management/requirement.dart';

import '../quests/townsfolk_definition.dart';

final craftingModels = [
  ItemCraftingRecipe(
      id: const CraftingRecipeDefinitionId('1'),
      input: ItemContainer.single(Items.WOOD, 2),
      output: Items.WOOD_PLANK,
      craftingDuration: 5),
  ItemCraftingRecipe(
      id: const CraftingRecipeDefinitionId('2'),
      input: ItemContainer.single(Items.IRON_ORE, 2),
      output: Items.IRON_BAR,
      craftingDuration: 6),
  ItemCraftingRecipe(
      id: const CraftingRecipeDefinitionId('3'),
      input: ItemContainer({
        Items.IRON_BAR: 4,
        Items.WOOD_STICK: 2,
        Items.ROPE: 2,
        Items.GEMSTONE_UNKNOWN: 1,
      }),
      output: Items.SWORD,
      craftingDuration: 15),
  ItemCraftingRecipe(
      id: const CraftingRecipeDefinitionId('4'),
      input: ItemContainer({Items.WOOD: 1}),
      output: Items.WOOD_STICK, // TODO maybe produce more than one?
      craftingDuration: 15),
  ItemCraftingRecipe(
      id: const CraftingRecipeDefinitionId('5'),
      input: ItemContainer.single(Items.PLANT_FIBERS, 4),
      output: Items.TWINE,
      craftingDuration: 15),
  ItemCraftingRecipe(
      id: const CraftingRecipeDefinitionId('5'),
      input: ItemContainer.single(Items.TWINE, 4),
      output: Items.ROPE,
      craftingDuration: 15),
  ItemCraftingRecipe(
      id: const CraftingRecipeDefinitionId('6'),
      input: ItemContainer({Items.STONE: 4, Items.WOOD_PLANK: 10}),
      output: Items.CRAFTING_TABLE,
      craftingDuration: 15),
  ItemCraftingRecipe(
      id: const CraftingRecipeDefinitionId('7'),
      input: ItemContainer({Items.IRON_BAR: 3, Items.WOOD_STICK: 2}),
      output: Items.AXE_IRON,
      craftingDuration: 15),
  ItemCraftingRecipe(
      id: const CraftingRecipeDefinitionId('8'),
      input: ItemContainer({Items.STONE: 3, Items.WOOD_STICK: 2}),
      output: Items.AXE_STONE,
      craftingDuration: 15),
  ItemCraftingRecipe(
      id: const CraftingRecipeDefinitionId('9'),
      input: ItemContainer({Items.IRON_BAR: 3, Items.WOOD_STICK: 2}),
      output: Items.AXE_IRON,
      craftingDuration: 15),
  ItemCraftingRecipe(
      id: const CraftingRecipeDefinitionId('9'),
      input: ItemContainer({Items.BRONZE_BAR: 3, Items.WOOD_STICK: 2}),
      output: Items.AXE_BRONZE,
      craftingDuration: 15),
].build();
