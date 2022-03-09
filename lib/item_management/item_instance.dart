part of 'item_definition.dart';

abstract class BaseItemInstance {
  const BaseItemInstance();

  InstanceId get id;
  ItemId get itemId;
}

@freezed
class ItemInstance extends BaseItemInstance with _$ItemInstance {
  const ItemInstance._();

  factory ItemInstance.exampleInstance({
    @HiveField(0) required InstanceId id,
    @HiveField(1) required ItemId itemId,
  }) = ExampleInstance;

  @HiveType(typeId: 10, adapterName: 'MinerInstanceAdapter')
  @Assert('itemId.itemType == _ItemType.MINER', 'Must use a MINER ItemId')
  @With<InstanceDefinition<MinerDefinition>>()
  @With<MinerMethods>()
  factory ItemInstance.minerInstance({
    @HiveField(0) required InstanceId id,
    @HiveField(1) required ItemId itemId,
    @HiveField(2) ItemId? drillId,
    @HiveField(4) required ItemContainer hopper,
  }) = MinerInstance;
}

abstract class InstanceDefinition<T extends ItemDefinition> {
  ItemId get itemId;
  T get definition => itemId.definition<T>();
}

abstract class MinerMethods {
  MinerDefinition get definition;
  ItemId? get drillId;

  DrillDefinition? get _drill => drillId?.definition<DrillDefinition>();

  int get baseDamage => definition.baseDamage;
  int get drillDamage => _drill?.damage ?? 0;
  int get totalDamage => baseDamage + drillDamage;

  bool get hasDrill => drillId != null;
}
