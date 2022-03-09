import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mining_game/garage_controller.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';

import 'miners_controller.dart';

class ActiveMiners {
  final SyncedMap<InstanceId, PlanetPoint, InstanceId, PlanetPoint> _syncedMap;
  ActiveMiners(this._syncedMap);

  BuiltMap<InstanceId, PlanetPoint> get miners => _syncedMap.map;

  bool hasMiner(PlanetTile planetTile) => miners.containsKey(planetTile.point);

  ActiveMiners rebuild({
    Map<InstanceId, PlanetPoint>? addOrUpdate,
    Iterable<InstanceId>? remove,
  }) =>
      ActiveMiners(
          _syncedMap.rebuild(addOrUpdate: addOrUpdate, remove: remove));
}

class Miners {
  final SyncedMap<InstanceId, MinerInstance, InstanceId, MinerInstance>
      _syncedMap;

  Miners(this._syncedMap);

  BuiltMap<InstanceId, MinerInstance> get miners => _syncedMap.map;
  MinerInstance? getMiner(InstanceId id) => miners[id];

  Miners rebuild({
    Map<InstanceId, MinerInstance>? addOrUpdate,
    Iterable<InstanceId>? remove,
  }) =>
      Miners(_syncedMap.rebuild(addOrUpdate: addOrUpdate, remove: remove));
}

enum BoxKey {
  activeMiners,
  miners,
  GARAGE,
  FEATURES,
}
const keyIncrement = '6';

class MinerHiveManager {
  static final openedBoxes = <BoxKey, Box>{};
  static Box<T> getBox<T>(BoxKey key) {
    print('getting box for $key');
    return openedBoxes[key] as Box<T>;
  }

  static Future<void> init() async {
    final futures = <Future>[];
    for (final key in BoxKey.values) {
      final boxName = key.name + keyIncrement;
      switch (key) {
        case BoxKey.activeMiners:
          Hive.registerAdapter(MapEntryAdapter<InstanceId, PlanetPoint>(56));
          futures.add(Hive.openBox<MapEntry<InstanceId, PlanetPoint>>(boxName)
              .then((value) => openedBoxes[key] = value));
          break;
        case BoxKey.miners:
          Hive.registerAdapter(MapEntryAdapter<InstanceId, MinerInstance>(55));
          futures.add(Hive.openBox<MapEntry<InstanceId, MinerInstance>>(boxName)
              .then((value) => openedBoxes[key] = value));
          break;
        case BoxKey.GARAGE:
          Hive.registerAdapter(MapEntryAdapter<int, SlotState>(57));
          futures.add(Hive.openBox<MapEntry<int, SlotState>>(boxName)
              .then((value) => openedBoxes[key] = value));
          break;
        case BoxKey.FEATURES:
          futures.add(Hive.openBox<String>(boxName)
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
