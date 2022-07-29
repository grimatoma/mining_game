import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/persistence/hive_manager.dart';
import 'package:mining_game/persistence/synced.dart';

// part 'hive_tester.g.dart';

typedef FromJson<ItemT> = ItemT Function(Map<String, dynamic> json);

class HiveStorage<ItemT> {
  late final Box<String> _box;
  final FromJson<ItemT> fromJson;

  HiveStorage(BoxKey boxName, this.fromJson)
      : _box = HiveManager.getBox<String>(boxName);

  // Future<void> init() async {
  // ;
  // }

  void store(ItemT item, {dynamic key}) {
    if (key != null) {
      _box.put(key, json.encode(item));
    } else {
      _box.add(json.encode(item));
    }
  }

  // void storeNullable(ItemT? item, {String? key}) {
  //   if (key != null) {
  //     _box.put(key, json.encode(item));
  //   } else {
  //     _box.add(json.encode(item));
  //   }
  // }

  // make nullable verson.
  ItemT? get(dynamic key) {
    if (_box.get(key, defaultValue: "") == 'null') {
      print('is null');
      return null;
    }
    var q = fromJson(json.decode(_box.get(key, defaultValue: "")!));
    print(q);
    return q;
  }

  bool containsKey(dynamic index) => _box.containsKey(index);

  void delete(dynamic index) => _box.delete(index);

  void put(dynamic index, ItemT item) => store(item, key: index);

  BuiltMap<dynamic, ItemT?> toMap() {
    final map = _box.toMap();
    return map.map((key, value) => MapEntry(key, get(key))).build();
  }
}

class SyncedList2<K> {
  final HiveStorage<K?> _box;
  late final BuiltMap<int, K?> list;

  SyncedList2.load(BoxKey boxKey, FromJson<K> fromJson)
      : _box = HiveStorage(boxKey, fromJson) {
    try {
      list = _box.toMap().map((p0, p1) => MapEntry(p0, p1));
    } catch (e) {
      print('Failed to parse box contents. $e');
    }
  }

  SyncedList2._rebuild(this._box, this.list);

  SyncedListBuilder<K?> rebuild(UpdateSyncedList<K> update) {
    final builder = SyncedListBuilder<K?>(list.toBuilder());
    update.call(builder);
    return builder;
  }

  SyncedList2<K> syncWithBuilder(SyncedListBuilder<K> builder) {
    final newList = builder.build();
    for (final index in builder.changedIndexes) {
      if (!newList.containsKey(index) && _box.containsKey(index)) {
        _box.delete(index);
      } else {
        _box.put(index, builder[index]);
      }
    }
    return SyncedList2._rebuild(_box, newList);
  }

  K? operator [](int index) => list[index];

  int get length => list.length;
}
