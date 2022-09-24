// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventoryv3.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Inventory _$$_InventoryFromJson(Map<String, dynamic> json) => _$_Inventory(
      json['maxItems'] as int,
      const ItemDefinitionIdKeyedMapConverter()
          .fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InventoryToJson(_$_Inventory instance) =>
    <String, dynamic>{
      'maxItems': instance.maxItems,
      'items': const ItemDefinitionIdKeyedMapConverter().toJson(instance.items),
    };
