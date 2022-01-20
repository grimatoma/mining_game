import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/items.dart';

import 'wallet.dart';

final storeStateProvider =
    StateNotifierProvider<Store, BuiltList<ShopItem>>((ref) => Store(
        ref.watch(walletStateProvider.notifier),
        ref.watch(inventoryStateProvider.notifier),
        ref.watch(gameEventManagerProvider),
        [
          const ShopItem(
              item: Miner(
                  id: 1,
                  name: 'Junk Miner',
                  description:
                      'Salavaged from a garage sale. Barely functional and guzzles gas',
                  radius: 1,
                  depth: 1,
                  damage: 1,
                  hopperSize: 50,
                  fuelConsumption: 5),
              cost: Resources(iron: 50)),
          const ShopItem(
              item: Miner(
                  id: 2,
                  name: 'Basic Miner',
                  description: 'Generic off the shelf miner',
                  radius: 2,
                  depth: 1,
                  damage: 2,
                  hopperSize: 100,
                  fuelConsumption: 5),
              cost: Resources(iron: 250))
        ].build()));

class Store extends StateNotifier<BuiltList<ShopItem>> {
  final WalletController _wallet;
  final InventoryController _inventory;
  final GameEventManager _gameEventManager;
  BuiltList<ShopItem> get storeItems => state;

  Store(this._wallet, this._inventory, this._gameEventManager,
      BuiltList<ShopItem> items)
      : super(items);

  bool canBuyItem(ShopItem item) => _wallet.canRemove(item.cost);
  bool buyItem(ShopItem shopItem) {
    if (_wallet.canRemove(shopItem.cost)) {
      _wallet.remove(shopItem.cost);
      state = state.rebuild((p0) => p0.remove(shopItem));
      _inventory.addItem(shopItem.item);

      _gameEventManager.addEvent(PurchasedItemEvent(shopItem));
      return true;
    }
    return false;
  }
}

enum StoreEvents {
  PURCHASED_ITEM,
}

class PurchasedItemEvent extends GameEvent<StoreEvents> {
  PurchasedItemEvent(this.shopItem) : item = shopItem.item;

  @override
  StoreEvents get type => StoreEvents.PURCHASED_ITEM;

  final ShopItem shopItem;
  final Item item;
}
