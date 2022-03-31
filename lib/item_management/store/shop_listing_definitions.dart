import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/item_definition.dart';

part 'shop_listing_definitions.freezed.dart';
part 'shop_listing_definitions.g.dart';

abstract class ShopListingInterface {
  bool get consumable;
}

abstract class BuyShopListing extends ShopListingInterface {
  ItemRequirement get price;
}

abstract class SellShopListing extends ShopListingInterface {
  ItemInstanceGenerator get sellPrice;
}

@freezed
class ShopListing with _$ShopListing implements ShopListingInterface {
  // @Implements<BuyShopListing>()
  // const factory ShopListing.buyItems({
  //   required int id,
  //   required ItemRequirement price,
  //   @Default(true) bool consumable,
  //   required ItemInstanceGenerator generator,
  // }) = BuyItemsShopListing;

  @Implements<BuyShopListing>()
  const factory ShopListing.buyItem({
    required int id,
    required ItemRequirement price,
    @Default(true) bool consumable,
    required ItemInstanceGenerator generator,
  }) = BuyItemShopListing;

  // @Implements<BuyShopListing>()
  // const factory ShopListing.buyMiner({
  //   required int id,
  //   @Default(BuyingShopListingType.MINER) BuyingShopListingType type,
  //   required ItemRequirement price,
  //   @Default(true) bool consumable,
  //   required MinerItemId minerId,
  // }) = BuyMinerShopListing;

  @Implements<SellShopListing>()
  const factory ShopListing.sellItems({
    required int id,
    @Default(true) bool consumable,
    required ItemInstanceGenerator sellPrice,
    required ItemRequirement items,
  }) = SellItemsShopListing;

  factory ShopListing.fromJson(Map<String, dynamic> json) =>
      _$ShopListingFromJson(json);
}
