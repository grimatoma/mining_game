// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_container.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

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
      fields[1] as BuiltMap<Resource, int>,
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
