// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resources.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResourcesAdapter extends TypeAdapter<Resources> {
  @override
  final int typeId = 13;

  @override
  Resources read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Resources.iron;
      case 1:
        return Resources.copper;
      default:
        return Resources.iron;
    }
  }

  @override
  void write(BinaryWriter writer, Resources obj) {
    switch (obj) {
      case Resources.iron:
        writer.writeByte(0);
        break;
      case Resources.copper:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResourcesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ResourceContainerAdapter extends TypeAdapter<_$_ResourceContainer> {
  @override
  final int typeId = 12;

  @override
  _$_ResourceContainer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ResourceContainer(
      fields[1] as BuiltMap<Resources, int>,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ResourceContainer obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.resources);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResourceContainerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
