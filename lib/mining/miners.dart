import 'package:built_collection/built_collection.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/persistence/synced.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';

class ActiveMiners {
  final SyncedMap<ItemInstanceId, PlanetPoint, ItemInstanceId, PlanetPoint>
      _syncedMap;

  ActiveMiners(this._syncedMap);

  BuiltMap<ItemInstanceId, PlanetPoint> get miners => _syncedMap.map;

  bool hasMiner(PlanetTile planetTile) => miners.containsKey(planetTile.point);

  ActiveMiners rebuild({
    Map<ItemInstanceId, PlanetPoint>? addOrUpdate,
    Iterable<ItemInstanceId>? remove,
  }) =>
      ActiveMiners(
          _syncedMap.rebuild(addOrUpdate: addOrUpdate, remove: remove));
}

class Miners {
  final SyncedMap<ItemInstanceId, MinerInstance, ItemInstanceId, MinerInstance>
      _syncedMap;

  Miners(this._syncedMap);

  BuiltMap<ItemInstanceId, MinerInstance> get miners => _syncedMap.map;

  MinerInstance? getMiner(ItemInstanceId id) => miners[id];

  Miners rebuild({
    Map<ItemInstanceId, MinerInstance>? addOrUpdate,
    Iterable<ItemInstanceId>? remove,
  }) =>
      Miners(_syncedMap.rebuild(addOrUpdate: addOrUpdate, remove: remove));
}
