// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_definition.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemDefinitionIdAdapter extends TypeAdapter<_$_ItemDefinitionId> {
  @override
  final int typeId = 66;

  @override
  _$_ItemDefinitionId read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ItemDefinitionId(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ItemDefinitionId obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.itemId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemDefinitionIdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      image: json['image'] as String,
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
      'image': instance.image,
      'maxStackSize': instance.maxStackSize,
      'runtimeType': instance.$type,
    };

_$DrillDefinition _$$DrillDefinitionFromJson(Map<String, dynamic> json) =>
    _$DrillDefinition(
      id: ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      damage: json['damage'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DrillDefinitionToJson(_$DrillDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'damage': instance.damage,
      'runtimeType': instance.$type,
    };

_$SwordDefinition _$$SwordDefinitionFromJson(Map<String, dynamic> json) =>
    _$SwordDefinition(
      id: ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      namePlural: json['namePlural'] as String?,
      description: json['description'] as String,
      image: json['image'] as String,
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
      'image': instance.image,
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
      image: json['image'] as String,
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
      'image': instance.image,
      'runtimeType': instance.$type,
    };

_$BasicInstance _$$BasicInstanceFromJson(Map<String, dynamic> json) =>
    _$BasicInstance(
      id: ItemInstanceId.fromJson(json['id'] as Map<String, dynamic>),
      itemId: ItemDefinitionId.fromJson(json['itemId'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BasicInstanceToJson(_$BasicInstance instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'itemId': instance.itemId.toJson(),
      'runtimeType': instance.$type,
    };

_$MinerInstance _$$MinerInstanceFromJson(Map<String, dynamic> json) =>
    _$MinerInstance(
      id: ItemInstanceId.fromJson(json['id'] as Map<String, dynamic>),
      itemId: ItemDefinitionId.fromJson(json['itemId'] as Map<String, dynamic>),
      drillId: json['drillId'] == null
          ? null
          : ItemDefinitionId.fromJson(json['drillId'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MinerInstanceToJson(_$MinerInstance instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'itemId': instance.itemId.toJson(),
      'drillId': instance.drillId?.toJson(),
      'runtimeType': instance.$type,
    };

_$StackInstance _$$StackInstanceFromJson(Map<String, dynamic> json) =>
    _$StackInstance(
      id: ItemInstanceId.fromJson(json['id'] as Map<String, dynamic>),
      itemId: ItemDefinitionId.fromJson(json['itemId'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StackInstanceToJson(_$StackInstance instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'itemId': instance.itemId.toJson(),
      'quantity': instance.quantity,
      'runtimeType': instance.$type,
    };

_$_ItemRequirement _$$_ItemRequirementFromJson(Map<String, dynamic> json) =>
    _$_ItemRequirement(
      const ItemDefinitionIdKeyedMapConverter()
          .fromJson(json['requiredItems'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemRequirementToJson(_$_ItemRequirement instance) =>
    <String, dynamic>{
      'requiredItems': const ItemDefinitionIdKeyedMapConverter()
          .toJson(instance.requiredItems),
    };

ItemInstanceGenerator _$ItemInstanceGeneratorFromJson(
        Map<String, dynamic> json) =>
    ItemInstanceGenerator(
      ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      json['countIfStack'] as int? ?? 1,
    );

Map<String, dynamic> _$ItemInstanceGeneratorToJson(
        ItemInstanceGenerator instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'countIfStack': instance.countIfStack,
    };
