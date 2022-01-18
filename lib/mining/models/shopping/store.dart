import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/mining/inventory.dart';
import 'package:mining_game/mining/models/auto_miner.dart';
import 'package:mining_game/mining/models/auto_mining_manager.dart';
import 'package:mining_game/mining/models/event_manager/game_event_manager.dart';
import 'package:mining_game/mining/models/planet_tile.dart';

final storeProvider = Provider((ref) => Store(ref.watch(inventoryProvider), ref.watch(gameEventManagerProvider)));

class Store {
  final Inventory _inventory;
  final GameEventManager _gameEventManager;

  Store(this._inventory, this._gameEventManager);

  void buyAutoMiner(PlanetTile planetTile) {
    if (_tryBuy(10)) return;
    _gameEventManager.addForEventType(NewMinerEvent(planetTile: planetTile));
  }

  void updateAutoMiner(PlanetTile planetTile) {
    if (_tryBuy(5)) return;
    _gameEventManager.addForEventType(
        UpgradeMinerEvent(planetTile: planetTile, damageIncrease: 1));
  }

  bool _tryBuy(int cost) {
    if (_inventory.iron < cost) return false;
    _inventory.iron -= cost;
    return true;
  }
}
