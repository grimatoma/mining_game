import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/event_manager.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/game_management/game_clock.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/items/miner.dart';
import 'package:mining_game/item_management/resources/resources.dart';
import 'package:mining_game/item_management/wallet.dart';
import 'package:mining_game/persistence.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';

final activeMinersControllerProvider =
    StateNotifierProvider<ActiveMinersController, ActiveMiners>((ref) {
  return ActiveMinersController(
      ref.watch(gameEventManagerProvider),
      ref.watch(gameClockProvider),
      ref.watch(walletControllerProvider.notifier),
      ref.watch(planetControllerProvider.notifier),
      ref.watch(inventoryProvider.notifier),
      ref.watch(dataStorageControllerProvider));
});

class ActiveMiners {
  final BuiltMap<PlanetPoint, MinerInstance> miners;

  const ActiveMiners(this.miners);
  ActiveMiners._empty() : miners = BuiltMap();

  ActiveMiners rebuild(
          Function(MapBuilder<PlanetPoint, MinerInstance>) updates) =>
      ActiveMiners(miners.rebuild(updates));
}

/// Manges all auto miners and notifies when the miners collection changes.
class ActiveMinersController extends StateNotifier<ActiveMiners> {
  final EventStreamManager _eventStreamManager;
  final PlanetController _planetController;
  final GameClock _gameClock;
  final WalletController _walletController;
  final InventoryController _inventoryController;

  ActiveMiners get activeAutoMiners => state;
  set activeAutoMiners(ActiveMiners activeAutoMiners) =>
      state = activeAutoMiners;

  ActiveMinersController(
      this._eventStreamManager,
      this._gameClock,
      this._walletController,
      this._planetController,
      this._inventoryController,
      DataStorageController controller)
      : super(ActiveMiners._empty()) {
    void loadInitialData() async {
      final loadedBox =
          await Hive.openBox<MinerInstance>(DatabaseName.installedMiners.name);
      for (final miner in loadedBox.values) {
        _addMiner(miner);
      }
    }

    void updateBox() async {
      final loadedBox =
          await Hive.openBox<MinerInstance>(DatabaseName.installedMiners.name);
      stream.listen((event) {
        loadedBox.clear();
        for (final miner in event.miners.values) {
          loadedBox.put(miner.instanceId.toString(), miner);
        }
      });
    }

    loadInitialData();
    updateBox();

    _eventStreamManager
        .streamForEventType<AutoMiningManagerEvent>()
        .listen((event) {
      switch (event.type) {
        case AutoMiningManagerEvents.INSTALL_AUTO_MINER:
          _installMinerEvent(event);
          break;
        // case AutoMiningManagerEvents.UPGRADE_MINER:
        //   _upgradeMiner(event);
        //   break;
        case AutoMiningManagerEvents.STORE_MINER:
          _storeMinerEvent(event);
          break;
      }
    });
    _gameClock.schedulePeriodicAction(1, _processGameTick);
  }

  void _processGameTick() {
    activeAutoMiners.miners.forEach((point, miner) {
      dig(point,
          ResourceContainer({Resources.iron: miner.proto.baseDamage}.build()));
    });
  }

  void dig(PlanetPoint point, ResourceContainer damage) {
    _walletController.add(_planetController.dig(point, damage));
  }

  void _installMinerEvent(AutoMiningManagerEvent event) {
    event as InstallAutoMinerEvent;

    if (_inventoryController.removeItemInstance(event.miner)) {
      _addMiner(event.miner, event.point);
    }
  }

  void _addMiner(MinerInstance minerInstance, [PlanetPoint? point]) {
    final newMiner = minerInstance.copyWith(planetPoint: point);
    final resolvedPoint = point ?? (minerInstance.planetPoint as PlanetPoint);

    activeAutoMiners =
        activeAutoMiners.rebuild((p0) => p0[resolvedPoint] = newMiner);
  }

  void _storeMinerEvent(AutoMiningManagerEvent event) {
    event as StoreMinerEvent;

    activeAutoMiners = activeAutoMiners
        .rebuild((p0) => p0.removeWhere((_, miner) => miner == event.miner));
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

  final PlanetPoint point;
  final MinerInstance miner;

  InstallAutoMinerEvent({required this.miner, required this.point});
}

class StoreMinerEvent extends AutoMiningManagerEvent {
  @override
  final type = AutoMiningManagerEvents.STORE_MINER;

  final MinerInstance miner;

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
