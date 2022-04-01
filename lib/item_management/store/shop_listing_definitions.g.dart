// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_listing_definitions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemShopListing _$$ItemShopListingFromJson(Map<String, dynamic> json) =>
    _$ItemShopListing(
      id: json['id'] as int,
      cost: ItemRequirement.fromJson(json['cost'] as Map<String, dynamic>),
      item:
          ItemInstanceGenerator.fromJson(json['item'] as Map<String, dynamic>),
      consumable: json['consumable'] as bool? ?? true,
    );

Map<String, dynamic> _$$ItemShopListingToJson(_$ItemShopListing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cost': instance.cost.toJson(),
      'item': instance.item.toJson(),
      'consumable': instance.consumable,
    };
