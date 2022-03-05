import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/mining/miner.dart';

part 'shop_listing_definitions.freezed.dart';

abstract class ShopListing {
  bool get consumable;

  const ShopListing();
}

enum BuyingShopListingType {
  ITEM_STACK,
  MINER,
}

abstract class BuyShopListing extends ShopListing {
  BuyingShopListingType get type;
  ItemContainer get price;

  const BuyShopListing();
}

@freezed
class BuyItemStackShopListing extends BuyShopListing
    with _$BuyItemStackShopListing {
  const BuyItemStackShopListing._();

  @override
  final type = BuyingShopListingType.ITEM_STACK;

  const factory BuyItemStackShopListing(
      {required ItemKey itemKey,
      required int quantity,
      required ItemContainer price,
      @Default(true) bool consumable}) = _BuyItemStackShopListing;
}

@freezed
class BuyMinerShopListing extends BuyShopListing with _$BuyMinerShopListing {
  const BuyMinerShopListing._();
  @override
  final type = BuyingShopListingType.MINER;

  const factory BuyMinerShopListing(
      {required MinerDefinition definition,
      required ItemContainer price,
      @Default(true) bool consumable}) = _BuyMinerShopListing;
}

class SellShopListing extends ShopListing {
  final ItemContainer sellPrice;
  final ItemContainer items;
  @override
  final bool consumable;

  SellShopListing(
      {required this.sellPrice, required this.items, this.consumable = false});
}
