import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventory2.dart';
import 'package:mining_game/item_management/item_directory.dart';

import 'shop_listing_definitions.dart';

final storeControllerProvider =
    StateNotifierProvider<StoreController, StoreListings>(
        (ref) => StoreController(ref.watch(inventoryStateProvider2.notifier)));

class StoreListings {
  final BuiltList<ShopListing> listings;

  StoreListings(this.listings);

  StoreListings rebuild(Function(ListBuilder<ShopListing>) updates) =>
      StoreListings(listings.rebuild(updates));
}

class StoreController extends StateNotifier<StoreListings> {
  final InventoryStateController2 _inventory;

  StoreListings get store => state;

  set store(StoreListings store) => state = store;

  StoreController(
    this._inventory,
  ) : super(StoreListings(<ShopListing>[].build())) {
    void initStore() async {
      state = StoreListings(await ItemDirectory.parseJsonList(
          'assets/json/store_listings.json', ShopListing.fromJson));
    }

    initStore();
  }

  bool canBuy(BuyShopListing listing) =>
      _inventory.meetsRequirements(listing.price);

  bool canSellItemListing(SellItemsShopListing listing) =>
      _inventory.meetsRequirements(listing.items);

  void clickListing(ShopListing listing) {
    bool handleBuyListing(BuyShopListing buyListing, void Function() after) {
      if (!canBuy(buyListing)) return false;
      _inventory.subtractItemRequirement(buyListing.price);
      if (buyListing.consumable) {
        state = state.rebuild((p0) => p0.remove(buyListing));
      }
      after();
      return true;
    }

    final success = listing.map(
        buyItem: (listing) => handleBuyListing(listing, () {
              _inventory.addItemWithGenerator(listing.generator);
            }),
        sellItems: (listing) {
          if (!canSellItemListing(listing)) return false;
          _inventory.subtractItemRequirement(listing.items);
          _inventory.addItemWithGenerator(listing.sellPrice);
          if (listing.consumable) {
            state = state.rebuild((p0) => p0.remove(listing));
          }
          return true;
        });
    if (success) {
      // _gameEventManager.addEvent(StoreTransactionEvent(listing));
    }
  }
}
