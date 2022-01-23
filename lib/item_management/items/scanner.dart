import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'metadata/item_instance.dart';
import 'metadata/item_proto.dart';
import 'metadata/item_types.dart';

part 'scanner.freezed.dart';

@freezed
class ScannerProto extends ItemProto
    with _$ScannerProto
    implements EquipmentItemType {
  const ScannerProto._();

  const factory ScannerProto(
      {required ItemId itemId,
      required String name,
      required String description,
      required int radius,
      required int depth}) = _Scanner;
}

@freezed
class ScannerInstance extends ItemInstance<ScannerProto>
    with _$ScannerInstance {
  const factory ScannerInstance({
    required ScannerProto proto,
    @HiveField(1) required InstanceId instanceId,
  }) = _ScannerInstance;
}
