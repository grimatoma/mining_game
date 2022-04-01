import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/item_definition.dart';

part 'shop_listing_definitions.freezed.dart';
part 'shop_listing_definitions.g.dart';

abstract class ShopListingInterface {
  bool get consumable;
}

abstract class BuyShopListing extends ShopListingInterface {
  ItemRequirement get cost;
}

abstract class SellShopListing extends ShopListingInterface {
  ItemRequirement get cost;
}

@freezed
class ShopListing with _$ShopListing implements ShopListingInterface {
  const factory ShopListing.itemListing({
    required int id,
    required ItemRequirement cost,
    required ItemInstanceGenerator item,
    @Default(true) bool consumable,
  }) = ItemShopListing;

  factory ShopListing.fromJson(Map<String, dynamic> json) =>
      _$ShopListingFromJson(json);
}
