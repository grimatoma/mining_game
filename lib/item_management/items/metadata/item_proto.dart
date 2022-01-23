import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'item_proto.freezed.dart';
part 'item_proto.g.dart';

@freezed
class ItemId with _$ItemId {
  @HiveType(typeId: 16, adapterName: 'ItemIdAdapter')
  const factory ItemId(@HiveField(0) String id) = _ItemId;
}

abstract class ItemProto {
  ItemId get itemId;
  String get name;
  String get description;

  const ItemProto();
}
