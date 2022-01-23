import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/planet/planet_tile.dart';

import 'metadata/item_attributes.dart';
import 'metadata/item_instance.dart';
import 'metadata/item_proto.dart';
import 'metadata/item_types.dart';

part 'miner.freezed.dart';

@freezed
class MinerProto extends ItemProto
    with _$MinerProto
    implements
        UpgradableItem,
        EquipmentItemType,
        Creatable<MinerProto, MinerInstance> {
  const MinerProto._();
  const factory MinerProto(
      {required ItemId itemId,
      required String name,
      required String description,
      required int radius,
      required int depth,
      required int baseDamage,
      required int hopperSize,
      required int fuelConsumption}) = _MinerProto;

  @override
  MinerInstance create(InstanceId id) =>
      MinerInstance(proto: this, instanceId: id);
}

@freezed
class MinerInstance extends ItemInstance<MinerProto> with _$MinerInstance {
  const factory MinerInstance({
    required MinerProto proto,
    @HiveField(1) required InstanceId instanceId,
    @HiveField(3) ItemId? drillItemId,
    PlanetTile? planetTile,
  }) = _MinerInstance;
}
