// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Inventory _$$_InventoryFromJson(Map<String, dynamic> json) => _$_Inventory(
      ((json['itemSlots'] as List).map((e) => e == null
          ? null
          : ItemInstance.fromJson(e as Map<String, dynamic>))).toBuiltList(),
    );

Map<String, dynamic> _$$_InventoryToJson(_$_Inventory instance) =>
    <String, dynamic>{
      'itemSlots': instance.itemSlots.map((e) => e?.toJson()).toList(),
    };
