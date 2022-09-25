import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/doodads/base/doodad_id.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/requirement.dart';

part 'crafting_definitions.freezed.dart';

part 'crafting_definitions.g.dart';

@freezed
class CraftingRecipe with _$CraftingRecipe {
  const factory CraftingRecipe.itemListing({
    required int id,
    required ItemContainer cost,
    required ItemContainer item,
  }) = ItemCraftingRecipe;

  const factory CraftingRecipe.doodadListing({
    required int id,
    required ItemContainer cost,
    required DoodadId doodadId,
    Set<Feature>? requiredFeatures,
  }) = DoodadCraftingRecipe;

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
