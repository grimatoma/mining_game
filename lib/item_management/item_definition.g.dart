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

class MinerItemIdAdapter extends TypeAdapter<_$MinerItemId> {
  @override
  final int typeId = 69;

  @override
  _$MinerItemId read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MinerItemId(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$MinerItemId obj) {
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
      other is MinerItemIdAdapter &&
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

class StackInstanceAdapter extends TypeAdapter<_$StackInstance> {
  @override
  final int typeId = 72;

  @override
  _$StackInstance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$StackInstance(
      id: fields[0] as InstanceId,
      itemId: fields[1] as ItemId,
      quantity: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$StackInstance obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.itemId)
      ..writeByte(2)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StackInstanceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemId _$$_ItemIdFromJson(Map<String, dynamic> json) => _$_ItemId(
      json['itemId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ItemIdToJson(_$_ItemId instance) => <String, dynamic>{
      'itemId': instance.itemId,
      'runtimeType': instance.$type,
    };

_$MinerItemId _$$MinerItemIdFromJson(Map<String, dynamic> json) =>
    _$MinerItemId(
      json['itemId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MinerItemIdToJson(_$MinerItemId instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'runtimeType': instance.$type,
    };

_$ResourceWalletOnlyDefinition _$$ResourceWalletOnlyDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$ResourceWalletOnlyDefinition(
      ItemId.fromJson(json['id'] as Map<String, dynamic>),
      json['maxStackSize'] as int,
      json['name'] as String,
      json['namePlural'] as String,
      json['description'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResourceWalletOnlyDefinitionToJson(
        _$ResourceWalletOnlyDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'maxStackSize': instance.maxStackSize,
      'name': instance.name,
      'namePlural': instance.namePlural,
      'description': instance.description,
      'runtimeType': instance.$type,
    };

_$ResourceDefinition _$$ResourceDefinitionFromJson(Map<String, dynamic> json) =>
    _$ResourceDefinition(
      ItemId.fromJson(json['id'] as Map<String, dynamic>),
      json['name'] as String,
      json['description'] as String,
      json['maxStackSize'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResourceDefinitionToJson(
        _$ResourceDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'maxStackSize': instance.maxStackSize,
      'runtimeType': instance.$type,
    };

_$DrillDefinition _$$DrillDefinitionFromJson(Map<String, dynamic> json) =>
    _$DrillDefinition(
      ItemId.fromJson(json['id'] as Map<String, dynamic>),
      json['name'] as String,
      json['description'] as String,
      json['damage'] as int,
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
      ItemId.fromJson(json['id'] as Map<String, dynamic>),
      json['name'] as String,
      json['namePlural'] as String,
      json['description'] as String,
      BuiltMap<WeaponAttributes, double>.of(
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
      ItemId.fromJson(json['id'] as Map<String, dynamic>),
      json['name'] as String,
      json['description'] as String,
      json['radius'] as int,
      json['depth'] as int,
      json['baseDamage'] as int,
      json['baseHopperSize'] as int,
      json['fuelConsumption'] as int,
      json['image'] as String,
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
