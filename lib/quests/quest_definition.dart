import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/items/item_container.dart';

part 'quest_definition.freezed.dart';

part 'quest_definition.g.dart';

@freezed
class Requirement with _$Requirement {
  const factory Requirement(
          {@Default(<Feature>{}) Set<Feature> features,
          @Default(ItemRequirement.empty) ItemRequirement cost,
          @Default(ItemRequirement.empty) ItemRequirement itemsOwned}) =
      _Requirement;

  static const none = Requirement();

  factory Requirement.featureOnly(Set<Feature> features) => Requirement(
      features: features,
      cost: ItemRequirement.empty,
      itemsOwned: ItemRequirement.empty);

  factory Requirement.itemOwnedOnly(ItemRequirement itemsOwned) => Requirement(
      features: {}, cost: ItemRequirement.empty, itemsOwned: itemsOwned);

  factory Requirement.fromJson(Map<String, dynamic> json) =>
      _$RequirementFromJson(json);
}

@freezed
class QuestReward with _$QuestReward {
  const factory QuestReward({Set<Feature>? features, ItemContainer? items}) =
      _QuestReward;

  factory QuestReward.fromJson(Map<String, dynamic> json) =>
      _$QuestRewardFromJson(json);
}

@freezed
class QuestDefinition with _$QuestDefinition {
  const factory QuestDefinition(
      {required int id,
      required String name,
      required String description,
      //TODO: This should be changed to look at the achievement metrics instead so it can always stay on.
      required Requirement enabledRequirement,
      required Requirement completeRequirement,
      required QuestReward reward}) = _QuestDefinition;

  factory QuestDefinition.fromJson(Map<String, dynamic> json) =>
      _$QuestDefinitionFromJson(json);
}

@freezed
class QuestStatus with _$QuestStatus {
  const factory QuestStatus({
    required QuestDefinition definition,
    required bool requirementsMet,
    required Set<Feature> featuresProgress,
    required ItemRequirement itemsProgress,
  }) = _QuestStatus;
}
