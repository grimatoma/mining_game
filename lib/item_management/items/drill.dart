import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'metadata/item_instance.dart';
import 'metadata/item_proto.dart';
import 'metadata/item_types.dart';

part 'drill.freezed.dart';

@freezed
class DrillProto extends ItemProto
    with _$DrillProto
    implements AttachmentItemType {
  const DrillProto._();

  const factory DrillProto(
      {required ItemId itemId,
      required String name,
      required String description,
      required int baseDamage}) = _DrillProto;
}

@freezed
class DrillInstance extends ItemInstance<DrillProto> with _$DrillInstance {
  const factory DrillInstance({
    required DrillProto proto,
    @HiveField(1) required InstanceId instanceId,
  }) = _DrillInstance;
}
