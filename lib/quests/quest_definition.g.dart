// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

const _$FeatureEnumMap = {
  Feature.SMELTING: 'SMELTING',
};

_$_QuestDefinition _$$_QuestDefinitionFromJson(Map<String, dynamic> json) =>
    _$_QuestDefinition(
      id: QuestDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      questGiver: json['questGiver'] == null
          ? null
          : TownsfolkDefinitionId.fromJson(
              json['questGiver'] as Map<String, dynamic>),
      enabledRequirement: Requirement.fromJson(
          json['enabledRequirement'] as Map<String, dynamic>),
      completeRequirement: Requirement.fromJson(
          json['completeRequirement'] as Map<String, dynamic>),
      reward: QuestReward.fromJson(json['reward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestDefinitionToJson(_$_QuestDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'questGiver': instance.questGiver?.toJson(),
      'enabledRequirement': instance.enabledRequirement.toJson(),
      'completeRequirement': instance.completeRequirement.toJson(),
      'reward': instance.reward.toJson(),
    };
