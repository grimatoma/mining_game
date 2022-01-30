import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/inventory.dart';
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

  bool canBuyItem(ShopListing listing) => _inventory.canRemove(listing.cost);
  bool buyItem(ShopListing listing) {
    if (_inventory.canRemove(listing.cost)) {
      _inventory.remove(listing.cost);
      if (listing.consumable) {
        state = state.rebuild((p0) => p0.remove(listing));
      }
      if (listing is ItemStackShopListing) {
        _inventory.addItem(listing.itemKey, listing.quantity);
      } else if (listing is MinerShopListing) {
        _gameEventManager.addEvent(CreateMinerEvent(listing.definition));
      } else {
        print('TYPE UNKNOWN FOR SHOP!');
      }
      return true;
    }
    return false;
  }
}
