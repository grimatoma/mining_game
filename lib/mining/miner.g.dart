// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miner.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

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
      definition: fields[1] as MinerDefinition,
      drillItemId: fields[2] as ItemKey?,
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
      ..write(obj.definition)
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
      'name': instance.name,
      'description': instance.description,
      'radius': instance.radius,
      'depth': instance.depth,
      'baseDamage': instance.baseDamage,
      'baseHopperSize': instance.baseHopperSize,
      'fuelConsumption': instance.fuelConsumption,
      'image': instance.image,
    };
