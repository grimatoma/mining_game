// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resources.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResourceAdapter extends TypeAdapter<Resource> {
  @override
  final int typeId = 13;

  @override
  Resource read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Resource.iron;
      case 1:
        return Resource.copper;
      default:
        return Resource.iron;
    }
  }

  @override
  void write(BinaryWriter writer, Resource obj) {
    switch (obj) {
      case Resource.iron:
        writer.writeByte(0);
        break;
      case Resource.copper:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResourceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
