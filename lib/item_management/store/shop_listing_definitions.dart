import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/quests/townsfolk_definition.dart';

part 'shop_listing_definitions.freezed.dart';

part 'shop_listing_definitions.g.dart';

abstract class ShopListingInterface {
  bool get consumable;
}

@freezed
class ShopListing with _$ShopListing implements ShopListingInterface {
  // const factory ShopListing.singleItemListing({
  //   required ShopListingDefinitionId id,
  //   required ItemContainer2 cost,
  //   required ItemDefinitionId item,
  //   @Default(true) bool consumable,
  // }) = SingleItemShopListing;

  const factory ShopListing.itemListing({
    required ShopListingDefinitionId id,
    required ItemContainer cost,
    required ItemDefinitionId item,
    @Default(true) bool consumable,
    @Default(1) int quantity,
  }) = ItemShopListing;

  const factory ShopListing.doodadListing({
    required ShopListingDefinitionId id,
    required ItemContainer cost,
    required DoodadDefinitionId doodadId,
    Set<Feature>? requiredFeatures,
    @Default(true) bool consumable,
  }) = DoodadShopListing;

  const factory ShopListing.featureListing({
    required ShopListingDefinitionId id,
    required ItemContainer cost,
    required Feature feature,
    Set<Feature>? requiredFeatures,
    @Default(true) bool consumable,
  }) = FeatureShopListing;

  factory ShopListing.fromJson(Map<String, dynamic> json) =>
      _$ShopListingFromJson(json);
}
