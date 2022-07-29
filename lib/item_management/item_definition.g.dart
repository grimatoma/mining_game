// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_definition.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemDefinitionIdAdapter extends TypeAdapter<_$_ItemDefinitionId> {
  @override
  final int typeId = 66;

  @override
  _$_ItemDefinitionId read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ItemDefinitionId(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ItemDefinitionId obj) {
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
      other is ItemDefinitionIdAdapter &&
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
  final int typeId = 104;

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
      fields[0] as ItemDefinitionId,
      fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ItemInstanceGenerator obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.countIfStack);
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

_$_ItemDefinitionId _$$_ItemDefinitionIdFromJson(Map<String, dynamic> json) =>
    _$_ItemDefinitionId(
      json['itemId'] as String,
    );

Map<String, dynamic> _$$_ItemDefinitionIdToJson(_$_ItemDefinitionId instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
    };

_$ResourceDefinition _$$ResourceDefinitionFromJson(Map<String, dynamic> json) =>
    _$ResourceDefinition(
      ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      json['name'] as String,
      json['namePlural'] as String,
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
      'namePlural': instance.namePlural,
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
          .map((k, e) => MapEntry(_$WeaponAttributesEnumMap[k]!, e)),
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

_$BasicInstance _$$BasicInstanceFromJson(Map<String, dynamic> json) =>
    _$BasicInstance(
      id: ItemInstanceId.fromJson(json['id'] as Map<String, dynamic>),
      itemId: ItemDefinitionId.fromJson(json['itemId'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BasicInstanceToJson(_$BasicInstance instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'itemId': instance.itemId.toJson(),
      'runtimeType': instance.$type,
    };

_$MinerInstance _$$MinerInstanceFromJson(Map<String, dynamic> json) =>
    _$MinerInstance(
      id: ItemInstanceId.fromJson(json['id'] as Map<String, dynamic>),
      itemId: ItemDefinitionId.fromJson(json['itemId'] as Map<String, dynamic>),
      drillId: json['drillId'] == null
          ? null
          : ItemDefinitionId.fromJson(json['drillId'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MinerInstanceToJson(_$MinerInstance instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'itemId': instance.itemId.toJson(),
      'drillId': instance.drillId?.toJson(),
      'runtimeType': instance.$type,
    };

_$StackInstance _$$StackInstanceFromJson(Map<String, dynamic> json) =>
    _$StackInstance(
      id: ItemInstanceId.fromJson(json['id'] as Map<String, dynamic>),
      itemId: ItemDefinitionId.fromJson(json['itemId'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StackInstanceToJson(_$StackInstance instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'itemId': instance.itemId.toJson(),
      'quantity': instance.quantity,
      'runtimeType': instance.$type,
    };

ItemInstanceGenerator _$ItemInstanceGeneratorFromJson(
        Map<String, dynamic> json) =>
    ItemInstanceGenerator(
      ItemDefinitionId.fromJson(json['id'] as Map<String, dynamic>),
      json['countIfStack'] as int? ?? 1,
    );

Map<String, dynamic> _$ItemInstanceGeneratorToJson(
        ItemInstanceGenerator instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'countIfStack': instance.countIfStack,
    };
