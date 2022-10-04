import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/doodads/base/doodad_definition.dart';
import 'package:mining_game/item_management/item_directory.dart';

part 'townsfolk_definition.freezed.dart';

part 'townsfolk_definition.g.dart';

@freezed
class DefinitionId with _$DefinitionId {
  const DefinitionId._();

  // @With<ItemDefinitionIdActions>()
  const factory DefinitionId.item(String id) = ItemDefinitionId;

  const factory DefinitionId.townsfolk(String id) = TownsfolkDefinitionId;

  const factory DefinitionId.quest(String id) = QuestDefinitionId;

  const factory DefinitionId.shop(String id) = ShopListingDefinitionId;

  const factory DefinitionId.craftingRecipe(String id) =
      CraftingRecipeDefinitionId;

  const factory DefinitionId.doodad(String id) = DoodadDefinitionId;

  @override
  String toString() => id;

  factory DefinitionId.fromJson(Map<String, dynamic> json) =>
      _$DefinitionIdFromJson(json);
}

@freezed
class TownsfolkDefinition with _$TownsfolkDefinition {
  const factory TownsfolkDefinition({
    required TownsfolkDefinitionId id,
    required String name,
    required String image,
  }) = _TownsfolkDefinition;
}

extension GetDef on DoodadDefinitionId {
  DoodadDefinition get definition => ItemDirectory.doodadDefinitions[this]!;
}
