import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/inventory/item_container.dart';
import 'package:mining_game/inventory/item_directory.dart';
import 'package:mining_game/mining/auto_mining_manager.dart';

part 'shop_listings.freezed.dart';

abstract class ShopListing {
  ItemContainer get cost;
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

// @freezed
// class ItemProtoShopListing extends ShopListing with _$ItemProtoShopListing {
//   const ItemProtoShopListing._();
//
//   const factory ItemProtoShopListing(
//       {required ItemKey itemKey,
//       required ItemContainer cost,
//       @Default(true) bool consumable}) = _ItemProtoShopListing;
// }

@freezed
class ItemStackShopListing extends ShopListing with _$ItemStackShopListing {
  const ItemStackShopListing._();

  const factory ItemStackShopListing(
      {required ItemKey itemKey,
      required int quantity,
      required ItemContainer cost,
      @Default(true) bool consumable}) = _ItemStackShopListing;
}

@freezed
class MinerShopListing extends ShopListing with _$MinerShopListing {
  const factory MinerShopListing(
      {required MinerDefinition definition,
      required ItemContainer cost,
      @Default(true) bool consumable}) = _MinerShopListing;
}
