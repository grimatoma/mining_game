// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crafting_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CraftingSession _$$_CraftingSessionFromJson(Map<String, dynamic> json) =>
    _$_CraftingSession(
      recipe: CraftingRecipe.fromJson(json['recipe'] as Map<String, dynamic>),
      remaining: json['remaining'] as int,
    );

Map<String, dynamic> _$$_CraftingSessionToJson(_$_CraftingSession instance) =>
    <String, dynamic>{
      'recipe': instance.recipe.toJson(),
      'remaining': instance.remaining,
    };
