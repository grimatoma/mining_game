import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/event_manager.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/game_management/game_clock.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/items.dart';
import 'package:mining_game/item_management/wallet.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';

import 'auto_miner.dart';

final miningControllerProvider =
    StateNotifierProvider<MiningController, ActiveAutoMiners>((ref) {
  return MiningController(
      ref.watch(gameEventManagerProvider),
      ref.watch(gameClockProvider),
      ref.watch(walletControllerProvider.notifier),
      ref.watch(planetControllerProvider.notifier),
      ref.watch(inventoryProvider.notifier));
});

class ActiveAutoMiners {
  final BuiltMap<PlanetTile, AutoMiner> miners;

  const ActiveAutoMiners(this.miners);
  ActiveAutoMiners._empty() : miners = BuiltMap();

  ActiveAutoMiners rebuild(
          Function(MapBuilder<PlanetTile, AutoMiner>) updates) =>
      ActiveAutoMiners(miners.rebuild(updates));
}

/// Manges all auto miners and notifies when the miners collection changes.
class MiningController extends StateNotifier<ActiveAutoMiners> {
  final EventStreamManager _eventStreamManager;
  final PlanetController _planetController;
  final GameClock _gameClock;
  final WalletController _walletController;
  final InventoryController _inventoryController;

  ActiveAutoMiners get activeAutoMiners => state;
  set activeAutoMiners(ActiveAutoMiners activeAutoMiners) =>
      state = activeAutoMiners;

  MiningController(this._eventStreamManager, this._gameClock,
      this._walletController, this._planetController, this._inventoryController)
      : super(ActiveAutoMiners._empty()) {
    _eventStreamManager
        .streamForEventType<AutoMiningManagerEvent>()
        .listen((event) {
      switch (event.type) {
        case AutoMiningManagerEvents.INSTALL_AUTO_MINER:
          _installMiner(event);
          break;
        // case AutoMiningManagerEvents.UPGRADE_MINER:
        //   _upgradeMiner(event);
        //   break;
        case AutoMiningManagerEvents.STORE_MINER:
          _storeMiner(event);
          break;
      }
    });
    _gameClock.schedulePeriodicAction(1, _processGameTick);
  }

  void _processGameTick() {
    for (final miner in activeAutoMiners.miners.values) {
      dig(miner.planetTile.point, Resources(iron: miner.damage));
    }
  }

  void dig(PlanetPoint point, Resources damage) {
    _walletController.add(_planetController.dig(point, damage));
  }

  void _installMiner(AutoMiningManagerEvent event) {
    event as InstallAutoMinerEvent;

    if (_inventoryController.removeItem(event.miner)) {
      final newMiner = AutoMiner.fromMinerItem(event.miner, event.planetTile);

      activeAutoMiners =
          activeAutoMiners.rebuild((p0) => p0[event.planetTile] = newMiner);
    }
  }

  void _storeMiner(AutoMiningManagerEvent event) {
    event as StoreMinerEvent;

    activeAutoMiners = activeAutoMiners.rebuild(
        (p0) => p0.removeWhere((key, value) => value.miner == event.miner));
  }

  // void _upgradeMiner(AutoMiningManagerEvent event) {
  //   event as UpgradeMinerEvent;
  //   // Interesting question, How do I know that the tile is in a valid location?
  //   // If it doesn't exist then I already paid for the upgrade.
  //   miners[event.planetTile]?.damage += event.damageIncrease;
  // }

  bool hasMiner(PlanetTile planetTile) =>
      activeAutoMiners.miners.containsKey(planetTile);
}

abstract class AutoMiningManagerEvent
    extends GameEvent<AutoMiningManagerEvents> {
  @override
  AutoMiningManagerEvents get type;
}

enum AutoMiningManagerEvents {
  INSTALL_AUTO_MINER,
  // UPGRADE_MINER,
  STORE_MINER
}

class InstallAutoMinerEvent extends AutoMiningManagerEvent {
  @override
  final type = AutoMiningManagerEvents.INSTALL_AUTO_MINER;

  final PlanetTile planetTile;
  final Miner miner;

  InstallAutoMinerEvent({required this.miner, required this.planetTile});
}

class StoreMinerEvent extends AutoMiningManagerEvent {
  @override
  final type = AutoMiningManagerEvents.STORE_MINER;

  final Miner miner;

  StoreMinerEvent(this.miner);
}

// class UpgradeMinerEvent extends AutoMiningManagerEvent {
//   @override
//   final type = AutoMiningManagerEvents.UPGRADE_MINER;
//
//   final PlanetTile planetTile;
//   final int damageIncrease;
//
//   UpgradeMinerEvent({required this.planetTile, required this.damageIncrease});
// }
