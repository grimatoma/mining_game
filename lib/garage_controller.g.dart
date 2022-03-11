// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'garage_controller.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SlotStateMinerAdapter extends TypeAdapter<_$SlotWithMiner> {
  @override
  final int typeId = 43;

  @override
  _$SlotWithMiner read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SlotWithMiner(
      minerId: fields[1] as InstanceId,
      index: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$SlotWithMiner obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.minerId)
      ..writeByte(2)
      ..write(obj.index);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SlotStateMinerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SlotStateLockedAdapter extends TypeAdapter<_$LockedSlot> {
  @override
  final int typeId = 44;

  @override
  _$LockedSlot read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LockedSlot(
      index: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$LockedSlot obj) {
    writer
      ..writeByte(1)
      ..writeByte(2)
      ..write(obj.index);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SlotStateLockedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SlotStateEmptyAdapter extends TypeAdapter<_$EmptySlot> {
  @override
  final int typeId = 45;

  @override
  _$EmptySlot read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$EmptySlot(
      index: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$EmptySlot obj) {
    writer
      ..writeByte(1)
      ..writeByte(2)
      ..write(obj.index);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SlotStateEmptyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
