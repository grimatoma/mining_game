import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/model_assets/store_listing_models.dart';
import 'package:mining_game/persistence/hive_manager.dart';

import 'shop_listing_definitions.dart';

enum Shop {
  PLANET_BUY_MENU,
  STORE_MAIN_NAV,
}

final storeMainNavControllerProvider =
    StateNotifierProvider<StoreController, StoreListings>((ref) =>
        StoreController(
            ref.watch(inventoryProvider.notifier), Shop.STORE_MAIN_NAV));
final storePlanetBuyMenuControllerProvider = StateNotifierProvider<
        StoreController<DoodadShopListing>, StoreListings<DoodadShopListing>>(
    (ref) => StoreController<DoodadShopListing>(
        ref.watch(inventoryProvider.notifier), Shop.PLANET_BUY_MENU));

class StoreListings<ListingTypeT extends ShopListing> {
  final BuiltList<ListingTypeT> listings;
  final BuiltSet<int> consumedListing;

  StoreListings(this.listings, this.consumedListing);

  StoreListings<ListingTypeT> rebuild(
          Function(ListBuilder<ShopListing>) updates,
          Function(SetBuilder<int>) setUpdates) =>
      StoreListings(
          listings.rebuild(updates), consumedListing.rebuild(setUpdates));
}

class StoreController<ListingTypeT extends ShopListing>
    extends StateNotifier<StoreListings<ListingTypeT>> {
  final Shop shop;
  final InventoryStateProvider _inventory;

  StoreController(
    this._inventory,
    this.shop,
  ) : super(StoreListings(BuiltList(), BuiltSet())) {
    final BuiltSet<int> consumed = HiveManager.getData(
        BoxKey.CONSUMED_STORE_LISTINGS, (Map<String, dynamic> json) {
      final fromJsonConsumed = json[shop.name];
      if (fromJsonConsumed != null) {
        return intSetFromJson(fromJsonConsumed);
      } else {
        return <int>{}.build();
      }
    }, () => <int>{}.build());
    state = StoreListings<ListingTypeT>(
        getShopListings(shop)
            .where((element) => !consumed.contains(element.id))
            .whereType<ListingTypeT>()
            .toBuiltList(),
        consumed);
  }

  bool canBuy(ShopListing listing) => _inventory.state.canRemove(listing.cost);

  // bool canSellItemListing(SellItemsShopListing listing) =>
  //     _inventory.meetsRequirements(listing.items);

  void clickListing(ShopListing listing) {
    listing.map(
      itemListing: (listing) {
        if (!canBuy(listing)) return;
        _inventory.removeItems(listing.cost);
        if (listing.consumable) {
          state = state.rebuild(
              (p0) => p0.remove(listing), (p0) => p0.add(listing.id));
        }
        _inventory.addItem(listing.item, listing.quantity);
      },
      doodadListing: (DoodadShopListing value) {},
      featureListing: (FeatureShopListing value) {},
    );
  }
}
