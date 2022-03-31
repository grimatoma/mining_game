part of 'item_definition.dart';

abstract class BaseItemInstance {
  const BaseItemInstance();

  ItemInstanceId get id;

  ItemDefinitionId get itemId;
}

@freezed
class ItemInstance extends BaseItemInstance with _$ItemInstance {
  const ItemInstance._();

  // factory ItemInstance.exampleInstance({
  //   @HiveField(0) required ItemInstanceId id,
  //   @HiveField(1) required ItemDefinitionId itemId,
  // }) = ExampleInstance;

  @HiveType(typeId: 10, adapterName: 'BasicInstanceAdapter')
  @Assert('itemId is BasicItemDefinitionId', 'Must use a BasicItemDefinitionId')
  factory ItemInstance.basicInstance({
    @HiveField(0) required ItemInstanceId id,
    @HiveField(1) required ItemDefinitionId itemId,
  }) = BasicInstance;

  @HiveType(typeId: 104, adapterName: 'MinerInstanceAdapter')
  @Assert('itemId is MinerItemDefinitionId', 'Must use a MinerItemDefinitionId')
  // @With<InstanceDefinition<MinerDefinition>>()
  @With<MinerMethods>()
  factory ItemInstance.minerInstance({
    @HiveField(0) required ItemInstanceId id,
    @HiveField(1) required ItemDefinitionId itemId,
    @HiveField(2) BasicItemDefinitionId? drillId,
    // @HiveField(4) required ItemContainer hopper,
  }) = MinerInstance;

  @HiveType(typeId: 72, adapterName: 'StackInstanceAdapter')
  @With<StackMethods>()
  @Assert('itemId is StackableItemDefinitionId',
      'Must use a StackableItemDefinitionId')
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
  BasicItemDefinitionId? get drillId;

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

@HiveType(typeId: 81)
@JsonSerializable()
class ItemInstanceGenerator {
  @HiveField(0)
  final ItemDefinitionId id;
  @HiveField(2)
  final int count;

  ItemInstanceGenerator(this.id, this.count);

  BuiltList<ItemInstance> generate() {
    return <ItemInstance>[
      ...id.map(
        basicItemId: (_) => [
          for (var i = 0; i < count; i++)
            BasicInstance(id: ItemInstanceId.generate(), itemId: id)
        ],
        minerItemId: (_) => [
          for (var i = 0; i < count; i++)
            MinerInstance(id: ItemInstanceId.generate(), itemId: id)
        ],
        stackableItemId: (_) => [
          StackInstance(
              id: ItemInstanceId.generate(), itemId: id, quantity: count)
        ],
      )
    ].build();
  }

  static BuiltList<ItemInstance> generateItemInstance(
          ItemDefinitionId id, int count) =>
      ItemInstanceGenerator(id, count).generate();

  factory ItemInstanceGenerator.fromJson(Map<String, dynamic> json) =>
      _$ItemInstanceGeneratorFromJson(json);

  Map<String, dynamic> toJson() => _$ItemInstanceGeneratorToJson(this);
}

// class ItemInstancesGenerator {
//   @HiveField(0)
//   final BuiltList<ItemInstanceGenerator> items;
//
//   ItemInstancesGenerator(this.items);
//
//   BuiltList<ItemInstance> generate() {
//     return <ItemInstance>[
//       for (final entry in items.entries)
//         ...entry.key.map(
//           basicItemId: (_) => [
//             for (var i = 0; i < entry.value; i++)
//               BasicInstance(id: ItemInstanceId.generate(), itemId: entry.key)
//           ],
//           minerItemId: (_) => [
//             for (var i = 0; i < entry.value; i++)
//               MinerInstance(id: ItemInstanceId.generate(), itemId: entry.key)
//           ],
//           stackableItemId: (_) => [
//             StackInstance(
//                 id: ItemInstanceId.generate(),
//                 itemId: entry.key,
//                 quantity: entry.value)
//           ],
//         )
//     ].build();
//   }
//
//   factory ItemInstanceGenerator.fromJson(Map<String, dynamic> json) =>
//       ItemInstanceGenerator({
//         for (final item in json.entries)
//           ItemDirectory.loadIdFromDb(item.key): item.value as int,
//       }.build());
//
//   Map<String, dynamic> toJson() => {
//         for (final item in items.entries) item.key.toString(): item.value,
//       };
// }

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
