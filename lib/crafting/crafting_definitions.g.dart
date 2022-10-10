// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crafting_definitions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemCraftingRecipe _$$ItemCraftingRecipeFromJson(Map<String, dynamic> json) =>
    _$ItemCraftingRecipe(
      id: CraftingRecipeDefinitionId.fromJson(
          json['id'] as Map<String, dynamic>),
      input: ItemContainer.fromJson(json['input'] as Map<String, dynamic>),
      output: ItemDefinitionId.fromJson(json['output'] as Map<String, dynamic>),
      craftingDuration: json['craftingDuration'] as int,
    );

Map<String, dynamic> _$$ItemCraftingRecipeToJson(
        _$ItemCraftingRecipe instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'input': instance.input.toJson(),
      'output': instance.output.toJson(),
      'craftingDuration': instance.craftingDuration,
    };
