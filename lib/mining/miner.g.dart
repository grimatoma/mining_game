// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miner.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MinerDefinitionIdAdapter extends TypeAdapter<_$_MinerDefinitionId> {
  @override
  final int typeId = 50;

  @override
  _$_MinerDefinitionId read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_MinerDefinitionId(
      id: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_MinerDefinitionId obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MinerDefinitionIdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MinerInstanceAdapter extends TypeAdapter<_$_MinerInstance> {
  @override
  final int typeId = 10;

  @override
  _$_MinerInstance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_MinerInstance(
      id: fields[0] as InstanceId,
      minerId: fields[1] as MinerDefinitionId,
      drillItemId: fields[2] as ItemId?,
      hopper: fields[4] as ItemContainer,
    );
  }

  @override
  void write(BinaryWriter writer, _$_MinerInstance obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.minerId)
      ..writeByte(2)
      ..write(obj.drillItemId)
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

_$_MinerDefinition _$$_MinerDefinitionFromJson(Map<String, dynamic> json) =>
    _$_MinerDefinition(
      id: MinerDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      radius: json['radius'] as int,
      depth: json['depth'] as int,
      baseDamage: json['baseDamage'] as int,
      baseHopperSize: json['baseHopperSize'] as int,
      fuelConsumption: json['fuelConsumption'] as int,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_MinerDefinitionToJson(_$_MinerDefinition instance) =>
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
    };

_$_MinerDefinitionId _$$_MinerDefinitionIdFromJson(Map<String, dynamic> json) =>
    _$_MinerDefinitionId(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_MinerDefinitionIdToJson(
        _$_MinerDefinitionId instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
