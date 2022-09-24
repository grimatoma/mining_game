import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/item_definition.dart';

part 'requirement.freezed.dart';

part 'requirement.g.dart';

@freezed
class Requirement with _$Requirement {
  const Requirement._();

  const factory Requirement({
    @ItemDefinitionIdKeyedMapConverter()
        required Map<ItemDefinitionId, int> requiredItems,
    required Set<Feature> requiredFeatures,
  }) = _Requirement;

  bool meetsRequirements(
      {Map<ItemDefinitionId, int> items = const <ItemDefinitionId, int>{},
      Set<Feature> features = const <Feature>{}}) {
    if (requiredItems.keys.any((key) {
      final itemsOwned = items[key];
      if (itemsOwned == null) return false;
      final itemsRequired = requiredItems[key]!;
      return itemsOwned < itemsRequired;
    })) return false;
    if (requiredFeatures.any((f) => !features.contains(f))) return false;
    return true;
  }

  factory Requirement.fromJson(Map<String, dynamic> json) =>
      _$RequirementFromJson(json);
}
