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
  @Assert('itemId is MinerItemId', 'Must use a MinerItemId')
  @With<InstanceDefinition<MinerDefinition>>()
  factory ItemInstance.minerInstance({
    @HiveField(0) required InstanceId id,
    @HiveField(1) required ItemId itemId,
    @HiveField(2) ItemId? drillId,
    @HiveField(4) required ItemContainer hopper,
  }) = MinerInstance;

  @HiveType(typeId: 72, adapterName: 'StackInstanceAdapter')
  @Assert('itemId is StackableItemId', 'Must use a StackableItemId')
  factory ItemInstance.stackInstance({
    required InstanceId id,
    required ItemId itemId,
    required int quantity,
  }) = StackInstance;
}

abstract class InstanceDefinition<T extends ItemDefinition> {
  ItemId get itemId;
  T get definition => itemId.definition<T>();
}

mixin MinerMethods on MinerInstance {
  DrillDefinition? get _drill => drillId?.definition<DrillDefinition>();

  int get baseDamage => definition.baseDamage;
  int get drillDamage => _drill?.damage ?? 0;
  int get totalDamage => baseDamage + drillDamage;

  bool get hasDrill => drillId != null;
}

mixin StackMethods on StackInstance {
  StackInstance operator +(int amount) => copyWith(quantity: quantity + amount);
  StackInstance operator -(int amount) => copyWith(quantity: quantity - amount);
}

// A container that wants 5 coal?

class ItemRequirement {
  final BuiltMap<ItemId, int> requiredAmount;

  ItemRequirement(this.requiredAmount);

  bool meetsRequirement(Iterable<ItemInstance> items) => false;
}
