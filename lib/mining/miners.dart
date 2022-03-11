import 'package:built_collection/built_collection.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/persistence/synced.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';

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
