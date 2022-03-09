// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_definition.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemIdAdapter extends TypeAdapter<_$_ItemId> {
  @override
  final int typeId = 66;

  @override
  _$_ItemId read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ItemId(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ItemId obj) {
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
      other is ItemIdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MinerIdAdapter extends TypeAdapter<_$MinerId> {
  @override
  final int typeId = 69;

  @override
  _$MinerId read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MinerId(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$MinerId obj) {
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
      other is MinerIdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MinerInstanceAdapter extends TypeAdapter<_$MinerInstance> {
  @override
  final int typeId = 10;

  @override
  _$MinerInstance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MinerInstance(
      id: fields[0] as InstanceId,
      itemId: fields[1] as ItemId,
      drillId: fields[2] as ItemId?,
      hopper: fields[4] as ItemContainer,
    );
  }

  @override
  void write(BinaryWriter writer, _$MinerInstance obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.itemId)
      ..writeByte(2)
      ..write(obj.drillId)
      ..writeByte(4)
      ..write(obj.hopper);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MinerInstanceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemId _$$_ItemIdFromJson(Map<String, dynamic> json) => _$_ItemId(
      json['itemId'] as String,
      $enumDecodeNullable(_$_ItemTypeEnumMap, json['itemType']) ??
          _ItemType.DEFAULT,
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ItemIdToJson(_$_ItemId instance) => <String, dynamic>{
      'itemId': instance.itemId,
      'itemType': _$_ItemTypeEnumMap[instance.itemType],
      'runtimeType': instance.$type,
    };

const _$_ItemTypeEnumMap = {
  _ItemType.DEFAULT: 'DEFAULT',
  _ItemType.MINER: 'MINER',
};

_$MinerId _$$MinerIdFromJson(Map<String, dynamic> json) => _$MinerId(
      json['itemId'] as String,
      $enumDecodeNullable(_$_ItemTypeEnumMap, json['itemType']) ??
          _ItemType.MINER,
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MinerIdToJson(_$MinerId instance) => <String, dynamic>{
      'itemId': instance.itemId,
      'itemType': _$_ItemTypeEnumMap[instance.itemType],
      'runtimeType': instance.$type,
    };

_$ResourceWalletOnlyDefinition _$$ResourceWalletOnlyDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$ResourceWalletOnlyDefinition(
      id: ItemId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      namePlural: json['namePlural'] as String,
      description: json['description'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResourceWalletOnlyDefinitionToJson(
        _$ResourceWalletOnlyDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'namePlural': instance.namePlural,
      'description': instance.description,
      'runtimeType': instance.$type,
    };

_$ResourceDefinition _$$ResourceDefinitionFromJson(Map<String, dynamic> json) =>
    _$ResourceDefinition(
      id: ItemId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResourceDefinitionToJson(
        _$ResourceDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'runtimeType': instance.$type,
    };

_$DrillDefinition _$$DrillDefinitionFromJson(Map<String, dynamic> json) =>
    _$DrillDefinition(
      id: ItemId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      damage: json['damage'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DrillDefinitionToJson(_$DrillDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'damage': instance.damage,
      'runtimeType': instance.$type,
    };

_$SwordDefinition _$$SwordDefinitionFromJson(Map<String, dynamic> json) =>
    _$SwordDefinition(
      id: ItemId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      namePlural: json['namePlural'] as String,
      description: json['description'] as String,
      attributes: BuiltMap<WeaponAttributes, double>.of(
          (json['attributes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$WeaponAttributesEnumMap, k), (e as num).toDouble()),
      )),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SwordDefinitionToJson(_$SwordDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'namePlural': instance.namePlural,
      'description': instance.description,
      'attributes': instance.attributes
          .toMap()
          .map((k, e) => MapEntry(_$WeaponAttributesEnumMap[k], e)),
      'runtimeType': instance.$type,
    };

const _$WeaponAttributesEnumMap = {
  WeaponAttributes.SHARP: 'SHARP',
  WeaponAttributes.BLUNT: 'BLUNT',
  WeaponAttributes.FLAMING: 'FLAMING',
};

_$MinerDefinition _$$MinerDefinitionFromJson(Map<String, dynamic> json) =>
    _$MinerDefinition(
      id: ItemId.fromJson(json['id'] as Map<String, dynamic>),
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
