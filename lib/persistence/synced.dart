import 'package:built_collection/built_collection.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'hive_manager.dart';

class SyncedList<K> {
  final Box<K> _box;
  final BuiltList<K> list;

  SyncedList.load(
    BoxKey boxName,
  )   : _box = HiveManager.getBox<K>(boxName),
        list = HiveManager.getBox<K>(boxName).values.toBuiltList();

  SyncedList._rebuild(this._box, this.list);

  SyncedList<K> rebuild(Function(SyncedListBuilder<K>) updates) {
    final builder = SyncedListBuilder<K>(list.toBuilder(), _box);
    updates.call(builder);
    return SyncedList._rebuild(_box, builder.build());
  }

  operator [](int index) => list[index];
  int get length => list.length;
}

class SyncedListBuilder<K> {
  final Box<K> _box;
  final ListBuilder<K> _listBuilder;

  SyncedListBuilder(this._listBuilder, this._box);

  operator [](int index) => _listBuilder[index];

  void operator []=(int index, element) {
    _box.put(index, element);
    _listBuilder[index] = element;
  }

  void add(value) {
    _box.add(value);
    _listBuilder.add(value);
  }

  void addAll(Iterable<K> iterable) {
    _box.addAll(iterable);
    _listBuilder.addAll(iterable);
  }

  BuiltList<K> build() => _listBuilder.build();
}

class SyncedSet<K> {
  final Box<String> _box;
  final BuiltSet<K> set;
  final String Function(K) _convert;

  SyncedSet.load(BoxKey boxName,
      {required String Function(K) convert,
      required Set<K> Function(Iterable<String>) loadFunction})
      : _box = HiveManager.getBox<String>(boxName),
        set = loadFunction(HiveManager.getBox<String>(boxName).values).build(),
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
      : _box = HiveManager.getBox<MapEntry<StoreK, StoreV>>(boxName),
        map = loadFunction(
                HiveManager.getBox<MapEntry<StoreK, StoreV>>(boxName).values)
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
