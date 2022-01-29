import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';

class BuiltMapAdapter<KeyT, ValueT>
    extends TypeAdapter<BuiltMap<KeyT, ValueT>> {
  @override
  final int typeId;

  BuiltMapAdapter(this.typeId);

  @override
  BuiltMap<KeyT, ValueT> read(BinaryReader reader) {
    return BuiltMap(Map.from(reader.readMap()));
  }

  @override
  void write(BinaryWriter writer, BuiltMap<KeyT, ValueT> obj) {
    writer.writeMap(obj.toMap());
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BuiltMapAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
