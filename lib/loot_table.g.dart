// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loot_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemProbability _$$_ItemProbabilityFromJson(Map<String, dynamic> json) =>
    _$_ItemProbability(
      ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      json['weight'] as int,
      min: json['min'] as int? ?? 1,
      max: json['max'] as int? ?? 1,
    );

Map<String, dynamic> _$$_ItemProbabilityToJson(_$_ItemProbability instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'weight': instance.weight,
      'min': instance.min,
      'max': instance.max,
    };
