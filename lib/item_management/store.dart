import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/mining/auto_mining_manager.dart';
import 'package:mining_game/planet/planet_tile.dart';

import 'inventory.dart';

final storeProvider = Provider((ref) => Store(
    ref.watch(inventoryStateProvider.notifier),
    ref.watch(gameEventManagerProvider)));

class Store {
  final InventoryController _inventory;
  final GameEventManager _gameEventManager;

  Store(this._inventory, this._gameEventManager);

  void buyAutoMiner(PlanetTile planetTile) {
    if (!_tryBuyAndPay(10)) return;
    _gameEventManager.addForEventType(NewMinerEvent(planetTile: planetTile));
  }

  void updateAutoMiner(PlanetTile planetTile) {
    if (!_tryBuyAndPay(5)) return;
    _gameEventManager.addForEventType(
        UpgradeMinerEvent(planetTile: planetTile, damageIncrease: 1));
  }

  bool _tryBuyAndPay(int cost) {
    if (_inventory.iron < cost) return false;
    _inventory.removeIron(cost);
    return true;
  }
}
