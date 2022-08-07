// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Requirement _$$_RequirementFromJson(Map<String, dynamic> json) =>
    _$_Requirement(
      features: (json['features'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$FeatureEnumMap, e))
              .toSet() ??
          const <Feature>{},
      cost: json['cost'] == null
          ? ItemRequirement.empty
          : ItemRequirement.fromJson(json['cost'] as Map<String, dynamic>),
      itemsOwned: json['itemsOwned'] == null
          ? ItemRequirement.empty
          : ItemRequirement.fromJson(
              json['itemsOwned'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RequirementToJson(_$_Requirement instance) =>
    <String, dynamic>{
      'features': instance.features.map((e) => _$FeatureEnumMap[e]!).toList(),
      'cost': instance.cost.toJson(),
      'itemsOwned': instance.itemsOwned.toJson(),
    };

const _$FeatureEnumMap = {
  Feature.SMELTING: 'SMELTING',
};

_$_QuestReward _$$_QuestRewardFromJson(Map<String, dynamic> json) =>
    _$_QuestReward(
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FeatureEnumMap, e))
          .toSet(),
      items: json['items'] == null
          ? null
          : ItemContainer.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestRewardToJson(_$_QuestReward instance) =>
    <String, dynamic>{
      'features': instance.features?.map((e) => _$FeatureEnumMap[e]!).toList(),
      'items': instance.items?.toJson(),
    };

_$_QuestDefinition _$$_QuestDefinitionFromJson(Map<String, dynamic> json) =>
    _$_QuestDefinition(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      enabledRequirement: Requirement.fromJson(
          json['enabledRequirement'] as Map<String, dynamic>),
      completeRequirement: Requirement.fromJson(
          json['completeRequirement'] as Map<String, dynamic>),
      reward: QuestReward.fromJson(json['reward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestDefinitionToJson(_$_QuestDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'enabledRequirement': instance.enabledRequirement.toJson(),
      'completeRequirement': instance.completeRequirement.toJson(),
      'reward': instance.reward.toJson(),
    };
