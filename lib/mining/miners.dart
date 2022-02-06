import 'package:built_collection/built_collection.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/planet/point.dart';

import 'miner.dart';

class Miners {
  final BuiltMap<PlanetPoint, ActiveMinerInstance> activeLocations;
  final BuiltMap<InstanceId, ActiveMinerInstance> active;
  final BuiltMap<InstanceId, StoredMinerInstance> stored;

  Miners({required this.active, required this.stored})
      : activeLocations = {
          for (var i in active.entries) i.value.planetPoint: i.value
        }.build();
  Miners.empty()
      : active = BuiltMap(),
        stored = BuiltMap(),
        activeLocations = BuiltMap();

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
}

extension MapUpdate<ValueT extends MinerInstance>
    on BuiltMap<InstanceId, ValueT> {
  BuiltMap<InstanceId, ValueT> cheapRebuild(
      Iterable<ValueT>? addOrUpdate, Iterable<ValueT>? remove) {
    if (addOrUpdate != null || remove != null) {
      return rebuild((p0) {
        if (addOrUpdate != null) {
          for (final update in addOrUpdate) {
            p0[update.id] = update;
          }
        }
        if (remove != null) {
          for (final update in remove) {
            p0.remove(update.id);
          }
        }
      });
    }
    return this;
  }
}
