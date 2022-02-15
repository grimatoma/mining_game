// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miner.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MinerDefinitionAdapter extends TypeAdapter<_$_MinerDefinition> {
  @override
  final int typeId = 11;

  @override
  _$_MinerDefinition read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_MinerDefinition(
      name: fields[2] as String,
      description: fields[3] as String,
      radius: fields[4] as int,
      depth: fields[5] as int,
      baseDamage: fields[6] as int,
      baseHopperSize: fields[7] as int,
      fuelConsumption: fields[8] as int,
      image: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_MinerDefinition obj) {
    writer
      ..writeByte(8)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.radius)
      ..writeByte(5)
      ..write(obj.depth)
      ..writeByte(6)
      ..write(obj.baseDamage)
      ..writeByte(7)
      ..write(obj.baseHopperSize)
      ..writeByte(8)
      ..write(obj.fuelConsumption)
      ..writeByte(9)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MinerDefinitionAdapter &&
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
