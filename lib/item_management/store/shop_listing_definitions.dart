import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/mining/miner.dart';

part 'shop_listing_definitions.freezed.dart';

abstract class ShopListing {
  ItemContainer get cost;
  bool get consumable;
  const ShopListing();
}

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
