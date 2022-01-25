import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';

import 'metadata/item_attributes.dart';
import 'metadata/item_instance.dart';
import 'metadata/item_proto.dart';
import 'metadata/item_types.dart';

part 'miner.freezed.dart';
part 'miner.g.dart';

@freezed
class MinerProto extends ItemProto
    with _$MinerProto
    implements
        UpgradableItem,
        EquipmentItemType,
        Creatable<MinerProto, MinerInstance> {
  const MinerProto._();
  @HiveType(typeId: 11, adapterName: 'MinerProtoAdapter')
  const factory MinerProto(
      {@HiveField(1) required ItemId itemId,
      @HiveField(2) required String name,
      @HiveField(3) required String description,
      @HiveField(4) required int radius,
      @HiveField(5) required int depth,
      @HiveField(6) required int baseDamage,
      @HiveField(7) required int hopperSize,
      @HiveField(8) required int fuelConsumption}) = _MinerProto;

  @override
  MinerInstance create(InstanceId id) =>
      MinerInstance(proto: this, instanceId: id);
}

@freezed
class MinerInstance extends ItemInstance<MinerProto> with _$MinerInstance {
  @HiveType(typeId: 10, adapterName: 'MinerInstanceAdapter')
  const factory MinerInstance({
    @HiveField(1) required MinerProto proto,
    @HiveField(2) required InstanceId instanceId,
    @HiveField(3) ItemId? drillItemId,
    @HiveField(4) PlanetPoint? planetPoint,
  }) = _MinerInstance;
}
