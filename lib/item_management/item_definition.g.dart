// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDefinitionId _$$_ItemDefinitionIdFromJson(Map<String, dynamic> json) =>
    _$_ItemDefinitionId(
      json['itemId'] as String,
    );

Map<String, dynamic> _$$_ItemDefinitionIdToJson(_$_ItemDefinitionId instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
    };

_$ResourceDefinition _$$ResourceDefinitionFromJson(Map<String, dynamic> json) =>
    _$ResourceDefinition(
      id: ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      namePlural: json['namePlural'] as String?,
      description: json['description'] as String,
      image: ImageDefinition.fromJson(json['image'] as Map<String, dynamic>),
      maxStackSize: json['maxStackSize'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResourceDefinitionToJson(
        _$ResourceDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'namePlural': instance.namePlural,
      'description': instance.description,
      'image': instance.image.toJson(),
      'maxStackSize': instance.maxStackSize,
      'runtimeType': instance.$type,
    };

_$DrillDefinition _$$DrillDefinitionFromJson(Map<String, dynamic> json) =>
    _$DrillDefinition(
      id: ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      image: ImageDefinition.fromJson(json['image'] as Map<String, dynamic>),
      damage: json['damage'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DrillDefinitionToJson(_$DrillDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'image': instance.image.toJson(),
      'damage': instance.damage,
      'runtimeType': instance.$type,
    };

_$SwordDefinition _$$SwordDefinitionFromJson(Map<String, dynamic> json) =>
    _$SwordDefinition(
      id: ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      namePlural: json['namePlural'] as String?,
      description: json['description'] as String,
      image: ImageDefinition.fromJson(json['image'] as Map<String, dynamic>),
      attributes: (json['attributes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$WeaponAttributesEnumMap, k), (e as num).toDouble()),
      ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SwordDefinitionToJson(_$SwordDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'namePlural': instance.namePlural,
      'description': instance.description,
      'image': instance.image.toJson(),
      'attributes': instance.attributes
          .map((k, e) => MapEntry(_$WeaponAttributesEnumMap[k]!, e)),
      'runtimeType': instance.$type,
    };

const _$WeaponAttributesEnumMap = {
  WeaponAttributes.SHARP: 'SHARP',
  WeaponAttributes.BLUNT: 'BLUNT',
  WeaponAttributes.FLAMING: 'FLAMING',
};

_$MinerDefinition _$$MinerDefinitionFromJson(Map<String, dynamic> json) =>
    _$MinerDefinition(
      id: ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      radius: json['radius'] as int,
      depth: json['depth'] as int,
      baseDamage: json['baseDamage'] as int,
      baseHopperSize: json['baseHopperSize'] as int,
      fuelConsumption: json['fuelConsumption'] as int,
      image: ImageDefinition.fromJson(json['image'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MinerDefinitionToJson(_$MinerDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'radius': instance.radius,
      'depth': instance.depth,
      'baseDamage': instance.baseDamage,
      'baseHopperSize': instance.baseHopperSize,
      'fuelConsumption': instance.fuelConsumption,
      'image': instance.image.toJson(),
      'runtimeType': instance.$type,
    };

_$_ImageDefinition _$$_ImageDefinitionFromJson(Map<String, dynamic> json) =>
    _$_ImageDefinition(
      json['path'] as String,
      row: json['row'] as int?,
      column: json['column'] as int?,
    );

Map<String, dynamic> _$$_ImageDefinitionToJson(_$_ImageDefinition instance) =>
    <String, dynamic>{
      'path': instance.path,
      'row': instance.row,
      'column': instance.column,
    };
