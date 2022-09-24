// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Requirement _$$_RequirementFromJson(Map<String, dynamic> json) =>
    _$_Requirement(
      requiredItems: const ItemDefinitionIdKeyedMapConverter()
          .fromJson(json['requiredItems'] as Map<String, dynamic>),
      requiredFeatures: (json['requiredFeatures'] as List<dynamic>)
          .map((e) => $enumDecode(_$FeatureEnumMap, e))
          .toSet(),
    );

Map<String, dynamic> _$$_RequirementToJson(_$_Requirement instance) =>
    <String, dynamic>{
      'requiredItems': const ItemDefinitionIdKeyedMapConverter()
          .toJson(instance.requiredItems),
      'requiredFeatures':
          instance.requiredFeatures.map((e) => _$FeatureEnumMap[e]!).toList(),
    };

const _$FeatureEnumMap = {
  Feature.SMELTING: 'SMELTING',
};
