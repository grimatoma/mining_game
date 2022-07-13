// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet_tile.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlanetTileAdapter extends TypeAdapter<_$_PlanetTile> {
  @override
  final int typeId = 17;

  @override
  _$_PlanetTile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_PlanetTile(
      point: fields[0] as PlanetPoint,
      resources: fields[1] as ItemContainer,
      visible: fields[2] as bool,
      tileType: fields[3] as TileType,
    );
  }

  @override
  void write(BinaryWriter writer, _$_PlanetTile obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.point)
      ..writeByte(1)
      ..write(obj.resources)
      ..writeByte(2)
      ..write(obj.visible)
      ..writeByte(3)
      ..write(obj.tileType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlanetTileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
