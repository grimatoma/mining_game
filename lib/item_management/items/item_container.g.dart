// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_container.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemContainerAdapter extends TypeAdapter<ItemContainer> {
  @override
  final int typeId = 35;

  @override
  ItemContainer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemContainer(
      fields[0] as BuiltMap<ItemDefinitionId, int>,
    );
  }

  @override
  void write(BinaryWriter writer, ItemContainer obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemContainerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
