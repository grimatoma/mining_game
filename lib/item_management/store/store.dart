import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/inventory_events.dart';
import 'package:mining_game/mining/miner_events.dart';

import 'shop_listing_definitions.dart';
import 'store_listings.dart';

final storeControllerProvider =
    StateNotifierProvider<StoreController, StoreListings>((ref) =>
        StoreController(ref.watch(inventoryStateProvider.notifier),
            ref.watch(gameEventManagerProvider), StoreListings(storeListings)));

class StoreListings {
  final BuiltList<ShopListing> listings;

  StoreListings(this.listings);

  StoreListings rebuild(Function(ListBuilder<ShopListing>) updates) =>
      StoreListings(listings.rebuild(updates));
}

class StoreController extends StateNotifier<StoreListings> {
  final GameEventManager _gameEventManager;
  final InventoryStateController _inventory;
  StoreListings get store => state;
  set store(StoreListings store) => state = store;

  StoreController(
    this._inventory,
    this._gameEventManager,
    StoreListings store,
  ) : super(store);

  bool canUseSellListing(SellingShopListing listing) =>
      _inventory.canRemove(listing.cost);

  void clickSellListing(SellingShopListing listing) {
    if (canUseSellListing(listing)) {
      _gameEventManager
          .addEvent(RemoveItemsInventoryEvent(container: listing.cost));
      if (listing.consumable) {
        state = state.rebuild((p0) => p0.remove(listing));
      }
      switch (listing.type) {
        case SellingShopListingType.ITEM_STACK:
          listing as ItemStackShopListing;
          _gameEventManager.addEvent(AddItemInventoryEvent(
              key: listing.itemKey, quantity: listing.quantity));
          break;
        case SellingShopListingType.MINER:
          listing as MinerShopListing;
          _gameEventManager.addEvent(CreateMinerEvent(listing.definition));
          break;
      }
    }
  }

  bool canUseBuyListing(BuyingShopListing listing) =>
      _inventory.canRemove(listing.items);
  void clickBuyListing(BuyingShopListing listing) {
    if (canUseBuyListing(listing)) {
      _inventory.remove(listing.items);
      if (listing.consumable) {
        state = state.rebuild((p0) => p0.remove(listing));
      }
      _inventory.add(listing.sellPrice);
    }
  }
}
