import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/item_management/items/item_container.dart';

import 'item_management/inventory/inventory.dart';

part 'quests.freezed.dart';

@freezed
class UnlockRequirement with _$UnlockRequirement {
  const factory UnlockRequirement(
      {required BuiltSet<Feature> features,
      required ItemRequirement cost,
      required ItemRequirement itemsOwned}) = _UnlockRequirement;
}

@freezed
class QuestReward with _$QuestReward {
  const factory QuestReward(
      {BuiltSet<Feature>? features, ItemContainer? reward}) = _QuestReward;
}

@freezed
class QuestDefinition with _$QuestDefinition {
  const factory QuestDefinition(
      {required String name,
      required String description,
      required UnlockRequirement unlockRequirement,
      required QuestReward reward}) = _QuestDefinition;
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

// final activeQuestStatusProvider =
//     StateNotifierProvider<QuestStatusProvider, BuiltList<QuestStatus>>(
//         (ref) => QuestStatusProvider(ref.watch(activeFeaturesProvider)));

// class QuestStatusProvider extends StateNotifier<BuiltList<QuestStatus>> {
//   SyncedSet<Feature> activeFeatures;
//   QuestStatusProvider() : super(BuiltList<QuestStatus>());
// }

final allQuestsProvider = Provider<BuiltList<QuestDefinition>>((ref) =>
    <QuestDefinition>[
      QuestDefinition(
          name: 'Test quest1',
          description:
              'This is an example quest. Please give me 5 credits so I can give you 25 rocks. :)',
          unlockRequirement: UnlockRequirement(
              cost: ItemRequirement.single(ItemKeys.CREDIT, 5),
              features: BuiltSet(),
              itemsOwned: ItemRequirement.empty()),
          reward: QuestReward(reward: ItemContainer.single(ItemKeys.ROCK, 25))),
      QuestDefinition(
          name: 'Smelt Iron',
          description: 'This quest makes sure that you can smelt iron',
          unlockRequirement: UnlockRequirement(
              features: {Feature.SMELTING}.build(),
              itemsOwned: ItemRequirement.empty(),
              cost: ItemRequirement.empty()),
          reward: QuestReward(reward: ItemContainer.single(ItemKeys.ROCK, 25))),
      QuestDefinition(
          name: 'Own 5 Iron',
          description: 'This quest checks that you own Iron',
          unlockRequirement: UnlockRequirement(
              itemsOwned: ItemRequirement.single(ItemKeys.IRON, 5),
              features: BuiltSet(),
              cost: ItemRequirement.empty()),
          reward: QuestReward(reward: ItemContainer.single(ItemKeys.ROCK, 25))),
      QuestDefinition(
          name: 'Unlock smelting',
          description:
              'We need to build a smelter but this costs a lot of resources please help me gather these items so I can start building a smelter.',
          unlockRequirement: UnlockRequirement(
              features: BuiltSet(),
              itemsOwned: ItemRequirement.empty(),
              cost: ItemRequirement({
                ItemKeys.CREDIT: 25,
                ItemKeys.IRON: 50,
              }.build())),
          reward: QuestReward(features: {Feature.SMELTING}.build())),
    ].build());
final availableQuests =
    Provider<BuiltList<QuestDefinition>>((ref) => ref.watch(allQuestsProvider));

final activeQuestStatusProvider = StateProvider<BuiltList<QuestStatus>>((ref) {
  print('active Quests updated');
  final activeQuests = ref.watch(availableQuests);
  final activeFeatures = ref.watch(activeFeaturesProvider);
  final inventoryCounts = ref.watch(inventoryCountsStateProvider);

  final questStatusListBuilder = ListBuilder<QuestStatus>();

  for (final quest in activeQuests) {
    var meetsRequirements = true;
    final questProgress = MapBuilder<ItemDefinitionId, int>();
    var requirements = quest.unlockRequirement;

    void processRequirement(ItemRequirement requirements) {
      for (final requiredItem in requirements.requiredItems.entries) {
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
    questStatusListBuilder.add(QuestStatus(
        definition: quest,
        requirementsMet: meetsRequirements,
        itemsProgress: ItemRequirement(questProgress.build()),
        featuresProgress: ownedFeatures));
  }

  return questStatusListBuilder.build();
});
