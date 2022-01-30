import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/inventory/inventory.dart';
import 'package:mining_game/inventory/item_container.dart';
import 'package:mining_game/inventory/item_directory.dart';
import 'package:mining_game/mining/auto_mining_manager.dart';

import 'shop_listings.dart';

final storeListingsControllerProvider =
    StateNotifierProvider<StoreController, StoreListings>(
        (ref) => StoreController(
            ref.watch(inventoryStateProvider.notifier),
            ref.watch(gameEventManagerProvider),
            StoreListings(<ShopListing>[
              ItemStackShopListing(
                  itemKey: ItemKey.ROCK,
                  quantity: 5,
                  cost: ItemContainer.create({ItemKey.IRON: 1}),
                  consumable: false),
              ItemStackShopListing(
                  itemKey: ItemKey.TEST_DRILL,
                  quantity: 1,
                  cost: ItemContainer.create({ItemKey.IRON: 15}),
                  consumable: false),
              MinerShopListing(
                  cost: ItemContainer.create({ItemKey.IRON: 5}),
                  definition: const MinerDefinition(
                    name: 'Junk Miner',
                    description:
                        'Salvaged from a garage sale. Barely functional and guzzles gas',
                    radius: 1,
                    depth: 1,
                    baseDamage: 1,
                    baseHopperSize: 50,
                    fuelConsumption: 5,
                  )),
              MinerShopListing(
                  cost: ItemContainer.create({ItemKey.IRON: 5}),
                  definition: const MinerDefinition(
                      name: 'Basic Miner',
                      description: 'Generic off the shelf miner',
                      radius: 2,
                      depth: 1,
                      baseDamage: 2,
                      baseHopperSize: 100,
                      fuelConsumption: 5)),
              MinerShopListing(
                  cost: ItemContainer.create({ItemKey.IRON: 5}),
                  definition: const MinerDefinition(
                      name: 'Test Miner 3',
                      description: 'this is the third miner',
                      radius: 1,
                      depth: 1,
                      baseDamage: 1,
                      baseHopperSize: 50,
                      fuelConsumption: 5)),
              MinerShopListing(
                  cost: ItemContainer.create({ItemKey.IRON: 5}),
                  definition: const MinerDefinition(
                      name: 'Test Miner 4',
                      description: 'this is the 4 miner',
                      radius: 1,
                      depth: 1,
                      baseDamage: 1,
                      baseHopperSize: 50,
                      fuelConsumption: 5)),
              MinerShopListing(
                  cost: ItemContainer.create({ItemKey.IRON: 5}),
                  definition: const MinerDefinition(
                    name: 'Test Miner 5',
                    description: 'this is the 5 miner',
                    radius: 1,
                    depth: 1,
                    baseDamage: 1,
                    baseHopperSize: 50,
                    fuelConsumption: 5,
                  )),
            ].build())));

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
