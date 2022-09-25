import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/doodads/base/doodad_id.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/requirement.dart';

part 'shop_listing_definitions.freezed.dart';

part 'shop_listing_definitions.g.dart';

abstract class ShopListingInterface {
  bool get consumable;
}

@freezed
class ShopListing with _$ShopListing implements ShopListingInterface {
  // const factory ShopListing.singleItemListing({
  //   required int id,
  //   required ItemContainer2 cost,
  //   required ItemDefinitionId item,
  //   @Default(true) bool consumable,
  // }) = SingleItemShopListing;

  const factory ShopListing.itemListing({
    required int id,
    required ItemContainer cost,
    required ItemDefinitionId item,
    @Default(true) bool consumable,
    @Default(1) int quantity,
  }) = ItemShopListing;

  const factory ShopListing.doodadListing({
    required int id,
    required ItemContainer cost,
    required DoodadId doodadId,
    Set<Feature>? requiredFeatures,
    @Default(true) bool consumable,
  }) = DoodadShopListing;

  const factory ShopListing.featureListing({
    required int id,
    required ItemContainer cost,
    required Feature feature,
    Set<Feature>? requiredFeatures,
    @Default(true) bool consumable,
  }) = FeatureShopListing;

  factory ShopListing.fromJson(Map<String, dynamic> json) =>
      _$ShopListingFromJson(json);
}
