import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/item_ftest.dart';
import 'package:mining_game/item_management/items/item_container.dart';

part 'miner.freezed.dart';
part 'miner.g.dart';

@freezed
class MinerDefinition with _$MinerDefinition {
  const MinerDefinition._();
  const factory MinerDefinition(
      {required MinerDefinitionId id,
      required String name,
      required String description,
      required int radius,
      required int depth,
      required int baseDamage,
      // Should this be for all resources or per resource?
      required int baseHopperSize,
      required int fuelConsumption,
      required String image}) = _MinerDefinition;

  factory MinerDefinition.fromJson(Map<String, dynamic> json) =>
      ItemDirectory.getMiner(json['id']);

  factory MinerDefinition.fromJsonFull(Map<String, dynamic> json) =>
      _$MinerDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
      };

  @override
  String toString() => toJson().toString();
}

@freezed
class MinerDefinitionId with _$MinerDefinitionId {
  const MinerDefinitionId._();

  @HiveType(typeId: 50, adapterName: 'MinerDefinitionIdAdapter')
  const factory MinerDefinitionId({@HiveField(0) required int minerId}) =
      _MinerDefinitionId;

  factory MinerDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$MinerDefinitionIdFromJson(json);
}

@freezed
class MinerInstance with _$MinerInstance {
  const MinerInstance._();

  @HiveType(typeId: 10, adapterName: 'MinerInstanceAdapter')
  const factory MinerInstance({
    @HiveField(0) required InstanceId id,
    @HiveField(1) required MinerDefinitionId minerId,
    @HiveField(2) ItemId? drillItemId,
    @HiveField(4) required ItemContainer hopper,
  }) = _MinerInstance;

  int get baseDamage => definition.baseDamage;
  int get drillDamage => drill?.damage ?? 0;
  int get totalDamage => baseDamage + drillDamage;

  bool get hasDrill => drillItemId != null;
  MinerDefinition get definition => ItemDirectory.getMiner(minerId);
  DrillDefinition? get drill => drillItemId?.definition();
}

mixin MinerMethods {
  MinerDefinition get definition;
  ItemId? get drillItemId;
  DrillDefinition? get drill;

  int get baseDamage => definition.baseDamage;
  int get drillDamage => drill?.damage ?? 0;
  int get totalDamage => baseDamage + drillDamage;
}
