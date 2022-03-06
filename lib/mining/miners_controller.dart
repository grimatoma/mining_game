import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/game_management/game_clock.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/inventory_events.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/planet/planet_controller.dart';
import 'package:mining_game/planet/point.dart';
import 'package:quiver/collection.dart';

import 'miner.dart';
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
      ActiveMiners(SyncedMap.loadSimpleSyncedMap<InstanceId, PlanetPoint>(
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
          point, ItemContainer.single(ItemKey.IRON, miner.totalDamage));
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
      : super(Miners(SyncedMap.loadSimpleSyncedMap<InstanceId, MinerInstance>(
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

  MinerInstance? getMiner(InstanceId id) => state.miners[id];

  void _createMinerEvent(MinerEvent event) {
    event as CreateMinerEvent;
    final miner = _createNewStoredMiner(event.definition);
    state = state.rebuild(addOrUpdate: {miner.id: miner});
  }

  MinerInstance _createNewStoredMiner(MinerDefinition definition) =>
      MinerInstance(
          id: InstanceId.generate(),
          definition: definition,
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
    final drillId = event.miner.drillItemId;
    if (drillId == null) return;
    _gameEventManager
        .addEvent(AddItemInventoryEvent(key: drillId, quantity: 1));
    _updateMinerWithDrill(event.miner, null);
  }

  void _updateMinerWithDrill(MinerInstance miner, ItemKey? drill) {
    state = state
        .rebuild(addOrUpdate: {miner.id: miner.copyWith(drillItemId: drill)});
  }

  void moveMinerHopperToInventory(MinerEvent event) {
    event as CollectHopperMinerEvent;
    final miner = event.miner;
    state = state.rebuild(
        addOrUpdate: {miner.id: miner.copyWith(hopper: ItemContainer.empty())});
    _gameEventManager.addEvent(AddItemsInventoryEvent(container: miner.hopper));
  }
}

class SyncedSet<K> {
  final Box<String> _box;
  final BuiltSet<K> set;
  final String Function(K) _convert;

  SyncedSet.load(BoxKey boxName,
      {required String Function(K) convert,
      required Set<K> Function(Iterable<String>) loadFunction})
      : _box = MinerHiveManager.getBox<String>(boxName),
        set = loadFunction(MinerHiveManager.getBox<String>(boxName).values)
            .build(),
        _convert = convert;

  SyncedSet._rebuild(this._box, this.set, this._convert);

  SyncedSet<K> rebuild({
    Set<K>? addOrUpdate,
    Iterable<K>? remove,
  }) {
    return SyncedSet<K>._rebuild(_box, set.rebuild((p0) {
      if (addOrUpdate != null) {
        for (var value in addOrUpdate) {
          _box.put(_convert(value), _convert(value));
          p0.add(value);
        }
      }
      if (remove != null) {
        _box.deleteAll(remove.map((e) {
          p0.remove(e);
          return _convert(e);
        }));
      }
    }), _convert);
  }
}

class SyncedMap<K, V, StoreK, StoreV> {
  final Box<MapEntry<StoreK, StoreV>> _box;
  final BuiltMap<K, V> map;
  final MapEntry<StoreK, StoreV> Function(K, V) _convert;

  static SyncedMap<K, V, K, V> loadSimpleSyncedMap<K, V>(BoxKey boxName) =>
      SyncedMap<K, V, K, V>.load(boxName,
          convert: (k, v) => MapEntry(k, v),
          loadFunction: (entries) => {
                for (final entry in entries) entry.key: entry.value,
              });

  SyncedMap.load(BoxKey boxName,
      {required MapEntry<StoreK, StoreV> Function(K, V) convert,
      required Map<K, V> Function(Iterable<MapEntry<StoreK, StoreV>>)
          loadFunction})
      : _box = MinerHiveManager.getBox<MapEntry<StoreK, StoreV>>(boxName),
        map = loadFunction(
                MinerHiveManager.getBox<MapEntry<StoreK, StoreV>>(boxName)
                    .values)
            .build(),
        _convert = convert;

  SyncedMap._rebuild(this._box, this.map, this._convert);

  SyncedMap<K, V, StoreK, StoreV> rebuild({
    Map<K, V>? addOrUpdate,
    Iterable<K>? remove,
  }) {
    return SyncedMap<K, V, StoreK, StoreV>._rebuild(_box, map.rebuild((p0) {
      if (addOrUpdate != null) {
        addOrUpdate.forEach((key, value) {
          _box.put(key.toString(), _convert(key, value));
          p0[key] = value;
        });
      }
      if (remove != null) {
        _box.deleteAll(remove.map((e) {
          p0.remove(e);
          return e.toString();
        }));
      }
    }), _convert);
  }
}

class MapEntryAdapter<KeyT, ValueT>
    extends TypeAdapter<MapEntry<KeyT, ValueT>> {
  @override
  final int typeId;

  MapEntryAdapter(this.typeId);

  @override
  MapEntry<KeyT, ValueT> read(BinaryReader reader) {
    return MapEntry(reader.read(), reader.read());
  }

  @override
  void write(BinaryWriter writer, MapEntry<KeyT, ValueT> obj) {
    writer.write(obj.key);
    writer.write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MapEntryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
