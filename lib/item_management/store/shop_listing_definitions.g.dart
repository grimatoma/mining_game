// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_listing_definitions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BuyItemStackShopListing _$$BuyItemStackShopListingFromJson(
        Map<String, dynamic> json) =>
    _$BuyItemStackShopListing(
      id: json['id'] as int,
      type: $enumDecodeNullable(_$BuyingShopListingTypeEnumMap, json['type']) ??
          BuyingShopListingType.ITEM_STACK,
      price: ItemContainer.fromJson(json['price'] as Map<String, dynamic>),
      consumable: json['consumable'] as bool? ?? true,
      itemId: ItemId.fromJson(json['itemId'] as Map<String, dynamic>),
      quantity: json['quantity'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BuyItemStackShopListingToJson(
        _$BuyItemStackShopListing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$BuyingShopListingTypeEnumMap[instance.type],
      'price': instance.price.toJson(),
      'consumable': instance.consumable,
      'itemId': instance.itemId.toJson(),
      'quantity': instance.quantity,
      'runtimeType': instance.$type,
    };

const _$BuyingShopListingTypeEnumMap = {
  BuyingShopListingType.ITEM_STACK: 'ITEM_STACK',
  BuyingShopListingType.MINER: 'MINER',
};

_$BuyMinerShopListing _$$BuyMinerShopListingFromJson(
        Map<String, dynamic> json) =>
    _$BuyMinerShopListing(
      id: json['id'] as int,
      type: $enumDecodeNullable(_$BuyingShopListingTypeEnumMap, json['type']) ??
          BuyingShopListingType.MINER,
      price: ItemContainer.fromJson(json['price'] as Map<String, dynamic>),
      consumable: json['consumable'] as bool? ?? true,
      minerId: MinerId.fromJson(json['minerId'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BuyMinerShopListingToJson(
        _$BuyMinerShopListing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$BuyingShopListingTypeEnumMap[instance.type],
      'price': instance.price.toJson(),
      'consumable': instance.consumable,
      'minerId': instance.minerId.toJson(),
      'runtimeType': instance.$type,
    };

_$SellItemShopListing _$$SellItemShopListingFromJson(
        Map<String, dynamic> json) =>
    _$SellItemShopListing(
      id: json['id'] as int,
      consumable: json['consumable'] as bool? ?? true,
      sellPrice:
          ItemContainer.fromJson(json['sellPrice'] as Map<String, dynamic>),
      items: ItemContainer.fromJson(json['items'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SellItemShopListingToJson(
        _$SellItemShopListing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consumable': instance.consumable,
      'sellPrice': instance.sellPrice.toJson(),
      'items': instance.items.toJson(),
      'runtimeType': instance.$type,
    };
