import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/widgets/status_bar_wrapped_page.dart';

part 'quests_page.freezed.dart';

enum Feature {
  SMELTING,
}

@freezed
class UnlockRequirement with _$UnlockRequirement {
  const factory UnlockRequirement(
      {BuiltList<Feature>? features,
      ItemContainer? cost,
      ItemContainer? itemsOwned}) = _UnlockRequirement;
}

@freezed
class QuestReward with _$QuestReward {
  const factory QuestReward(
      {BuiltList<Feature>? features, ItemContainer? reward}) = _QuestReward;
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
              UnlockRequirement(cost: ItemContainer.single(ItemKey.CREDIT, 5)),
          reward: QuestReward(reward: ItemContainer.single(ItemKey.ROCK, 25))),
      Quest(
          name: 'Unlock smelting',
          description:
              'We need to build a smelter but this costs a lot of resources please help me gather these items so I can start building a smelter.',
          unlockRequirement: UnlockRequirement(
              cost: ItemContainer.create({
            ItemKey.CREDIT: 25,
            ItemKey.IRON: 50,
          })),
          reward: QuestReward(features: [Feature.SMELTING].build())),
    ].build());
final availableQuests =
    Provider<BuiltList<Quest>>((ref) => ref.watch(allQuestsProvider));

class QuestListPageWidget extends ConsumerWidget {
  const QuestListPageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quests = ref.watch(availableQuests);
    return StatusBarWrappedPageWidget(
        title: 'Quests',
        builder: (context, ref) => ListView.separated(
            itemBuilder: (_, index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              QuestDetailWidget(quests[index])));
                },
                child: QuestListDetail(quests[index])),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: quests.length));
  }
}

class QuestListDetail extends ConsumerWidget {
  final Quest _quest;
  const QuestListDetail(
    this._quest, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(_quest.toString());
  }
}

class QuestDetailWidget extends ConsumerWidget {
  final Quest _quest;
  const QuestDetailWidget(
    this._quest, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StatusBarWrappedPageWidget(
        title: _quest.name, builder: (_, __) => Text(_quest.toString()));
  }
}
