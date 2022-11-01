// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneralItemDefinition _$$GeneralItemDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$GeneralItemDefinition(
      id: ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      namePlural: json['namePlural'] as String?,
      description: json['description'] as String,
      image: ImageDefinition.fromJson(json['image'] as Map<String, dynamic>),
      sellPrice: json['sellPrice'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GeneralItemDefinitionToJson(
        _$GeneralItemDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'namePlural': instance.namePlural,
      'description': instance.description,
      'image': instance.image.toJson(),
      'sellPrice': instance.sellPrice,
      'runtimeType': instance.$type,
    };

_$ResourceItemDefinition _$$ResourceItemDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$ResourceItemDefinition(
      id: ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      namePlural: json['namePlural'] as String?,
      description: json['description'] as String,
      image: ImageDefinition.fromJson(json['image'] as Map<String, dynamic>),
      sellPrice: json['sellPrice'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResourceItemDefinitionToJson(
        _$ResourceItemDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'namePlural': instance.namePlural,
      'description': instance.description,
      'image': instance.image.toJson(),
      'sellPrice': instance.sellPrice,
      'runtimeType': instance.$type,
    };

_$DrillItemDefinition _$$DrillItemDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$DrillItemDefinition(
      id: ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      image: ImageDefinition.fromJson(json['image'] as Map<String, dynamic>),
      damage: json['damage'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DrillItemDefinitionToJson(
        _$DrillItemDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'image': instance.image.toJson(),
      'damage': instance.damage,
      'runtimeType': instance.$type,
    };

_$ToolItemDefinition _$$ToolItemDefinitionFromJson(Map<String, dynamic> json) =>
    _$ToolItemDefinition(
      id: ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      namePlural: json['namePlural'] as String?,
      description: json['description'] as String,
      image: ImageDefinition.fromJson(json['image'] as Map<String, dynamic>),
      sellPrice: json['sellPrice'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ToolItemDefinitionToJson(
        _$ToolItemDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'namePlural': instance.namePlural,
      'description': instance.description,
      'image': instance.image.toJson(),
      'sellPrice': instance.sellPrice,
      'runtimeType': instance.$type,
    };

_$SwordItemDefinition _$$SwordItemDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$SwordItemDefinition(
      id: ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      namePlural: json['namePlural'] as String?,
      description: json['description'] as String,
      image: ImageDefinition.fromJson(json['image'] as Map<String, dynamic>),
      attributes: (json['attributes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$WeaponAttributesEnumMap, k), (e as num).toDouble()),
      ),
      sellPrice: json['sellPrice'] as int?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SwordItemDefinitionToJson(
        _$SwordItemDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'namePlural': instance.namePlural,
      'description': instance.description,
      'image': instance.image.toJson(),
      'attributes': instance.attributes
          .map((k, e) => MapEntry(_$WeaponAttributesEnumMap[k]!, e)),
      'sellPrice': instance.sellPrice,
      'runtimeType': instance.$type,
    };

const _$WeaponAttributesEnumMap = {
  WeaponAttributes.SHARP: 'SHARP',
  WeaponAttributes.BLUNT: 'BLUNT',
  WeaponAttributes.FLAMING: 'FLAMING',
};

_$MinerItemDefinition _$$MinerItemDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$MinerItemDefinition(
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

Map<String, dynamic> _$$MinerItemDefinitionToJson(
        _$MinerItemDefinition instance) =>
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
