import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/persistence/hive_manager.dart';

import 'quest_definition.dart';
import 'townsfolk_definition.dart';

final allQuestsProvider = StateNotifierProvider<AllQuestsController,
        BuiltMap<QuestDefinitionId, QuestDefinition>>(
    (ref) => AllQuestsController());

class AllQuestsController
    extends StateController<BuiltMap<QuestDefinitionId, QuestDefinition>> {
  AllQuestsController() : super(BuiltMap()) {
    state = ItemDirectory.allQuests;
  }
}

final completedQuestsProvider = StateNotifierProvider<CompletedQuestsController,
        BuiltSet<QuestDefinitionId>>(
    (ref) => CompletedQuestsController(ref.watch(inventoryProvider.notifier)));

class CompletedQuestsController
    extends StateController<BuiltSet<QuestDefinitionId>> {
  final InventoryStateProvider _inventoryController;

  CompletedQuestsController(this._inventoryController) : super(BuiltSet()) {
    void init() async {
      state = HiveManager.getIterableOfType<QuestDefinitionId>(
              BoxKey.COMPLETED_QUESTS, QuestDefinitionId.fromJson)
          .toBuiltSet();
    }

    init();
  }

  void markCompleted(QuestDefinition questDefinition) {
    if (_inventoryController
        .removeItems(questDefinition.completeRequirement.itemCost)) {
      state = state.rebuild((p0) => p0.add(questDefinition.id));
    }
  }

  void resetQuests() {
    // HiveManager.getBox<int>(BoxKey.COMPLETED_QUESTS).clear();
    state = state.rebuild((p0) => p0.clear());
  }
}

final questStatusProvider =
    StateProvider<BuiltMap<QuestDefinitionId, QuestStatus>>((ref) {
  final allQuests = ref.watch(allQuestsProvider);
  final completedQuests = ref.watch(completedQuestsProvider);
  final activeFeatures = ref.watch(activeFeaturesProvider);
  final inventoryCounts = ref.watch(inventoryProvider);

  QuestStatus checkRequirements(
      Requirement requirements, QuestDefinition questDefinition) {
    var meetsRequirements = true;
    final questProgress = <ItemDefinitionId, int>{};

    void processRequirement(ItemContainer items) {
      for (final requiredItem in items.entries) {
        final itemDefinitionId = requiredItem.key;
        final requiredCount = requiredItem.value;
        final currentCount = questProgress.putIfAbsent(
            itemDefinitionId, () => inventoryCounts[itemDefinitionId]);
        if (currentCount < requiredCount) {
          meetsRequirements = false;
        }
      }
    }

    final ownedFeatures =
        activeFeatures.where((p0) => requirements.features.contains(p0));
    if (ownedFeatures.length != requirements.features.length) {
      meetsRequirements = false;
    }
    processRequirement(requirements.itemCost);
    processRequirement(requirements.itemsOwned);
    return QuestStatus(
        definition: questDefinition,
        requirementsMet: meetsRequirements,
        itemsProgress: ItemContainer(questProgress),
        featuresProgress: ownedFeatures.toSet());
  }

  final mapBuilder = MapBuilder<QuestDefinitionId, QuestStatus>();

  for (final quest in allQuests.values) {
    if (completedQuests.contains(quest.id)) continue;
    if (!checkRequirements(quest.enabledRequirement, quest).requirementsMet) {
      continue;
    }

    mapBuilder[quest.id] = checkRequirements(quest.completeRequirement, quest);
  }

  return mapBuilder.build();
});
