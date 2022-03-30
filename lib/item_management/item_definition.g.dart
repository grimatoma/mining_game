// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_definition.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BasicItemIdAdapter extends TypeAdapter<_$BasicItemId> {
  @override
  final int typeId = 66;

  @override
  _$BasicItemId read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$BasicItemId(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$BasicItemId obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.itemId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BasicItemIdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MinerItemIdAdapter extends TypeAdapter<_$MinerItemId> {
  @override
  final int typeId = 69;

  @override
  _$MinerItemId read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MinerItemId(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$MinerItemId obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.itemId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MinerItemIdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StackableItemIdAdapter extends TypeAdapter<_$StackableItemId> {
  @override
  final int typeId = 70;

  @override
  _$StackableItemId read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$StackableItemId(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$StackableItemId obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.itemId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StackableItemIdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BasicInstanceAdapter extends TypeAdapter<_$BasicInstance> {
  @override
  final int typeId = 10;

  @override
  _$BasicInstance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$BasicInstance(
      id: fields[0] as ItemInstanceId,
      itemId: fields[1] as ItemDefinitionId,
    );
  }

  @override
  void write(BinaryWriter writer, _$BasicInstance obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.itemId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BasicInstanceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MinerInstanceAdapter extends TypeAdapter<_$MinerInstance> {
  @override
  final int typeId = 10;

  @override
  _$MinerInstance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MinerInstance(
      id: fields[0] as ItemInstanceId,
      itemId: fields[1] as ItemDefinitionId,
      drillId: fields[2] as ItemDefinitionId?,
    );
  }

  @override
  void write(BinaryWriter writer, _$MinerInstance obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.itemId)
      ..writeByte(2)
      ..write(obj.drillId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MinerInstanceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StackInstanceAdapter extends TypeAdapter<_$StackInstance> {
  @override
  final int typeId = 72;

  @override
  _$StackInstance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$StackInstance(
      id: fields[0] as ItemInstanceId,
      itemId: fields[1] as ItemDefinitionId,
      quantity: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$StackInstance obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.itemId)
      ..writeByte(2)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StackInstanceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ItemInstanceGeneratorAdapter extends TypeAdapter<ItemInstanceGenerator> {
  @override
  final int typeId = 81;

  @override
  ItemInstanceGenerator read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemInstanceGenerator(
      fields[0] as BuiltMap<ItemDefinitionId, int>,
    );
  }

  @override
  void write(BinaryWriter writer, ItemInstanceGenerator obj) {
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
      other is ItemInstanceGeneratorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ItemRequirementAdapter extends TypeAdapter<ItemRequirement> {
  @override
  final int typeId = 82;

  @override
  ItemRequirement read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemRequirement(
      fields[0] as BuiltMap<ItemDefinitionId, int>,
    );
  }

  @override
  void write(BinaryWriter writer, ItemRequirement obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.requiredItems);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemRequirementAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasicItemId _$$BasicItemIdFromJson(Map<String, dynamic> json) =>
    _$BasicItemId(
      json['itemId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BasicItemIdToJson(_$BasicItemId instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'runtimeType': instance.$type,
    };

_$MinerItemId _$$MinerItemIdFromJson(Map<String, dynamic> json) =>
    _$MinerItemId(
      json['itemId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MinerItemIdToJson(_$MinerItemId instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'runtimeType': instance.$type,
    };

_$StackableItemId _$$StackableItemIdFromJson(Map<String, dynamic> json) =>
    _$StackableItemId(
      json['itemId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StackableItemIdToJson(_$StackableItemId instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'runtimeType': instance.$type,
    };

_$ResourceDefinition _$$ResourceDefinitionFromJson(Map<String, dynamic> json) =>
    _$ResourceDefinition(
      ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      json['name'] as String,
      json['description'] as String,
      json['image'] as String,
      json['maxStackSize'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResourceDefinitionToJson(
        _$ResourceDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'maxStackSize': instance.maxStackSize,
      'runtimeType': instance.$type,
    };

_$DrillDefinition _$$DrillDefinitionFromJson(Map<String, dynamic> json) =>
    _$DrillDefinition(
      ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      json['name'] as String,
      json['description'] as String,
      json['image'] as String,
      json['damage'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DrillDefinitionToJson(_$DrillDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'damage': instance.damage,
      'runtimeType': instance.$type,
    };

_$SwordDefinition _$$SwordDefinitionFromJson(Map<String, dynamic> json) =>
    _$SwordDefinition(
      ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      json['name'] as String,
      json['namePlural'] as String,
      json['description'] as String,
      json['image'] as String,
      BuiltMap<WeaponAttributes, double>.of(
          (json['attributes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$WeaponAttributesEnumMap, k), (e as num).toDouble()),
      )),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SwordDefinitionToJson(_$SwordDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'namePlural': instance.namePlural,
      'description': instance.description,
      'image': instance.image,
      'attributes': instance.attributes
          .toMap()
          .map((k, e) => MapEntry(_$WeaponAttributesEnumMap[k], e)),
      'runtimeType': instance.$type,
    };

const _$WeaponAttributesEnumMap = {
  WeaponAttributes.SHARP: 'SHARP',
  WeaponAttributes.BLUNT: 'BLUNT',
  WeaponAttributes.FLAMING: 'FLAMING',
};

_$MinerDefinition _$$MinerDefinitionFromJson(Map<String, dynamic> json) =>
    _$MinerDefinition(
      ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      json['name'] as String,
      json['description'] as String,
      json['radius'] as int,
      json['depth'] as int,
      json['baseDamage'] as int,
      json['baseHopperSize'] as int,
      json['fuelConsumption'] as int,
      json['image'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MinerDefinitionToJson(_$MinerDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'radius': instance.radius,
      'depth': instance.depth,
      'baseDamage': instance.baseDamage,
      'baseHopperSize': instance.baseHopperSize,
      'fuelConsumption': instance.fuelConsumption,
      'image': instance.image,
      'runtimeType': instance.$type,
    };
