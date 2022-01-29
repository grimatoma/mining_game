// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_mining_manager.dart';

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
      hopperSize: fields[7] as int,
      fuelConsumption: fields[8] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_MinerDefinition obj) {
    writer
      ..writeByte(7)
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
      ..write(obj.hopperSize)
      ..writeByte(8)
      ..write(obj.fuelConsumption);
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

class StoredMinerInstanceAdapter extends TypeAdapter<_$StoredMinerInstance> {
  @override
  final int typeId = 10;

  @override
  _$StoredMinerInstance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$StoredMinerInstance(
      proto: fields[1] as MinerDefinition,
      drillItemId: fields[2] as ItemId?,
    );
  }

  @override
  void write(BinaryWriter writer, _$StoredMinerInstance obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.proto)
      ..writeByte(2)
      ..write(obj.drillItemId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoredMinerInstanceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ActiveMinerInstanceAdapter extends TypeAdapter<_$ActiveMinerInstance> {
  @override
  final int typeId = 37;

  @override
  _$ActiveMinerInstance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ActiveMinerInstance(
      proto: fields[1] as MinerDefinition,
      drillItemId: fields[2] as ItemId?,
      planetPoint: fields[3] as PlanetPoint,
      inventory: fields[4] as ItemContainer,
    );
  }

  @override
  void write(BinaryWriter writer, _$ActiveMinerInstance obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.proto)
      ..writeByte(2)
      ..write(obj.drillItemId)
      ..writeByte(3)
      ..write(obj.planetPoint)
      ..writeByte(4)
      ..write(obj.inventory);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActiveMinerInstanceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
