import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_proto.freezed.dart';

@freezed
class ItemId with _$ItemId {
  const factory ItemId(String id) = _ItemId;
}

abstract class ItemProto {
  ItemId get itemId;
  String get name;
  String get description;

  const ItemProto();
}
