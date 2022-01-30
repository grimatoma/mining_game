// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_directory.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemKeyAdapter extends TypeAdapter<ItemKey> {
  @override
  final int typeId = 36;

  @override
  ItemKey read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ItemKey.ROCK;
      case 1:
        return ItemKey.SHARP_ROCK;
      case 2:
        return ItemKey.IRON;
      case 3:
        return ItemKey.COPPER;
      case 4:
        return ItemKey.TEST_DRILL;
      default:
        return ItemKey.ROCK;
    }
  }

  @override
  void write(BinaryWriter writer, ItemKey obj) {
    switch (obj) {
      case ItemKey.ROCK:
        writer.writeByte(0);
        break;
      case ItemKey.SHARP_ROCK:
        writer.writeByte(1);
        break;
      case ItemKey.IRON:
        writer.writeByte(2);
        break;
      case ItemKey.COPPER:
        writer.writeByte(3);
        break;
      case ItemKey.TEST_DRILL:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemKeyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
