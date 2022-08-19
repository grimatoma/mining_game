part of 'item_definition.dart';

abstract class BaseItemInstance {
  const BaseItemInstance();

  ItemInstanceId get id;

  ItemDefinitionId get itemId;
}

@freezed
class ItemInstance extends BaseItemInstance with _$ItemInstance {
  const ItemInstance._();

  factory ItemInstance.basicInstance({
    required ItemInstanceId id,
    required ItemDefinitionId itemId,
  }) = BasicInstance;

  // @With<InstanceDefinition<MinerDefinition>>()
  @With<MinerMethods>()
  factory ItemInstance.minerInstance({
    required ItemInstanceId id,
    required ItemDefinitionId itemId,
    ItemDefinitionId? drillId,
    // @HiveField(4) required ItemContainer hopper,
  }) = MinerInstance;

  @With<StackMethods>()
  factory ItemInstance.stackInstance({
    required ItemInstanceId id,
    required ItemDefinitionId itemId,
    required int quantity,
  }) = StackInstance;

  factory ItemInstance.fromJson(Map<String, dynamic> json) =>
      _$ItemInstanceFromJson(json);
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
  // ignore: library_private_types_in_public_api
  _$$StackInstanceCopyWith<_$StackInstance> get copyWith;

  int get quantity;

  ItemDefinitionId get itemId;

  StackInstance operator +(int amount) => copyWith(quantity: quantity + amount);

  StackInstance operator -(int amount) => copyWith(quantity: quantity - amount);

  int get maxStackSize =>
      (ItemDirectory.getItem(itemId) as Stackable).maxStackSize;
}

@JsonSerializable()
class ItemInstanceGenerator {
  final ItemDefinitionId id;
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

  factory ItemInstanceGenerator.fromJson(Map<String, dynamic> json) {
    final entry = json.entries.first;
    return ItemInstanceGenerator(ItemDefinitionId(entry.key), entry.value);
  }

  Map<String, dynamic> toJson() => {
        id.toString(): countIfStack,
      };
}

@freezed
class ItemRequirement with _$ItemRequirement {
  const ItemRequirement._();

  const factory ItemRequirement(
      @ItemDefinitionIdKeyedMapConverter()
          Map<ItemDefinitionId, int> requiredItems) = _ItemRequirement;

  factory ItemRequirement.fromJson(Map<String, dynamic> json) =>
      _$ItemRequirementFromJson(json);

  factory ItemRequirement.single(ItemDefinitionId itemDefinitionId,
          [int count = 1]) =>
      ItemRequirement({itemDefinitionId: count});

  static const empty = ItemRequirement({});

  bool meetsRequirement(Iterable<ItemInstance?> existingItems) =>
      subtractRequirement(existingItems).isEmpty;

  BuiltMap<ItemDefinitionId, int> subtractRequirement(
      Iterable<ItemInstance?> existingItems) {
    if (requiredItems.isEmpty) return BuiltMap<ItemDefinitionId, int>();

    final remainingRequiredItems = <ItemDefinitionId, int>{...requiredItems};
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
            if (remainingRequiredItems.isEmpty) {
              return BuiltMap<ItemDefinitionId, int>();
            }
          }
        }
      }
    }
    return remainingRequiredItems.build();
  }
}

class ItemDefinitionIdKeyedMapConverter
    extends ObjectKeyedMapConverter<ItemDefinitionId, int> {
  const ItemDefinitionIdKeyedMapConverter();

  @override
  ItemDefinitionId genKey(String keyVal) => ItemDefinitionId(keyVal);
}

abstract class ObjectKeyedMapConverter<K, V>
    implements JsonConverter<Map<K, V>, Map<String, dynamic>> {
  const ObjectKeyedMapConverter();

  K genKey(String keyVal);

  @override
  Map<K, V> fromJson(Map<String, dynamic> json) => {
        for (final item in json.entries) genKey(item.key): item.value as V,
      };

  @override
  Map<String, dynamic> toJson(Map<K, V> map) => {
        for (final item in map.entries) jsonEncode(item.key): item.value,
      };
}

class ItemRequirementRenderer extends ConsumerWidget {
  final ItemRequirement itemRequirement;
  final bool checkInventoryForItems;

  const ItemRequirementRenderer(
      {required this.itemRequirement,
      this.checkInventoryForItems = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var missingItems = BuiltMap<ItemDefinitionId, int>();
    if (checkInventoryForItems) {
      missingItems = itemRequirement
          .subtractRequirement(ref.watch(inventoryStateProvider).itemSlots);
    }
    return Column(
      children: [
        for (final item in itemRequirement.requiredItems.entries)
          _buildItem(item, missingItems[item.key]),
      ],
    );
  }

  Widget _buildItem(MapEntry<ItemDefinitionId, int> entry, int? missing) {
    final definition = entry.key.definition();
    Widget renderItem() {
      return Row(children: [
        Image.asset(
          definition.image,
          width: 24,
        ),
        Text('${entry.value}${missing == null ? '' : '($missing)'}'),
      ]);
    }

    return missing != null
        ? ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.red[200]!, BlendMode.color),
            child: renderItem(),
          )
        : renderItem();
  }
}
