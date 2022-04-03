import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/persistence/hive_manager.dart';

import 'item_management/inventory/inventory.dart';

part 'quests.freezed.dart';
part 'quests.g.dart';

@freezed
class Requirement with _$Requirement {
  const factory Requirement(
      {required BuiltSet<Feature> features,
      required ItemRequirement cost,
      required ItemRequirement itemsOwned}) = _Requirement;

  factory Requirement.none() => Requirement(
      features: BuiltSet(),
      cost: ItemRequirement(BuiltMap()),
      itemsOwned: ItemRequirement(BuiltMap()));

  factory Requirement.featureOnly(BuiltSet<Feature> features) => Requirement(
      features: features,
      cost: ItemRequirement(BuiltMap()),
      itemsOwned: ItemRequirement(BuiltMap()));

  factory Requirement.itemOwnedOnly(ItemRequirement itemsOwned) => Requirement(
      features: BuiltSet(),
      cost: ItemRequirement(BuiltMap()),
      itemsOwned: itemsOwned);

  factory Requirement.fromJson(Map<String, dynamic> json) =>
      _$RequirementFromJson(json);
}

@freezed
class QuestReward with _$QuestReward {
  const factory QuestReward(
      {BuiltSet<Feature>? features, ItemContainer? reward}) = _QuestReward;

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
    required BuiltSet<Feature> featuresProgress,
    required ItemRequirement itemsProgress,
  }) = _QuestStatus;
}

final allQuestsProvider =
    StateNotifierProvider<AllQuestsController, BuiltList<QuestDefinition>>(
        (ref) => AllQuestsController());

class AllQuestsController extends StateController<BuiltList<QuestDefinition>> {
  AllQuestsController() : super(BuiltList()) {
    void init() async {
      state = await ItemDirectory.allQuests;
      print(state);
    }

    init();
  }
}

final completedQuestsProvider =
    StateNotifierProvider<CompletedQuestsController, BuiltSet<int>>((ref) =>
        CompletedQuestsController(ref.watch(inventoryStateProvider.notifier)));

class CompletedQuestsController extends StateController<BuiltSet<int>> {
  final InventoryStateController _inventoryController;

  CompletedQuestsController(this._inventoryController) : super(BuiltSet()) {
    void init() async {
      state =
          HiveManager.getBox<int>(BoxKey.COMPLETED_QUESTS).values.toBuiltSet();
    }

    init();
  }

  void markCompleted(QuestDefinition questDefinition) {
    if (_inventoryController
        .subtractItemRequirement(questDefinition.completeRequirement.cost)) ;
    HiveManager.getBox<int>(BoxKey.COMPLETED_QUESTS).add(questDefinition.id);
    state = state.rebuild((p0) => p0.add(questDefinition.id));
  }

  void resetQuests() {
    HiveManager.getBox<int>(BoxKey.COMPLETED_QUESTS).clear();
    state = state.rebuild((p0) => p0.clear());
  }
}

final activeQuestStatusProvider = StateProvider<BuiltList<QuestStatus>>((ref) {
  final allQuests = ref.watch(allQuestsProvider);
  final completedQuests = ref.watch(completedQuestsProvider);
  final activeFeatures = ref.watch(activeFeaturesProvider);
  final inventoryCounts = ref.watch(inventoryCountsStateProvider);

  QuestStatus checkRequirements(
      Requirement requirements, QuestDefinition questDefinition) {
    var meetsRequirements = true;
    final questProgress = MapBuilder<ItemDefinitionId, int>();

    void processRequirement(ItemRequirement itemRequirements) {
      for (final requiredItem in itemRequirements.requiredItems.entries) {
        final itemDefinitionId = requiredItem.key;
        final requiredCount = requiredItem.value;
        final currentCount = questProgress.putIfAbsent(
            itemDefinitionId, () => inventoryCounts[itemDefinitionId] ?? 0);
        if (currentCount < requiredCount) {
          meetsRequirements = false;
        }
      }
    }

    final ownedFeatures = activeFeatures.set
      ..where((p0) => requirements.features.contains(p0));
    if (ownedFeatures.length != requirements.features.length) {
      meetsRequirements = false;
    }
    processRequirement(requirements.cost);
    processRequirement(requirements.itemsOwned);
    return QuestStatus(
        definition: questDefinition,
        requirementsMet: meetsRequirements,
        itemsProgress: ItemRequirement(questProgress.build()),
        featuresProgress: ownedFeatures);
  }

  final questStatusListBuilder = ListBuilder<QuestStatus>();

  for (final quest in allQuests) {
    if (completedQuests.contains(quest.id)) continue;
    if (!checkRequirements(quest.enabledRequirement, quest).requirementsMet) {
      continue;
    }

    questStatusListBuilder
        .add(checkRequirements(quest.completeRequirement, quest));
  }

  return questStatusListBuilder.build();
});
