import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/item_database.dart';
import 'package:mining_game/item_management/items/metadata/item_proto.dart';
import 'package:mining_game/item_management/resources/resources.dart';

import '../wallet.dart';
import 'shop_listings.dart';

final storeListingsControllerProvider =
    StateNotifierProvider<StoreController, StoreListings>(
        (ref) => StoreController(
            ref.watch(walletControllerProvider.notifier),
            ref.watch(inventoryProvider.notifier),
            StoreListings(<ShopListing>[
              ItemProtoShopListing(
                  itemId: const ItemId('junkMiner'),
                  cost: ResourceContainer({Resources.iron: 1}.build())),
              ItemProtoShopListing(
                  itemId: const ItemId('junkMiner'),
                  cost: ResourceContainer({Resources.iron: 1}.build())),
              ItemProtoShopListing(
                  itemId: const ItemId('junkMiner'),
                  cost: ResourceContainer({Resources.iron: 1}.build())),
              // const ItemInstanceShopListing(
              //     instanceId: InstanceId(5), cost: Resources(iron: 50)),
              // const ItemInstanceShopListing(
              //     instanceId: InstanceId(6), cost: Resources(iron: 250))
            ].build())));

class StoreListings {
  final BuiltList<ShopListing> listings;

  StoreListings(this.listings);

  StoreListings rebuild(Function(ListBuilder<ShopListing>) updates) =>
      StoreListings(listings.rebuild(updates));
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

      if (listing is ItemProtoShopListing) {
        _inventory.addItemInstance(
            ItemDatabaseManager.createInstance(listing.itemId));
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
