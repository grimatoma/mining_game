import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/items/item_container.dart';

part 'shop_listing_definitions.freezed.dart';
part 'shop_listing_definitions.g.dart';

abstract class ShopListingInterface {
  bool get consumable;
}

enum BuyingShopListingType {
  ITEM_STACK,
  MINER,
}

abstract class BuyShopListing extends ShopListingInterface {
  BuyingShopListingType get type;
  ItemContainer get price;
}

abstract class SellShopListing extends ShopListingInterface {
  ItemContainer get sellPrice;
  ItemContainer get items;
}

@freezed
class ShopListing with _$ShopListing implements ShopListingInterface {
  @Implements<BuyShopListing>()
  const factory ShopListing.buyItemStack({
    required int id,
    @Default(BuyingShopListingType.ITEM_STACK) BuyingShopListingType type,
    required ItemContainer price,
    @Default(true) bool consumable,
    required ItemId itemId,
    required int quantity,
  }) = BuyItemStackShopListing;

  @Implements<BuyShopListing>()
  const factory ShopListing.buyMiner({
    required int id,
    @Default(BuyingShopListingType.MINER) BuyingShopListingType type,
    required ItemContainer price,
    @Default(true) bool consumable,
    required MinerId minerId,
  }) = BuyMinerShopListing;

  @Implements<SellShopListing>()
  const factory ShopListing.sell({
    required int id,
    @Default(true) bool consumable,
    required ItemContainer sellPrice,
    required ItemContainer items,
  }) = SellItemShopListing;

  factory ShopListing.fromJson(Map<String, dynamic> json) =>
      _$ShopListingFromJson(json);
}
