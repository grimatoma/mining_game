import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/quests/townsfolk_definition.dart';

part 'crafting_definitions.freezed.dart';

part 'crafting_definitions.g.dart';

/// Potential idea for standarizing the echanging item sbut
/// then the nouns might not allign as well. It might be worth making
/// util converters instead
// abstract class ItemExchange {
//   ItemContainer get input;
//   ItemContainer get output;
// }

@freezed
class CraftingRecipe with _$CraftingRecipe {
  const factory CraftingRecipe.itemListing({
    required CraftingRecipeDefinitionId id,
    required ItemContainer input,
    required ItemDefinitionId output,
    required int craftingDuration,
  }) = ItemCraftingRecipe;

  // const factory CraftingRecipe.doodadListing({
  //   required int id,
  //   required ItemContainer input,
  //   required DoodadId createdDoodadId,
  //   Set<Feature>? requiredFeatures,
  // }) = DoodadCraftingRecipe;

  //
  // const factory CraftingRecipe.featureListing({
  //   required int id,
  //   required ItemRequirement cost,
  //   required Feature feature,
  //   Set<Feature>? requiredFeatures,
  //   @Default(true) bool consumable,
  // }) = FeatureCraftingRecipe;

  factory CraftingRecipe.fromJson(Map<String, dynamic> json) =>
      _$CraftingRecipeFromJson(json);
}
