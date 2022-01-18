
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/mining/models/event_manager/game_event_manager.dart';
import 'package:mining_game/mining/models/mining/auto_mining_manager.dart';
import 'package:mining_game/mining/models/mining/planet_tile.dart';
import 'package:mining_game/mining/models/shopping/inventory.dart';

final storeProvider = Provider((ref) => Store(ref.watch(inventoryProvider), ref.watch(gameEventManagerProvider)));

class Store {
  final Inventory _inventory;
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
