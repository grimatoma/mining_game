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
  const factory MinerDefinition(
      {required String name,
      required String description,
      required int radius,
      required int depth,
      required int baseDamage,
      // Should this be for all resources or per resource?
      required int baseHopperSize,
      required int fuelConsumption,
      required String image}) = _MinerDefinition;

  factory MinerDefinition.fromJson(Map<String, dynamic> json) =>
      _$MinerDefinitionFromJson(json);

  @override
  String toString() => toJson().toString();
}

@freezed
class MinerInstance with _$MinerInstance {
  const MinerInstance._();

  @HiveType(typeId: 10, adapterName: 'MinerInstanceAdapter')
  const factory MinerInstance({
    @HiveField(0) required InstanceId id,
    @HiveField(1) required MinerDefinition definition,
    @HiveField(2) ItemKey? drillItemId,
    @HiveField(4) required ItemContainer hopper,
  }) = _MinerInstance;

  int get baseDamage => definition.baseDamage;
  int get drillDamage => drill?.damage ?? 0;
  int get totalDamage => baseDamage + drillDamage;

  bool get hasDrill => drillItemId != null;
  DrillDefinition? get drill => drillItemId?.getDefinition();
}

mixin MinerMethods {
  MinerDefinition get definition;
  ItemKey? get drillItemId;
  DrillDefinition? get drill;

  int get baseDamage => definition.baseDamage;
  int get drillDamage => drill?.damage ?? 0;
  int get totalDamage => baseDamage + drillDamage;
}
