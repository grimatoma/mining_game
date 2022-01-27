import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/items/metadata/item_proto.dart';
import 'package:mining_game/item_management/resources/resource_container.dart';

part 'shop_listings.freezed.dart';

abstract class ShopListing {
  ResourceContainer get cost;
  bool get consumable;
  const ShopListing();
}

// @freezed
// class ItemInstanceShopListing extends ShopListing
//     with _$ItemInstanceShopListing {
//   const ItemInstanceShopListing._();
//
//   const factory ItemInstanceShopListing(
//       {required InstanceId instanceId,
//       required ResourceContainer cost}) = _ItemInstanceShopListing;
//
//   ItemInstance get item => ItemDatabaseManager.itemInstances[instanceId]!;
// }

@freezed
class ItemProtoShopListing extends ShopListing with _$ItemProtoShopListing {
  const ItemProtoShopListing._();

  const factory ItemProtoShopListing(
      {required ItemId itemId,
      required ResourceContainer cost,
      @Default(true) bool consumable}) = _ItemProtoShopListing;
}

@freezed
class ItemStackShopListing extends ShopListing with _$ItemStackShopListing {
  const ItemStackShopListing._();

  const factory ItemStackShopListing(
      {required ItemId itemId,
      required int quantity,
      required ResourceContainer cost,
      @Default(true) bool consumable}) = _ItemStackShopListing;
}
