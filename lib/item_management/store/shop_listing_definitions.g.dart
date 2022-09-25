// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_listing_definitions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemShopListing _$$ItemShopListingFromJson(Map<String, dynamic> json) =>
    _$ItemShopListing(
      id: json['id'] as int,
      cost: ItemContainer.fromJson(json['cost'] as Map<String, dynamic>),
      item: ItemDefinitionId.fromJson(json['item'] as Map<String, dynamic>),
      consumable: json['consumable'] as bool? ?? true,
      quantity: json['quantity'] as int? ?? 1,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ItemShopListingToJson(_$ItemShopListing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cost': instance.cost.toJson(),
      'item': instance.item.toJson(),
      'consumable': instance.consumable,
      'quantity': instance.quantity,
      'runtimeType': instance.$type,
    };

_$DoodadShopListing _$$DoodadShopListingFromJson(Map<String, dynamic> json) =>
    _$DoodadShopListing(
      id: json['id'] as int,
      cost: ItemContainer.fromJson(json['cost'] as Map<String, dynamic>),
      doodadId: DoodadId.fromJson(json['doodadId'] as Map<String, dynamic>),
      requiredFeatures: (json['requiredFeatures'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FeatureEnumMap, e))
          .toSet(),
      consumable: json['consumable'] as bool? ?? true,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DoodadShopListingToJson(_$DoodadShopListing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cost': instance.cost.toJson(),
      'doodadId': instance.doodadId.toJson(),
      'requiredFeatures':
          instance.requiredFeatures?.map((e) => _$FeatureEnumMap[e]!).toList(),
      'consumable': instance.consumable,
      'runtimeType': instance.$type,
    };

const _$FeatureEnumMap = {
  Feature.SMELTING: 'SMELTING',
};

_$FeatureShopListing _$$FeatureShopListingFromJson(Map<String, dynamic> json) =>
    _$FeatureShopListing(
      id: json['id'] as int,
      cost: ItemContainer.fromJson(json['cost'] as Map<String, dynamic>),
      feature: $enumDecode(_$FeatureEnumMap, json['feature']),
      requiredFeatures: (json['requiredFeatures'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$FeatureEnumMap, e))
          .toSet(),
      consumable: json['consumable'] as bool? ?? true,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FeatureShopListingToJson(
        _$FeatureShopListing instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cost': instance.cost.toJson(),
      'feature': _$FeatureEnumMap[instance.feature]!,
      'requiredFeatures':
          instance.requiredFeatures?.map((e) => _$FeatureEnumMap[e]!).toList(),
      'consumable': instance.consumable,
      'runtimeType': instance.$type,
    };
