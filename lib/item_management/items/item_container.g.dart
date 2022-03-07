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
      fields[0] as BuiltMap<ItemKey, int>,
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemContainer _$ItemContainerFromJson(Map<String, dynamic> json) =>
    ItemContainer(
      BuiltMap<ItemKey, int>.of((json['items'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$ItemKeyEnumMap, k), e as int),
      )),
    );

Map<String, dynamic> _$ItemContainerToJson(ItemContainer instance) =>
    <String, dynamic>{
      'items': instance.items
          .toMap()
          .map((k, e) => MapEntry(_$ItemKeyEnumMap[k], e)),
    };

const _$ItemKeyEnumMap = {
  ItemKey.ROCK: 'ROCK',
  ItemKey.SHARP_ROCK: 'SHARP_ROCK',
  ItemKey.IRON: 'IRON',
  ItemKey.COPPER: 'COPPER',
  ItemKey.TEST_DRILL: 'TEST_DRILL',
  ItemKey.CREDIT: 'CREDIT',
};
