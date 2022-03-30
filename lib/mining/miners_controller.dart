import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/game_management/game_clock.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/inventory/inventory_events.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/persistence/hive_manager.dart';
import 'package:mining_game/persistence/synced.dart';
import 'package:mining_game/planet/planet_controller.dart';
import 'package:mining_game/planet/point.dart';
import 'package:quiver/collection.dart';

import 'miner_events.dart';
import 'miners.dart';

final minersProvider =
    StateNotifierProvider<MinerInstancesNotifier, Miners>((ref) {
  return MinerInstancesNotifier(ref.watch(gameEventManagerProvider),
      ref.watch(inventoryStateProvider.notifier));
});

class MinerLocations {
  final BuiltList<MinerInstance> storedMiners;
  // It would be great if this was read only
  final BiMap<MinerInstance, PlanetPoint> activeMiners;

  const MinerLocations(this.storedMiners, this.activeMiners);
}

final minerLocationsProvider = Provider<MinerLocations>((ref) {
  final activeMinerMapping = ref.watch(activeMinerLocationsProvider).miners;
  final activeMinerIds = activeMinerMapping.keys.toSet();
  final storedMiners = <MinerInstance>[];
  final activeMiners = BiMap<MinerInstance, PlanetPoint>();

  for (final miner in ref.watch(minersProvider).miners.values) {
    if (activeMinerIds.contains(miner.id)) {
      activeMiners[miner] = activeMinerMapping[miner.id]!;
    } else {
      storedMiners.add(miner);
    }
  }
  return MinerLocations(storedMiners.build(), activeMiners);
});

final activeMinerLocationsProvider =
    StateNotifierProvider<ActiveMinerLocationsNotifier, ActiveMiners>((ref) {
  return ActiveMinerLocationsNotifier(
      ref.watch(minersProvider.notifier),
      ref.watch(gameEventManagerProvider),
      ref.watch(gameClockProvider),
      ref.watch(planetControllerProvider.notifier),
      ActiveMiners(SyncedMap.loadSimpleSyncedMap<ItemInstanceId, PlanetPoint>(
          BoxKey.activeMiners)));
});

class ActiveMinerLocationsNotifier extends StateNotifier<ActiveMiners> {
  final MinerInstancesNotifier _minersNotifier;
  final GameEventManager _eventStreamManager;
  final PlanetController _planetController;
  final GameClock _gameClock;

  ActiveMinerLocationsNotifier(this._minersNotifier, this._eventStreamManager,
      this._gameClock, this._planetController, ActiveMiners activeMiners)
      : super(activeMiners) {
    _eventStreamManager.streamForEventType<ActiveMinerEvent>().listen((event) {
      switch (event.type) {
        case ActiveMinerEventType.ACTIVATE_MINER:
          _handleActivateMinerEvent(event);
          break;
        case ActiveMinerEventType.DEACTIVATE_MINER:
          _handleDeactivateMinerEvent(event);
          break;
      }
    });

    _gameClock.schedulePeriodicAction(1, _processGameTick);
  }

  void _processGameTick() {
    for (var entry in state.miners.entries) {
      final point = entry.value;
      final miner = _minersNotifier.getMiner(entry.key);
      if (miner == null) {
        print('Miner not found when processing game tick?');
        return;
      }
      if (miner.definition.baseHopperSize <
          miner.hopper.items.values.fold(0, (p, c) => p + c)) return;
      final resources = _planetController.dig(
          point, ItemContainer.single(ItemKeys.IRON, miner.totalDamage));
      if (resources.empty) return;
      // This should probably be owned in the miners notifier.
      _minersNotifier.state = _minersNotifier.state.rebuild(addOrUpdate: {
        miner.id: miner.copyWith(hopper: miner.hopper + resources)
      });
    }
  }

  void _handleActivateMinerEvent(ActiveMinerEvent event) {
    event as ActivateMinerEvent;
    final miner = event.miner;
    state = state.rebuild(addOrUpdate: {miner.id: event.point});
  }

  void _handleDeactivateMinerEvent(ActiveMinerEvent event) {
    event as DeactivateMinerEvent;
    state = state.rebuild(
        remove: {state.miners.keys.firstWhere((key) => key == event.miner.id)});
  }
}

/// Manges all auto miners and notifies when the miners collection changes.
class MinerInstancesNotifier extends StateNotifier<Miners> {
  final GameEventManager _gameEventManager;

  final InventoryStateController _inventoryController;

  MinerInstancesNotifier(this._gameEventManager, this._inventoryController)
      : super(Miners(
            SyncedMap.loadSimpleSyncedMap<ItemInstanceId, MinerInstance>(
                BoxKey.miners))) {
    _gameEventManager.streamForEventType<MinerEvent>().listen((event) {
      switch (event.type) {
        case MinerEventType.NEW_MINER:
          _createMinerEvent(event);
          break;
        case MinerEventType.DRILL_ATTACH:
          _drillAttach(event);
          break;
        case MinerEventType.DRILL_REMOVE:
          _drillRemove(event);
          break;
        case MinerEventType.COLLECT_HOPPER:
          moveMinerHopperToInventory(event);
          break;
      }
    });
  }

  MinerInstance? getMiner(ItemInstanceId id) => state.miners[id];

  void _createMinerEvent(MinerEvent event) {
    event as CreateMinerEvent;
    final miner = _createNewStoredMiner(event.minerId);
    state = state.rebuild(addOrUpdate: {miner.id: miner});
  }

  MinerInstance _createNewStoredMiner(MinerItemId minerId) => MinerInstance(
      id: ItemInstanceId.generate(),
      itemId: minerId,
      hopper: ItemContainer.empty());

  void _drillAttach(MinerEvent event) {
    event as DrillAttachEvent;
    final drillKey = event.drillId;
    final drill = ItemContainer.single(drillKey, 1);
    if (_inventoryController.canRemove(drill)) {
      _gameEventManager.addEvent(RemoveItemsInventoryEvent(container: drill));
      _updateMinerWithDrill(event.miner, drillKey);
    }
  }

  void _drillRemove(MinerEvent event) {
    event as DrillRemoveEvent;
    final drillId = event.miner.drillId;
    if (drillId == null) return;
    _gameEventManager
        .addEvent(AddItemInventoryEvent(itemId: drillId, quantity: 1));
    _updateMinerWithDrill(event.miner, null);
  }

  void _updateMinerWithDrill(MinerInstance miner, ItemDefinitionId? drill) {
    state =
        state.rebuild(addOrUpdate: {miner.id: miner.copyWith(drillId: drill)});
  }

  void moveMinerHopperToInventory(MinerEvent event) {
    event as CollectHopperMinerEvent;
    final miner = event.miner;
    state = state.rebuild(
        addOrUpdate: {miner.id: miner.copyWith(hopper: ItemContainer.empty())});
    _gameEventManager.addEvent(AddItemsInventoryEvent(container: miner.hopper));
  }
}
