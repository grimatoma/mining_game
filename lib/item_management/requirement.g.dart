// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemContainer _$$_ItemContainerFromJson(Map<String, dynamic> json) =>
    _$_ItemContainer(
      const ItemDefinitionIdKeyedMapConverter()
          .fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemContainerToJson(_$_ItemContainer instance) =>
    <String, dynamic>{
      'items': const ItemDefinitionIdKeyedMapConverter().toJson(instance.items),
    };

_$_Requirement _$$_RequirementFromJson(Map<String, dynamic> json) =>
    _$_Requirement(
      itemCost: json['itemCost'] == null
          ? ItemContainer.getDefault
          : ItemContainer.fromJson(json['itemCost'] as Map<String, dynamic>),
      features: (json['features'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$FeatureEnumMap, e))
              .toSet() ??
          const <Feature>{},
      itemsOwned: json['itemsOwned'] == null
          ? ItemContainer.getDefault
          : ItemContainer.fromJson(json['itemsOwned'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RequirementToJson(_$_Requirement instance) =>
    <String, dynamic>{
      'itemCost': instance.itemCost.toJson(),
      'features': instance.features.map((e) => _$FeatureEnumMap[e]!).toList(),
      'itemsOwned': instance.itemsOwned.toJson(),
    };

const _$FeatureEnumMap = {
  Feature.SMELTING: 'SMELTING',
};
