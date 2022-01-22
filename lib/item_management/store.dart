import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/items.dart';

import 'wallet.dart';

final storeListingsControllerProvider =
    StateNotifierProvider<StoreController, StoreListings>(
        (ref) => StoreController(
            ref.watch(walletControllerProvider.notifier),
            ref.watch(inventoryProvider.notifier),
            StoreListings([
              const InstantiatableItemShopListing(
                  itemId: ItemId(4), cost: Resources(iron: 50)),
              // const ItemInstanceShopListing(
              //     instanceId: InstanceId(5), cost: Resources(iron: 50)),
              // const ItemInstanceShopListing(
              //     instanceId: InstanceId(6), cost: Resources(iron: 250))
            ].build())));

class StoreListings {
  final BuiltList<ShopListing> items;

  StoreListings(this.items);

  StoreListings rebuild(Function(ListBuilder<ShopListing>) updates) =>
      StoreListings(items.rebuild(updates));
}

class StoreController extends StateNotifier<StoreListings> {
  final WalletController _wallet;
  final InventoryController _inventory;
  StoreListings get store => state;
  set store(StoreListings store) => state = store;

  StoreController(this._wallet, this._inventory, StoreListings store)
      : super(store);

  bool canBuyItem(ShopListing listing) => _wallet.canRemove(listing.cost);
  bool buyItem(ShopListing listing) {
    if (_wallet.canRemove(listing.cost)) {
      _wallet.remove(listing.cost);
      state = state.rebuild((p0) => p0.remove(listing));

      if (listing is ItemInstanceShopListing) {
        _inventory.addItemInstance(listing.item);
      } else {
        print('TYPE UNKNOWN FOR SHOP!');
      }
      // } else (listing is InstantiatableItemShopListing) {
      //   // ItemDatabas
      //   int e = 2;
      // }
      // // switch (listing.runtimeType) {
      //   case ItemInstanceShopListing:
      //
      //     break;
      //   default:
      //     print('TYPE UNKNOWN FOR SHOP!');
      // }
      // _gameEventManager.addEvent(PurchasedItemEvent(listing));
      return true;
    }
    return false;
  }
}

// enum StoreEvents {
//   PURCHASED_ITEM,
// }
//
// class PurchasedItemEvent extends GameEvent<StoreEvents> {
//   PurchasedItemEvent(this.shopItem) : item = shopItem.item;
//
//   @override
//   StoreEvents get type => StoreEvents.PURCHASED_ITEM;
//
//   final InstantiatableShopItem shopItem;
//   final ItemBase item;
// }
