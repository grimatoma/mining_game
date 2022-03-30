// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_listing_definitions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BuyItemsShopListing _$$BuyItemsShopListingFromJson(
        Map<String, dynamic> json) =>
    _$BuyItemsShopListing(
      id: json['id'] as int,
      price: ItemRequirement.fromJson(json['price'] as Map<String, dynamic>),
      consumable: json['consumable'] as bool? ?? true,
      generator: ItemInstanceGenerator.fromJson(
          json['generator'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BuyItemsShopListingToJson(
        _$BuyItemsShopListing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price.toJson(),
      'consumable': instance.consumable,
      'generator': instance.generator.toJson(),
      'runtimeType': instance.$type,
    };

_$SellItemsShopListing _$$SellItemsShopListingFromJson(
        Map<String, dynamic> json) =>
    _$SellItemsShopListing(
      id: json['id'] as int,
      consumable: json['consumable'] as bool? ?? true,
      sellPrice: ItemInstanceGenerator.fromJson(
          json['sellPrice'] as Map<String, dynamic>),
      items: ItemRequirement.fromJson(json['items'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SellItemsShopListingToJson(
        _$SellItemsShopListing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'consumable': instance.consumable,
      'sellPrice': instance.sellPrice.toJson(),
      'items': instance.items.toJson(),
      'runtimeType': instance.$type,
    };
