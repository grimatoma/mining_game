// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_database.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TestIdAdapter extends TypeAdapter<_$_TestId> {
  @override
  final int typeId = 11;

  @override
  _$_TestId read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_TestId(
      fields[1] as int,
      fields[2] as TestInnerId,
    );
  }

  @override
  void write(BinaryWriter writer, _$_TestId obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TestIdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TestInnerIdAdapter extends TypeAdapter<_$_TestInnerId> {
  @override
  final int typeId = 12;

  @override
  _$_TestInnerId read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_TestInnerId(
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_TestInnerId obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TestInnerIdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
