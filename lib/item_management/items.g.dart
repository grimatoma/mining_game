// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MinerInstanceAdapter extends TypeAdapter<_$_MinerInstance> {
  @override
  final int typeId = 1;

  @override
  _$_MinerInstance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_MinerInstance(
      instanceId: fields[1] as InstanceId,
      itemId: fields[2] as ItemId,
      drillItemId: fields[3] as ItemId?,
      potato: fields[4] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_MinerInstance obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.instanceId)
      ..writeByte(2)
      ..write(obj.itemId)
      ..writeByte(3)
      ..write(obj.drillItemId)
      ..writeByte(4)
      ..write(obj.potato);
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
