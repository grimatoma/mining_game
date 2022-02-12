import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/mining/miner.dart';

part 'shop_listing_definitions.freezed.dart';

abstract class ShopListing {
  bool get consumable;

  const ShopListing();
}

abstract class SellingShopListing extends ShopListing{
  ItemContainer get cost;

  const SellingShopListing();
}

@freezed
class ItemStackShopListing extends SellingShopListing with _$ItemStackShopListing {
  const ItemStackShopListing._();

  const factory ItemStackShopListing(
      {required ItemKey itemKey,
      required int quantity,
      required ItemContainer cost,
      @Default(true) bool consumable}) = _ItemStackShopListing;
}

@freezed
class MinerShopListing extends SellingShopListing with _$MinerShopListing {
  const factory MinerShopListing(
      {required MinerDefinition definition,
      required ItemContainer cost,
      @Default(true) bool consumable}) = _MinerShopListing;
}

class BuyingShopListing extends ShopListing {
  final ItemContainer sellPrice;
  final ItemContainer items;
  final bool consumable;

  BuyingShopListing({required this.sellPrice,required this.items,this.consumable = false});
}
