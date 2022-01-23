// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_instance.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InstanceIdAdapter extends TypeAdapter<_$_InstanceId> {
  @override
  final int typeId = 15;

  @override
  _$_InstanceId read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_InstanceId(
      fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_InstanceId obj) {
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
      other is InstanceIdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
