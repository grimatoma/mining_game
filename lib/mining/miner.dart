import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/item_definitions.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/drill.dart';
import 'package:mining_game/item_management/items/item_container.dart';

part 'miner.freezed.dart';
part 'miner.g.dart';

@freezed
class MinerDefinition extends BaseItemDefinition with _$MinerDefinition {
  const MinerDefinition._();
  @HiveType(typeId: 11, adapterName: 'MinerDefinitionAdapter')
  const factory MinerDefinition(
      {@HiveField(2) required String name,
      @HiveField(3) required String description,
      @HiveField(4) required int radius,
      @HiveField(5) required int depth,
      @HiveField(6) required int baseDamage,
      // Should this be for all resources or per resource?
      @HiveField(7) required int baseHopperSize,
      @HiveField(8) required int fuelConsumption,
      @HiveField(9) required String image}) = _MinerDefinition;
}

@freezed
class MinerInstance with _$MinerInstance {
  const MinerInstance._();

  @HiveType(typeId: 10, adapterName: 'MinerInstanceAdapter')
  // @With<MinerMethods>()
  const factory MinerInstance({
    @HiveField(0) required InstanceId id,
    @HiveField(1) required MinerDefinition definition,
    @HiveField(2) ItemKey? drillItemId,
    @HiveField(4) required ItemContainer hopper,
  }) = _MinerInstance;

  int get baseDamage => definition.baseDamage;
  int get drillDamage => drill?.damage ?? 0;
  int get totalDamage => baseDamage + drillDamage;

  // @HiveType(typeId: 37, adapterName: 'ActiveMinerInstanceAdapter')
  // @With<ActiveMinerMethods>()
  // const factory MinerInstance.active({
  //   @HiveField(0) required InstanceId id,
  //   @HiveField(1) required MinerDefinition definition,
  //   @HiveField(2) required ItemKey? drillItemId,
  //   @HiveField(3) required PlanetPoint planetPoint,
  //   @HiveField(4) required ItemContainer hopper,
  // }) = ActiveMinerInstance;

  bool get hasDrill => drillItemId != null;
  DrillDefinition? get drill => drillItemId?.getDefinition();

  // @override
  // int get hashCode => id.hashCode;
  //
  // @override
  // bool operator ==(Object other) => super == other;
}

mixin MinerMethods {
  MinerDefinition get definition;
  ItemKey? get drillItemId;
  DrillDefinition? get drill;

  int get baseDamage => definition.baseDamage;
  int get drillDamage => drill?.damage ?? 0;
  int get totalDamage => baseDamage + drillDamage;
}
