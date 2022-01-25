// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlanetAdapter extends TypeAdapter<Planet> {
  @override
  final int typeId = 25;

  @override
  Planet read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Planet(
      maxResourceSize: fields[0] as int,
      width: fields[1] as int,
      height: fields[2] as int,
      depth: fields[3] as int,
      map: fields[4] as BuiltMap<PlanetPoint, PlanetTile>,
    );
  }

  @override
  void write(BinaryWriter writer, Planet obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.maxResourceSize)
      ..writeByte(1)
      ..write(obj.width)
      ..writeByte(2)
      ..write(obj.height)
      ..writeByte(3)
      ..write(obj.depth)
      ..writeByte(4)
      ..write(obj.map);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlanetAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
