import 'package:built_collection/built_collection.dart';
import 'package:mining_game/crafting/crafting_definitions.dart';
import 'package:mining_game/doodads/base/doodad_definition.dart';
import 'package:mining_game/doodads/base/doodad_id.dart';
import 'package:mining_game/model_assets/crafting_models.dart';
import 'package:mining_game/model_assets/doodad_models.dart';
import 'package:mining_game/model_assets/item_models.dart';
import 'package:mining_game/model_assets/quest_models.dart';
import 'package:mining_game/quests/quest_definition.dart';

import 'item_definition.dart';

class ItemDirectory {
  static final BuiltMap<ItemDefinitionId, ItemDefinition> items =
      {for (var i in itemModels) i.id: i}.build();

  static final BuiltMap<DoodadId, DoodadDefinition> doodadDefinitions =
      {for (var i in doodadDefinitionsExample) i.id: i}.build();
  static final BuiltMap<int, QuestDefinition> allQuests = {
    for (final quest in questsModels) quest.id: quest,
  }.build();
  static final BuiltMap<int, CraftingRecipe> allRecipes = {
    for (final i in craftingModels) i.id: i,
  }.build();

  static ItemDefinition getItem(ItemDefinitionId id) => items[id]!;
}
