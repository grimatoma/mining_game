// import 'dart:convert';
//
// import 'package:built_collection/built_collection.dart';
// import 'package:hive/hive.dart';
// import 'package:mining_game/persistence/hive_manager.dart';
// import 'package:mining_game/persistence/synced.dart';
//
// // part 'hive_tester.g.dart';
//
// typedef FromJson<ItemT> = ItemT Function(Map<String, dynamic> json);
//
// abstract class HiveStorage<ItemT> {
//   late final Box<String> _box;
//   final FromJson<ItemT> fromJson;
//
//   HiveStorage(BoxKey boxName, this.fromJson)
//       : _box = HiveManager.getBox<String>(boxName);
//
//   void store(ItemT item, {dynamic key}) {
//     if (key != null) {
//       _box.put(key, json.encode(item));
//     } else {
//       _box.add(json.encode(item));
//     }
//   }
//
//   bool containsKey(dynamic index) => _box.containsKey(index);
//
//   void delete(dynamic index) => _box.delete(index);
//
//   void put(dynamic index, ItemT item) => store(item, key: index);
//
//   void deleteAll(Iterable<dynamic> keys) => _box.deleteAll(keys);
// }
//
// class HiveStorageNonNullable<ItemT> extends HiveStorage<ItemT> {
//   HiveStorageNonNullable(super.boxName, super.fromJson);
//
//   ItemT get(dynamic key) =>
//       fromJson(json.decode(_box.get(key, defaultValue: "")!));
//
//   BuiltMap<dynamic, ItemT> toMap() {
//     final map = _box.toMap();
//     return map.map((key, value) => MapEntry(key, get(key))).build();
//   }
// }
//
// class HiveStorageNullable<ItemT> extends HiveStorage<ItemT?> {
//   HiveStorageNullable(super.boxName, super.fromJson);
//
//   ItemT? get(dynamic key) {
//     if (_box.get(key, defaultValue: "") == 'null') {
//       print('is null');
//       return null;
//     }
//     var q = fromJson(json.decode(_box.get(key, defaultValue: "")!));
//     print(q);
//     return q;
//   }
//
//   BuiltMap<dynamic, ItemT?> toMap() {
//     final map = _box.toMap();
//     return map.map((key, value) => MapEntry(key, get(key))).build();
//   }
// }
//
// class SyncedList2<K> {
//   final HiveStorageNullable<K?> _box;
//   late final BuiltMap<int, K?> list;
//
//   SyncedList2.load(BoxKey boxKey, FromJson<K> fromJson)
//       : _box = HiveStorageNullable(boxKey, fromJson) {
//     try {
//       list = _box.toMap().map((p0, p1) => MapEntry(p0, p1));
//     } catch (e) {
//       print('Failed to parse box contents. $e');
//     }
//   }
//
//   SyncedList2._rebuild(this._box, this.list);
//
//   SyncedListBuilder<K?> rebuild(UpdateSyncedList<K> update) {
//     final builder = SyncedListBuilder<K?>(list.toBuilder());
//     update.call(builder);
//     return builder;
//   }
//
//   SyncedList2<K> syncWithBuilder(SyncedListBuilder<K> builder) {
//     final newList = builder.build();
//     for (final index in builder.changedIndexes) {
//       if (!newList.containsKey(index) && _box.containsKey(index)) {
//         _box.delete(index);
//       } else {
//         _box.put(index, builder[index]);
//       }
//     }
//     return SyncedList2._rebuild(_box, newList);
//   }
//
//   K? operator [](int index) => list[index];
//
//   int get length => list.length;
// }
//
// class SyncedMap2<K, V> {
//   final FromJson<K>? _keyFromJson;
//   final Map<String, dynamic> Function(K)? _keyToJson;
//   final FromJson<V> _valueFromJson;
//   final HiveStorageNonNullable<V> _box;
//
//   late final BuiltMap<K, V> map;
//
//   SyncedMap2.load(BoxKey boxName, this._valueFromJson,
//       {FromJson<K>? keyFromJson, Map<String, dynamic> Function(K)? keyToJson})
//       : _keyFromJson = keyFromJson,
//         _keyToJson = keyToJson,
//         _box = HiveStorageNonNullable(boxName, _valueFromJson) {
//     try {
//       map = _box.toMap().map((p0, p1) {
//         final key = _keyFromJson != null ? _keyFromJson!(json.decode(p0)) : p0;
//         return MapEntry(key, p1);
//       });
//     } catch (e) {
//       print('Failed to parse box contents. $e');
//     }
//   }
//
//   SyncedMap2._rebuild(this._box, this.map, this._valueFromJson,
//       this._keyFromJson, this._keyToJson);
//
//   SyncedMap2<K, V> rebuild({
//     Map<K, V>? addOrUpdate,
//     Iterable<K>? remove,
//   }) {
//     return SyncedMap2<K, V>._rebuild(_box, map.rebuild((p0) {
//       // Add a check for primartive types
//       dynamic safeKey(K key) =>
//           _keyToJson != null ? _keyToJson!(key).toString() : key;
//       void safePut(K key, V value) {
//         _box.put(safeKey, value);
//       }
//
//       if (addOrUpdate != null) {
//         addOrUpdate.forEach((key, value) {
//           safePut(key, value);
//           p0[key] = value;
//         });
//       }
//       if (remove != null) {
//         for (final key in remove) {
//           _box.delete(safeKey(key));
//           p0.remove(key);
//         }
//       }
//     }), _valueFromJson, _keyFromJson, _keyToJson);
//   }
// }
