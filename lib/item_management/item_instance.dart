part of 'item_definition.dart';

abstract class BaseItemInstance {
  const BaseItemInstance();

  ItemInstanceId get id;

  ItemDefinitionId get itemId;
}

@freezed
class ItemInstance extends BaseItemInstance with _$ItemInstance {
  const ItemInstance._();

  @HiveType(typeId: 10, adapterName: 'BasicInstanceAdapter')
  factory ItemInstance.basicInstance({
    @HiveField(0) required ItemInstanceId id,
    @HiveField(1) required ItemDefinitionId itemId,
  }) = BasicInstance;

  @HiveType(typeId: 104, adapterName: 'MinerInstanceAdapter')
  // @With<InstanceDefinition<MinerDefinition>>()
  @With<MinerMethods>()
  factory ItemInstance.minerInstance({
    @HiveField(0) required ItemInstanceId id,
    @HiveField(1) required ItemDefinitionId itemId,
    @HiveField(2) ItemDefinitionId? drillId,
    // @HiveField(4) required ItemContainer hopper,
  }) = MinerInstance;

  @HiveType(typeId: 72, adapterName: 'StackInstanceAdapter')
  @With<StackMethods>()
  factory ItemInstance.stackInstance({
    @HiveField(0) required ItemInstanceId id,
    @HiveField(1) required ItemDefinitionId itemId,
    @HiveField(2) required int quantity,
  }) = StackInstance;
}

abstract class InstanceDefinition<T extends ItemDefinition> {
  ItemDefinitionId get itemId;

  T get definition => itemId.definition<T>();
}

abstract class MinerMethods implements InstanceDefinition<MinerDefinition> {
  ItemDefinitionId? get drillId;

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

  ItemDefinitionId get itemId;

  StackInstance operator +(int amount) => copyWith(quantity: quantity + amount);

  StackInstance operator -(int amount) => copyWith(quantity: quantity - amount);

  int get maxStackSize =>
      (ItemDirectory.getItem(itemId) as Stackable).maxStackSize;
}

@HiveType(typeId: 81)
@JsonSerializable()
class ItemInstanceGenerator {
  @HiveField(0)
  final ItemDefinitionId id;
  @HiveField(2)
  final int countIfStack;

  ItemInstanceGenerator(this.id, [this.countIfStack = 1]);

  BuiltList<ItemInstance> generate() {
    final def = id.definition();
    if (def is Stackable) {
      // TODO handle splitting this into multiple stacks if needed.
      return [
        StackInstance(
            id: ItemInstanceId.generate(), itemId: id, quantity: countIfStack)
      ].build();
    }

    return <ItemInstance>[
      id.definition<ItemDefinition>().map(
            swordDefinition: (_) =>
                BasicInstance(id: ItemInstanceId.generate(), itemId: id),
            minerDefinition: (_) =>
                MinerInstance(id: ItemInstanceId.generate(), itemId: id),
            resourceDefinition: (_) => throw Exception('should be stack'),
            drillDefinition: (DrillDefinition value) =>
                MinerInstance(id: ItemInstanceId.generate(), itemId: id),
          )
    ].build();
  }

  static BuiltList<ItemInstance> generateItemInstance(
          ItemDefinitionId id, int count) =>
      ItemInstanceGenerator(id, count).generate();

  // factory ItemInstanceGenerator.fromJson(Map<String, dynamic> json) =>
  //     _$ItemInstanceGeneratorFromJson(json);
  //
  // Map<String, dynamic> toJson() => _$ItemInstanceGeneratorToJson(this);

  factory ItemInstanceGenerator.fromJson(Map<String, dynamic> json) {
    final entry = json.entries.first;
    return ItemInstanceGenerator(
        ItemDirectory.loadIdFromDb(entry.key), entry.value);
  }

  Map<String, dynamic> toJson() => {
        id.toString(): countIfStack,
      };
}

@HiveType(typeId: 82)
class ItemRequirement {
  @HiveField(0)
  final BuiltMap<ItemDefinitionId, int> requiredItems;

  ItemRequirement(this.requiredItems);

  bool meetsRequirement(Iterable<ItemInstance?> existingItems) {
    if (requiredItems.isEmpty) return true;

    final remainingRequiredItems = requiredItems.toMap();
    for (final item in existingItems) {
      if (item != null) {
        final id = item.itemId;
        if (remainingRequiredItems.containsKey(id)) {
          int count;
          if (item is StackInstance) {
            count = item.quantity;
          } else {
            count = 1;
          }

          final newRemainingCount = remainingRequiredItems[id]! - count;
          if (newRemainingCount > 0) {
            remainingRequiredItems[id] = newRemainingCount;
          } else {
            remainingRequiredItems.remove(id);
            if (remainingRequiredItems.isEmpty) return true;
          }
        }
      }
    }
    return false;
  }

  @override
  String toString() => [
        for (final item in requiredItems.entries)
          '${item.key.itemName}: ${item.value}',
      ].join('\n');

  factory ItemRequirement.fromJson(Map<String, dynamic> json) =>
      ItemRequirement({
        for (final item in json.entries)
          ItemDirectory.loadIdFromDb(item.key): item.value as int,
      }.build());

  Map<String, dynamic> toJson() => {
        for (final item in requiredItems.entries)
          item.key.toString(): item.value,
      };
}
