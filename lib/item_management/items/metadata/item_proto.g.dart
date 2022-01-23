// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_proto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemIdAdapter extends TypeAdapter<_$_ItemId> {
  @override
  final int typeId = 16;

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
      ..write(obj.id);
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
