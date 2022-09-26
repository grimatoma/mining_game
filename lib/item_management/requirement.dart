import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/item_definition.dart';

part 'requirement.freezed.dart';

part 'requirement.g.dart';

@freezed
class ItemContainer with _$ItemContainer {
  static const ItemContainer getDefault = ItemContainer({});

  const ItemContainer._();

  const factory ItemContainer(
      @ItemDefinitionIdKeyedMapConverter()
          Map<ItemDefinitionId, int> items) = _ItemContainer;

  factory ItemContainer.single(ItemDefinitionId id, [int count = 1]) =>
      ItemContainer({id: count});

  Iterable<ItemDefinitionId> get keys => items.keys;

  Iterable<MapEntry<ItemDefinitionId, int>> get entries => items.entries;

  int operator [](ItemDefinitionId key) => items[key] ?? 0;

  bool get isEmpty =>
      items.isEmpty || !items.values.any((element) => element > 0);

  ItemContainer operator -(ItemContainer other) {
    final newMap = Map.of(items);
    for (final entry in other.entries) {
      final oldVal = newMap.putIfAbsent(entry.key, () => 0);
      newMap[entry.key] = oldVal - entry.value;
    }
    return ItemContainer(newMap);
  }

  ItemContainer operator +(ItemContainer other) {
    final newMap = Map.of(items);
    for (final entry in other.entries) {
      final oldVal = newMap.putIfAbsent(entry.key, () => 0);
      newMap[entry.key] = oldVal + entry.value;
    }
    return ItemContainer(newMap);
  }

  ItemContainer removeLimit(ItemContainer other) => ItemContainer({
        for (final entry in other.entries)
          if (this[entry.key] - entry.value < 0)
            entry.key: entry.value - (this[entry.key] - entry.value).abs(),
      });

  bool canSubtract(ItemContainer other) => removeLimit(other).isEmpty;

  Requirement get toRequirement => Requirement(itemCost: this);

  factory ItemContainer.fromJson(Map<String, dynamic> json) =>
      _$ItemContainerFromJson(json);
}

@freezed
class Requirement with _$Requirement {
  const Requirement._();

  const factory Requirement({
    @Default(ItemContainer.getDefault) ItemContainer itemCost,
    @Default(<Feature>{}) Set<Feature> features,
    @Default(ItemContainer.getDefault) ItemContainer itemsOwned,
  }) = _Requirement;

  bool meetsRequirements(
      {ItemContainer otherItems = ItemContainer.getDefault,
      Set<Feature> otherFeatures = const <Feature>{}}) {
    if (otherItems.keys.any((key) {
      final itemsOwned = otherItems[key];
      if (itemsOwned == 0) return false;
      return itemsOwned < otherItems[key];
    })) return false;
    if (otherFeatures.any((f) => !features.contains(f))) return false;
    return true;
  }

  factory Requirement.fromJson(Map<String, dynamic> json) =>
      _$RequirementFromJson(json);
}
