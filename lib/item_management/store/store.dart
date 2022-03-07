import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/inventory_events.dart';
import 'package:mining_game/item_management/store/store_events.dart';
import 'package:mining_game/mining/miner_events.dart';

import 'shop_listing_definitions.dart';

final storeControllerProvider =
    StateNotifierProvider<StoreController, StoreListings>((ref) =>
        StoreController(ref.watch(inventoryStateProvider.notifier),
            ref.watch(gameEventManagerProvider)));

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
  ) : super(StoreListings(<ShopListing>[].build())) {
    void poo() async {
      final json = await rootBundle.loadString('json/store_listings.json');
      final jsonMapArray = jsonDecode(json) as Iterable;

      state = StoreListings(
          jsonMapArray.map((e) => ShopListing.fromJson(e)).toBuiltList());
    }

    poo();
  }

  bool canBuy(BuyShopListing listing) => _inventory.canRemove(listing.price);
  bool canSell(SellShopListing listing) => _inventory.canRemove(listing.items);

  void clickListing(ShopListing listing) {
    bool handleBuyListing(BuyShopListing l, void Function() after) {
      if (!canBuy(l)) return false;
      _gameEventManager.addEvent(RemoveItemsInventoryEvent(container: l.price));
      if (l.consumable) {
        state = state.rebuild((p0) => p0.remove(l));
      }
      after();
      return true;
    }

    final success = listing.map(
        buyItemStack: (listing) => handleBuyListing(listing, () {
              _gameEventManager.addEvent(AddItemInventoryEvent(
                  key: listing.itemKey, quantity: listing.quantity));
            }),
        buyMiner: (listing) => handleBuyListing(listing, () {
              _gameEventManager.addEvent(CreateMinerEvent(listing.minerId));
            }),
        sell: (listing) {
          if (!canSell(listing)) return false;
          _gameEventManager
              .addEvent(RemoveItemsInventoryEvent(container: listing.items));
          _gameEventManager
              .addEvent(AddItemsInventoryEvent(container: listing.sellPrice));
          if (listing.consumable) {
            state = state.rebuild((p0) => p0.remove(listing));
          }
          return true;
        });
    if (success) {
      _gameEventManager.addEvent(StoreTransactionEvent(listing));
    }
  }
}
