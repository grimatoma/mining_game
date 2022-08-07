// import 'package:built_collection/built_collection.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:mining_game/item_management/instance_id.dart';
// import 'package:mining_game/item_management/item_definition.dart';
// import 'package:mining_game/persistence/synced.dart';
// import 'package:mining_game/planet/planet_tile.dart';
// import 'package:mining_game/planet/point.dart';
//
// part 'miners.g.dart';
//
// part 'miners.freezed.dart';

// @freezed
// class FreezedBuiltMap<K, V> with _$FreezedBuiltMap {
//   const FreezedBuiltMap._();
//
//   const factory FreezedBuiltMap(BuiltMap<K, V> map) = _FreezedBuiltMap;
//
//   factory FreezedBuiltMap.fromJson(Map<String, Object?> json) =>
//       _$FreezedBuiltMapFromJson(json);
// }

// @freezed
// class Miners with _$Miners {
//   const Miners._();
//
//   const factory Miners(BuiltMap<ItemInstanceId, PlanetPoint> miners) = _Miners;
//
//     MinerInstance? getMiner(ItemInstanceId id) => miners[id];
//
//   Miners rebuild(Function(MapBuilder<ItemInstanceId, PlanetPoint>) rebuild) =>
//       copyWith(miners: miners.rebuild(rebuild));
// }

// class Miners {
//   final SyncedMap<ItemInstanceId, MinerInstance, ItemInstanceId, MinerInstance>
//   _syncedMap;
//
//   Miners(this._syncedMap);
//
//   BuiltMap<ItemInstanceId, MinerInstance> get miners => _syncedMap.map;
//
//   MinerInstance? getMiner(ItemInstanceId id) => miners[id];
//
//   Miners rebuild({
//     Map<ItemInstanceId, MinerInstance>? addOrUpdate,
//     Iterable<ItemInstanceId>? remove,
//   }) =>
//       Miners(_syncedMap.rebuild(addOrUpdate: addOrUpdate, remove: remove));
// }
