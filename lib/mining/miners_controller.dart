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

import 'miner.dart';
import 'miner_events.dart';
import 'miners.dart';

final minersProvider =
    StateNotifierProvider<MinersStateNotifier, Miners>((ref) {
  return MinersStateNotifier(ref.watch(gameEventManagerProvider),
      ref.watch(inventoryStateProvider.notifier));
});

final storedMinersProvider =
    Provider.autoDispose<Iterable<MinerInstance>>((ref) {
  final activeMiners = ref.watch(activeMinersProvider).miners.values;
  return ref
      .watch(minersProvider)
      .miners
      .values
      .where((element) => !activeMiners.contains(element));
});

final activeMinersProvider =
    StateNotifierProvider<ActiveMinersNotifier, ActiveMiners>((ref) {
  final miners = ref.read(minersProvider);
  return ActiveMinersNotifier(
      ref.watch(gameEventManagerProvider),
      ref.watch(gameClockProvider),
      ref.watch(planetControllerProvider.notifier),
      ActiveMiners(
          SyncedMap<PlanetPoint, MinerInstance, PlanetPoint, InstanceId>.load(
              BoxKey.activeMiners,
              convert: (k, v) => MapEntry(k, v.id),
              loadFunction: (db) => {
                    for (final entry in db)
                      if (miners.miners[entry.value] != null)
                        entry.key: miners.miners[entry.value]!,
                  })));
});

class ActiveMinersNotifier extends StateNotifier<ActiveMiners> {
  final GameEventManager _eventStreamManager;
  final PlanetController _planetController;
  final GameClock _gameClock;

  ActiveMinersNotifier(this._eventStreamManager, this._gameClock,
      this._planetController, ActiveMiners activeMiners)
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
      final point = entry.key;
      final miner = entry.value;
      if (miner.definition.baseHopperSize <
          miner.hopper.items.values.fold(0, (p, c) => p + c)) return;
      final resources = _planetController.dig(
          point, ItemContainer.single(ItemKey.IRON, miner.totalDamage));
      if (resources.empty) return;
      state = state.rebuild(addOrUpdate: {
        point: miner.copyWith(hopper: miner.hopper + resources)
      });
    }
  }

  void _handleActivateMinerEvent(ActiveMinerEvent event) {
    event as ActivateMinerEvent;
    final miner = event.miner;
    state = state.rebuild(addOrUpdate: {
      event.point: MinerInstance(
          id: miner.id,
          definition: miner.definition,
          drillItemId: miner.drillItemId,
          hopper: ItemContainer.empty())
    });
  }

  void _handleDeactivateMinerEvent(ActiveMinerEvent event) {
    event as DeactivateMinerEvent;
    state = state.rebuild(remove: {
      state.miners.keys.firstWhere((key) => state.miners[key] == event.miner)
    });
  }
}

/// Manges all auto miners and notifies when the miners collection changes.
class MinersStateNotifier extends StateNotifier<Miners> {
  final GameEventManager _gameEventManager;

  final InventoryStateController _inventoryController;

  MinersStateNotifier(this._gameEventManager, this._inventoryController)
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
    _gameEventManager.addEvent(AddItemsInventoryEvent(container: miner.hopper));
    state = state.rebuild(
        addOrUpdate: {miner.id: miner.copyWith(hopper: ItemContainer.empty())});
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
