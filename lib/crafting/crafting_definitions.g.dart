// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crafting_definitions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemCraftingRecipe _$$ItemCraftingRecipeFromJson(Map<String, dynamic> json) =>
    _$ItemCraftingRecipe(
      id: json['id'] as int,
      cost: ItemContainer.fromJson(json['cost'] as Map<String, dynamic>),
      item: ItemContainer.fromJson(json['item'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ItemCraftingRecipeToJson(
        _$ItemCraftingRecipe instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cost': instance.cost.toJson(),
      'item': instance.item.toJson(),
      'runtimeType': instance.$type,
    };

_$DoodadCraftingRecipe _$$DoodadCraftingRecipeFromJson(
        Map<String, dynamic> json) =>
    _$DoodadCraftingRecipe(
      id: json['id'] as int,
      cost: ItemContainer.fromJson(json['cost'] as Map<String, dynamic>),
      doodadId: DoodadId.fromJson(json['doodadId'] as Map<String, dynamic>),
      requiredFeatures: (json['requiredFeatures'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FeatureEnumMap, e))
          .toSet(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DoodadCraftingRecipeToJson(
        _$DoodadCraftingRecipe instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cost': instance.cost.toJson(),
      'doodadId': instance.doodadId.toJson(),
      'requiredFeatures':
          instance.requiredFeatures?.map((e) => _$FeatureEnumMap[e]!).toList(),
      'runtimeType': instance.$type,
    };

const _$FeatureEnumMap = {
  Feature.SMELTING: 'SMELTING',
};
