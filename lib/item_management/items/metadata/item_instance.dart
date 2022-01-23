import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'item_proto.dart';

part 'item_instance.freezed.dart';
part 'item_instance.g.dart';

abstract class Creatable<SelfT, InstanceT> {
  InstanceT create(InstanceId id);
}

@freezed
class InstanceId with _$InstanceId {
  const InstanceId._();

  @HiveType(typeId: 15, adapterName: 'InstanceIdAdapter')
  const factory InstanceId(@HiveField(0) int id) = _InstanceId;
}

abstract class ItemInstance<ProtoT extends ItemProto> {
  InstanceId get instanceId;
  ProtoT get proto;
  const ItemInstance();

  factory ItemInstance.create(ProtoT proto, InstanceId id) {
    throw 'w';
  }
}
