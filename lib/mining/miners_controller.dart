import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/event_manager.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/game_management/game_clock.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/persistence.dart';
import 'package:mining_game/planet/planet_controller.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';

import 'miner.dart';
import 'miner_events.dart';
import 'miners.dart';

final minersControllerProvider =
    StateNotifierProvider<MinersController, Miners>((ref) {
  return MinersController(
      ref.watch(gameEventManagerProvider),
      ref.watch(gameClockProvider),
      ref.watch(planetControllerProvider.notifier),
      ref.watch(inventoryStateProvider.notifier));
});

final storedMinersProvider =
    Provider.autoDispose<BuiltMap<InstanceId, StoredMinerInstance>>(
        (ref) => ref.watch(minersControllerProvider).stored);
final activeMinerLocationsProvider =
    Provider.autoDispose<BuiltMap<PlanetPoint, ActiveMinerInstance>>(
        (ref) => ref.watch(minersControllerProvider).activeLocations);
final activeMinersProvider =
    Provider.autoDispose<BuiltMap<InstanceId, ActiveMinerInstance>>(
        (ref) => ref.watch(minersControllerProvider).active);

/// Manges all auto miners and notifies when the miners collection changes.
class MinersController extends StateNotifier<Miners> {
  final EventStreamManager _eventStreamManager;
  final PlanetController _planetController;
  final GameClock _gameClock;
  final InventoryStateController _inventoryController;

  Miners get activeAutoMiners => state;

  set activeAutoMiners(Miners activeAutoMiners) => state = activeAutoMiners;

  MinersController(this._eventStreamManager, this._gameClock,
      this._planetController, this._inventoryController)
      : super(Miners.empty()) {
    void loadInitialData() async {
      final installedMinersBox = await Hive.openBox<ActiveMinerInstance>(
          DatabaseName.installedMiners000p.name);
      final storedMinersBox = await Hive.openBox<StoredMinerInstance>(
          DatabaseName.storedMiners000p.name);
      state = state.rebuild(addOrUpdateActive: {
        for (final miner in installedMinersBox.values)
          // Regenerate the id on each load.
          miner.copyWith(id: InstanceId.generate())
      }, addOrUpdateStored: {
        for (final miner in storedMinersBox.values)
          // Regenerate the id on each load.
          miner.copyWith(id: InstanceId.generate())
      });
    }

    void updateBox() async {
      final installedMinersBox = await Hive.openBox<ActiveMinerInstance>(
          DatabaseName.installedMiners000p.name);
      final storedMinersBox = await Hive.openBox<StoredMinerInstance>(
          DatabaseName.storedMiners000p.name);
      stream.listen((event) {
        installedMinersBox
          ..clear()
          ..addAll(event.active.values)
          ..flush();
        storedMinersBox
          ..clear()
          ..addAll(event.stored.values)
          ..flush();
      });
    }

    loadInitialData();
    updateBox();

    _eventStreamManager
        .streamForEventType<AutoMiningManagerEvent>()
        .listen((event) {
      switch (event.type) {
        case MinerEventTypes.INSTALL_AUTO_MINER:
          _installMinerEvent(event);
          break;

        case MinerEventTypes.STORE_MINER:
          _storeMinerEvent(event);
          break;
        case MinerEventTypes.CREATE_MINER:
          _createMinerEvent(event);
          break;
        case MinerEventTypes.DRILL_ATTACH:
          _drillAttach(event);
          break;
        case MinerEventTypes.DRILL_REMOVE:
          _drillRemove(event);
          break;
        case MinerEventTypes.COLLECT_HOPPER:
          moveMinerHopperToInventory(event);
          break;
      }
    });
    _gameClock.schedulePeriodicAction(1, _processGameTick);
  }

  void _processGameTick() {
    for (var miner in activeAutoMiners.active.values) {
      dig(miner);
    }
  }

  void dig(ActiveMinerInstance miner) {
    if (miner.definition.baseHopperSize < miner.hopper.items.values.sum) return;
    final resources = _planetController.dig(miner.planetPoint,
        ItemContainer.single(ItemKey.IRON, miner.totalDamage));
    if (resources.empty) return;
    state = state.rebuildSingle(
        addOrUpdateActive: miner.copyWith(hopper: miner.hopper + resources));
  }

  void moveMinerHopperToInventory(AutoMiningManagerEvent event) {
    event as CollectHopperMinerEvent;
    final miner = event.miner;
    _inventoryController.add(miner.hopper);
    state = state.rebuildSingle(
        addOrUpdateActive: miner.copyWith(hopper: ItemContainer.empty()));
  }

  void _installMinerEvent(AutoMiningManagerEvent event) {
    event as InstallAutoMinerEvent;
    final miner = event.miner;
    state = state.rebuildSingle(
        addOrUpdateActive: ActiveMinerInstance(
            id: miner.id,
            definition: miner.definition,
            planetPoint: event.point,
            drillItemId: miner.drillItemId,
            hopper: ItemContainer.empty()),
        removeStored: miner);
  }

  void _createMinerEvent(AutoMiningManagerEvent event) {
    event as CreateMinerEvent;
    activeAutoMiners = state.rebuildSingle(
        addOrUpdateStored: _createNewStoredMiner(event.definition));
  }

  StoredMinerInstance _createNewStoredMiner(MinerDefinition definition) =>
      StoredMinerInstance(id: InstanceId.generate(), definition: definition);

  void _storeMinerEvent(AutoMiningManagerEvent event) {
    event as StoreMinerEvent;
    final miner = event.miner;
    activeAutoMiners = activeAutoMiners.rebuildSingle(
        removeActive: miner,
        addOrUpdateStored: StoredMinerInstance(
            id: miner.id,
            definition: miner.definition,
            drillItemId: miner.drillItemId));
  }

  void _drillAttach(AutoMiningManagerEvent event) {
    event as DrillAttachEvent;
    final drillKey = event.drillId;
    if (_inventoryController.tryRemove(ItemContainer.single(drillKey, 1))) {
      _updateMinerWithDrill(event.miner, drillKey);
    }
  }

  void _drillRemove(AutoMiningManagerEvent event) {
    event as DrillRemoveEvent;
    final drillId = event.miner.drillItemId;
    if (drillId == null) return;
    _inventoryController.addItem(drillId, 1);
    _updateMinerWithDrill(event.miner, null);
  }

  void _updateMinerWithDrill(MinerInstance miner, ItemKey? drill) {
    if (miner is ActiveMinerInstance) {
      activeAutoMiners = activeAutoMiners.rebuildSingle(
          addOrUpdateActive: miner.copyWith(drillItemId: drill));
    } else if (miner is StoredMinerInstance) {
      activeAutoMiners = activeAutoMiners.rebuildSingle(
          addOrUpdateStored: miner.copyWith(drillItemId: drill));
    }
  }

  bool hasMiner(PlanetTile planetTile) =>
      activeAutoMiners.activeLocations.containsKey(planetTile);
}
