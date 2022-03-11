import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/item_management/items/item_container.dart';

part 'quests.freezed.dart';

@freezed
class UnlockRequirement with _$UnlockRequirement {
  const factory UnlockRequirement(
      {BuiltSet<Feature>? features,
      ItemContainer? cost,
      ItemContainer? itemsOwned}) = _UnlockRequirement;
}

@freezed
class QuestReward with _$QuestReward {
  const factory QuestReward(
      {BuiltSet<Feature>? features, ItemContainer? reward}) = _QuestReward;
}

@freezed
class Quest with _$Quest {
  const factory Quest(
      {required String name,
      required String description,
      required UnlockRequirement unlockRequirement,
      required QuestReward reward}) = _Quest;
}

final allQuestsProvider = Provider<BuiltList<Quest>>((ref) => <Quest>[
      Quest(
          name: 'Test quest1',
          description:
              'This is an example quest. Please give me 5 credits so I can give you 25 rocks. :)',
          unlockRequirement:
              UnlockRequirement(cost: ItemContainer.single(ItemKeys.CREDIT, 5)),
          reward: QuestReward(reward: ItemContainer.single(ItemKeys.ROCK, 25))),
      Quest(
          name: 'Smelt Iron',
          description: 'This quest makes sure that you can smelt iron',
          unlockRequirement:
              UnlockRequirement(features: {Feature.SMELTING}.build()),
          reward: QuestReward(reward: ItemContainer.single(ItemKeys.ROCK, 25))),
      Quest(
          name: 'Own 5 Iron',
          description: 'This quest checks that you own Iron',
          unlockRequirement: UnlockRequirement(
              itemsOwned: ItemContainer.single(ItemKeys.CREDIT, 5)),
          reward: QuestReward(reward: ItemContainer.single(ItemKeys.ROCK, 25))),
      Quest(
          name: 'Unlock smelting',
          description:
              'We need to build a smelter but this costs a lot of resources please help me gather these items so I can start building a smelter.',
          unlockRequirement: UnlockRequirement(
              cost: ItemContainer.create({
            ItemKeys.CREDIT: 25,
            ItemKeys.IRON: 50,
          })),
          reward: QuestReward(features: {Feature.SMELTING}.build())),
    ].build());
final availableQuests =
    Provider<BuiltList<Quest>>((ref) => ref.watch(allQuestsProvider));
