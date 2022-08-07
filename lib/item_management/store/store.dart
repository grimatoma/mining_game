import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/model_assets/store_listing_models.dart';

import 'shop_listing_definitions.dart';

final storeControllerProvider =
    StateNotifierProvider<StoreController, StoreListings>(
        (ref) => StoreController(ref.watch(inventoryStateProvider.notifier)));

class StoreListings {
  final BuiltList<ShopListing> listings;

  StoreListings(this.listings);

  StoreListings rebuild(Function(ListBuilder<ShopListing>) updates) =>
      StoreListings(listings.rebuild(updates));
}

class StoreController extends StateNotifier<StoreListings> {
  final InventoryStateController _inventory;

  StoreController(
    this._inventory,
  ) : super(StoreListings(<ShopListing>[].build())) {
    void initStore() async {
      state = StoreListings(storeListing.build());
      // state = StoreListings(await ItemDirectory.parseJsonList(
      //     'assets/json/store_listings.json', ShopListing.fromJson));
    }

    initStore();
  }

  bool canBuy(ShopListing listing) =>
      _inventory.meetsRequirements(listing.cost);

  // bool canSellItemListing(SellItemsShopListing listing) =>
  //     _inventory.meetsRequirements(listing.items);

  void clickListing(ShopListing listing) {
    listing.map(itemListing: (listing) {
      if (!canBuy(listing)) return;
      _inventory.subtractItemRequirement(listing.cost);
      if (listing.consumable) {
        state = state.rebuild((p0) => p0.remove(listing));
      }
      _inventory.addItemWithGenerator(listing.item);
    });
  }
}
