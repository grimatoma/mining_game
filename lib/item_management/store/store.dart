import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/inventory_events.dart';
import 'package:mining_game/item_management/store/store_events.dart';
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
  ) : super(store) {
    _gameEventManager.streamForEventType<StoreEvent>().listen((event) {
      switch (event.type) {
        case StoreEventType.BUY_LISTING:
          event as BuyStoreEvent;
          _buyListing(event.listing);
          break;
        case StoreEventType.SELL_LISTING:
          event as SellStoreEvent;
          _sellListing(event.listing);
          break;
      }
    });
  }

  bool canBuy(BuyShopListing listing) => _inventory.canRemove(listing.price);
  bool canSell(SellShopListing listing) => _inventory.canRemove(listing.items);

  void _buyListing(BuyShopListing listing) {
    if (canBuy(listing)) {
      _gameEventManager
          .addEvent(RemoveItemsInventoryEvent(container: listing.price));
      if (listing.consumable) {
        state = state.rebuild((p0) => p0.remove(listing));
      }
      switch (listing.type) {
        case BuyingShopListingType.ITEM_STACK:
          listing as BuyItemStackShopListing;
          _gameEventManager.addEvent(AddItemInventoryEvent(
              key: listing.itemKey, quantity: listing.quantity));
          break;
        case BuyingShopListingType.MINER:
          listing as BuyMinerShopListing;
          _gameEventManager.addEvent(CreateMinerEvent(listing.definition));
          break;
      }
    }
  }

  void _sellListing(SellShopListing listing) {
    if (canSell(listing)) {
      _gameEventManager
          .addEvent(RemoveItemsInventoryEvent(container: listing.items));
      _gameEventManager
          .addEvent(AddItemsInventoryEvent(container: listing.sellPrice));
      if (listing.consumable) {
        state = state.rebuild((p0) => p0.remove(listing));
      }
    }
  }
}
