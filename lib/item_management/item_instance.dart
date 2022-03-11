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
  // @With<InstanceDefinition<MinerDefinition>>()
  @With<MinerMethods>()
  factory ItemInstance.minerInstance({
    @HiveField(0) required InstanceId id,
    @HiveField(1) required ItemId itemId,
    @HiveField(2) ItemId? drillId,
    @HiveField(4) required ItemContainer hopper,
  }) = MinerInstance;

  @HiveType(typeId: 72, adapterName: 'StackInstanceAdapter')
  @With<StackMethods>()
  // @Assert('itemId is StackableItemId', 'Must use a StackableItemId')
  factory ItemInstance.stackInstance({
    @HiveField(0) required InstanceId id,
    @HiveField(1) required ItemId itemId,
    @HiveField(2) required int quantity,
  }) = StackInstance;
}

abstract class InstanceDefinition<T extends ItemDefinition> {
  ItemId get itemId;
  T get definition => itemId.definition<T>();
}

abstract class MinerMethods implements InstanceDefinition<MinerDefinition> {
  ItemId? get drillId;

  DrillDefinition? get _drill => drillId?.definition<DrillDefinition>();
  @override
  MinerDefinition get definition => itemId.definition<MinerDefinition>();

  int get baseDamage => definition.baseDamage;
  int get drillDamage => _drill?.damage ?? 0;
  int get totalDamage => baseDamage + drillDamage;

  bool get hasDrill => drillId != null;
}

abstract class StackMethods {
  $StackInstanceCopyWith<StackInstance> get copyWith;
  int get quantity;

  StackInstance operator +(int amount) => copyWith(quantity: quantity + amount);
  StackInstance operator -(int amount) => copyWith(quantity: quantity - amount);
  int meow() => 3;
}

// A container that wants 5 coal?

class ItemRequirement {
  final BuiltMap<ItemId, int> requiredAmount;

  ItemRequirement(this.requiredAmount);

  bool meetsRequirement(Iterable<ItemInstance?> items) {
    if (requiredAmount.isEmpty) return true;

    final remaining = requiredAmount.toMap();
    for (final item in items) {
      if (item != null) {
        final id = item.itemId;
        if (remaining.containsKey(id)) {
          int count;
          if (item is StackInstance) {
            count = item.quantity;
          } else {
            count = 1;
          }

          final newCount = remaining[id]! - count;
          if (newCount > 0) {
            remaining[id] = newCount;
          } else {
            remaining.remove(id);
            if (remaining.isEmpty) return true;
          }
        }
      }
    }
    return false;
  }
}
