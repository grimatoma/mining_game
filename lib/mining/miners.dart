import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mining_game/garage_controller.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';

import 'miner.dart';
import 'miners_controller.dart';

//
// class MinersV2 {
//   // var _nextMinerKey = 0;
//   late BoxSyncedMap<MapEntry<PlanetPoint, int>> activeLocations;
//   late BoxSyncedMap<StoredMinerInstance> miners; // TODO remove active concept;
//
//   final streamController = StreamController<void>.broadcast();
//   Stream<MinersV2> get stream =>
//       streamController.stream.debounce(Duration.zero).map((event) => this);
//
//   MinersV2() {
//     void init() async {
//       activeLocations = await BoxSyncedMap.init('activeMinerLocations');
//       activeLocations.stream.listen((event) => streamController.add(null));
//
//       miners = await BoxSyncedMap.init('miners');
//       miners.stream.listen((event) => streamController.add(null));
//       // _nextMinerKey =
//       //     miners.keys.reduce((value, element) => min(value, element)) + 1;
//     }
//
//     init();
//   }
// }
//
class ActiveMiners {
  final SyncedMap<PlanetPoint, MinerInstance, PlanetPoint, InstanceId>
      _syncedMap;
  ActiveMiners(this._syncedMap);

  BuiltMap<PlanetPoint, MinerInstance> get miners => _syncedMap.map;

  bool hasMiner(PlanetTile planetTile) => miners.containsKey(planetTile.point);

  // ActiveMiners rebuildSingle(
  //         {PlanetPoint? addOrUpdateKey,
  //         MinerInstance? addOrUpdateValue,
  //         PlanetPoint? removeKey}) =>
  //     ActiveMiners(_syncedMap.rebuildSingle(
  //         addOrUpdateKey: addOrUpdateKey,
  //         addOrUpdateValue: addOrUpdateValue,
  //         removeKey: removeKey));

  ActiveMiners rebuild({
    Map<PlanetPoint, MinerInstance>? addOrUpdate,
    Iterable<PlanetPoint>? remove,
  }) =>
      ActiveMiners(
          _syncedMap.rebuild(addOrUpdate: addOrUpdate, remove: remove));
}

//
class Miners {
  // late SyncedMap<PlanetPoint, ActiveMinerInstance> activeLocations;
  final SyncedMap<InstanceId, MinerInstance, InstanceId, MinerInstance>
      _syncedMap;
  // late SyncedMap<InstanceId, StoredMinerInstance> stored;

  Miners(this._syncedMap);

  BuiltMap<InstanceId, MinerInstance> get miners => _syncedMap.map;

  // Miners rebuildSingle(
  //     {InstanceId? addOrUpdateKey,
  //       MinerInstance? addOrUpdateValue,
  //       InstanceId? removeKey}) =>
  //     Miners(_syncedMap.rebuildSingle(
  //         addOrUpdateKey: addOrUpdateKey,
  //         addOrUpdateValue: addOrUpdateValue,
  //         removeKey: removeKey));

  Miners rebuild({
    Map<InstanceId, MinerInstance>? addOrUpdate,
    Iterable<InstanceId>? remove,
  }) =>
      Miners(_syncedMap.rebuild(addOrUpdate: addOrUpdate, remove: remove));
}

// Miners rebuildSingle({
//   ActiveMinerInstance? addOrUpdateActive,
//   ActiveMinerInstance? removeActive,
//   StoredMinerInstance? addOrUpdateStored,
//   StoredMinerInstance? removeStored,
// }) =>
//     rebuild(
//         addOrUpdateActive:
//             addOrUpdateActive != null ? [addOrUpdateActive] : null,
//         removeActive: removeActive != null ? [removeActive] : null,
//         addOrUpdateStored:
//             addOrUpdateStored != null ? [addOrUpdateStored] : null,
//         removeStored: removeStored != null ? [removeStored] : null);
// Miners rebuild({
//   Iterable<ActiveMinerInstance>? addOrUpdateActive,
//   Iterable<ActiveMinerInstance>? removeActive,
//   Iterable<StoredMinerInstance>? addOrUpdateStored,
//   Iterable<StoredMinerInstance>? removeStored,
// }) {
//   return Miners(
//       active: active.cheapRebuild(addOrUpdateActive, removeActive),
//       stored: stored.cheapRebuild(addOrUpdateStored, removeStored));
// }

// extension MapUpdate<ValueT extends MinerInstance>
//     on BuiltMap<InstanceId, ValueT> {
//   BuiltMap<InstanceId, ValueT> cheapRebuild(
//       Iterable<ValueT>? addOrUpdate, Iterable<ValueT>? remove) {
//     if (addOrUpdate != null || remove != null) {
//       return rebuild((p0) {
//         if (addOrUpdate != null) {
//           for (final update in addOrUpdate) {
//             p0[update.id] = update;
//           }
//         }
//         if (remove != null) {
//           for (final update in remove) {
//             p0.remove(update.id);
//           }
//         }
//       });
//     }
//     return this;
//   }
// }

// class BoxSyncedMap<ValueT> {
//   final Box<ValueT> _box;
//
//   static Future<BoxSyncedMap<ValueT>> init<int, ValueT>(String path) async {
//     final box = await MinerHiveManager.openBox<ValueT>(path);
//     return BoxSyncedMap._init(box);
//   }
//
//   BoxSyncedMap._init(this._box);
//
//   Stream<void> get stream => _box.watch().map((event) => null);
//
//   void add(ValueT value) => _box.add(value);
//   void put(int key, ValueT value) => _box.put(key, value);
//   void putAll(Map<int, ValueT> entries) => _box.putAll(entries);
//   void remove(int key) => _box.delete(key.toString());
//   void removeAll(Iterable<int> keys) => _box.deleteAll(keys);
//
//   Iterable<ValueT> get values => _box.values;
//   Iterable<int> get keys => _box.keys.cast<int>();
// }

enum BoxKey {
  activeMiners,
  miners,
  GARAGE,
}

class MinerHiveManager {
  static final openedBoxes = <BoxKey, Box>{};
  static Box<T> getBox<T>(BoxKey key) {
    print('getting box for $key');
    return openedBoxes[key] as Box<T>;
  }

  static Future<void> init() async {
    final futures = <Future>[];
    for (final key in BoxKey.values) {
      switch (key) {
        case BoxKey.activeMiners:
          futures.add(Hive.openBox<MapEntry<PlanetPoint, InstanceId>>(key.name)
              .then((value) => openedBoxes[key] = value));
          break;
        case BoxKey.miners:
          futures.add(
              Hive.openBox<MapEntry<InstanceId, MinerInstance>>(key.name)
                  .then((value) => openedBoxes[key] = value));
          break;
        case BoxKey.GARAGE:
          futures.add(Hive.openBox<MapEntry<int, SlotState>>(key.name)
              .then((value) => openedBoxes[key] = value));
          break;
      }
    }
    await Future.wait(futures);
  }

  static void clearAll() {
    for (final box in openedBoxes.values) {
      box.deleteFromDisk();
    }
  }
}
