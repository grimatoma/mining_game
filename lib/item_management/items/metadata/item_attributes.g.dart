// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_attributes.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MinerInstanceAdapter extends TypeAdapter<_$_StackInstance> {
  @override
  final int typeId = 32;

  @override
  _$_StackInstance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_StackInstance(
      proto: fields[0] as StackTypeDefinition,
      instanceId: fields[1] as InstanceId,
      quantity: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_StackInstance obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.proto)
      ..writeByte(1)
      ..write(obj.instanceId)
      ..writeByte(2)
      ..write(obj.quantity);
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
