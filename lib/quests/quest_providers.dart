import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/persistence/hive_manager.dart';

import 'quest_definition.dart';

final allQuestsProvider =
    StateNotifierProvider<AllQuestsController, BuiltList<QuestDefinition>>(
        (ref) => AllQuestsController());

class AllQuestsController extends StateController<BuiltList<QuestDefinition>> {
  AllQuestsController() : super(BuiltList()) {
    state = ItemDirectory.allQuests;
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
        .subtractItemRequirement(questDefinition.completeRequirement.cost)) {
      HiveManager.getBox<int>(BoxKey.COMPLETED_QUESTS).add(questDefinition.id);
      state = state.rebuild((p0) => p0.add(questDefinition.id));
    }
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
    final questProgress = <ItemDefinitionId, int>{};

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
        itemsProgress: ItemRequirement(questProgress),
        featuresProgress: ownedFeatures.toSet());
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
