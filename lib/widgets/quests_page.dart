import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/mining/miners.dart';
import 'package:mining_game/mining/miners_controller.dart';
import 'package:mining_game/widgets/status_bar_wrapped_page.dart';

part 'quests_page.freezed.dart';

final activeFeaturesProvider =
    StateNotifierProvider<ActiveFeaturesProvider, SyncedSet<Feature>>(
        (ref) => ActiveFeaturesProvider());

class ActiveFeaturesProvider extends StateNotifier<SyncedSet<Feature>> {
  ActiveFeaturesProvider()
      : super(SyncedSet<Feature>.load(BoxKey.FEATURES,
            convert: (feature) => feature.name,
            loadFunction: (features) => features
                .map((e) =>
                    Feature.values.firstWhere((element) => element.name == e))
                .toSet()));
}

enum Feature {
  SMELTING,
}

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
              UnlockRequirement(cost: ItemContainer.single(ItemKey.CREDIT, 5)),
          reward: QuestReward(reward: ItemContainer.single(ItemKey.ROCK, 25))),
      Quest(
          name: 'Smelt Iron',
          description: 'This quest makes sure that you can smelt iron',
          unlockRequirement:
              UnlockRequirement(features: {Feature.SMELTING}.build()),
          reward: QuestReward(reward: ItemContainer.single(ItemKey.ROCK, 25))),
      Quest(
          name: 'Own 5 Iron',
          description: 'This quest checks that you own Iron',
          unlockRequirement: UnlockRequirement(
              itemsOwned: ItemContainer.single(ItemKey.CREDIT, 5)),
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
          reward: QuestReward(features: {Feature.SMELTING}.build())),
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
    bool questCompleted = true;
    Color getQuestColor(bool requirementMet) {
      if (requirementMet == false) questCompleted = false;
      return requirementMet ? Colors.green : Colors.red;
    }

    TableRow getFeatureStatus(Feature feature) {
      final reqMet = ref.watch(activeFeaturesProvider).set.contains(feature);
      final color = getQuestColor(reqMet);
      return TableRow(children: [
        Text(
          '-',
          style: TextStyle(color: color),
        ),
        Text('${feature.name} unlocked:', style: TextStyle(color: color)),
        Text('${reqMet ? 1 : 0} /1', style: TextStyle(color: color))
      ]);
    }

    TableRow getItemRequiredStatus(MapEntry<ItemKey, int> itemRequired) {
      final count = ref.watch(inventoryStateProvider).get(itemRequired.key);
      final reqMet = count >= itemRequired.value;
      final color = getQuestColor(reqMet);
      return TableRow(children: [
        Text('-', style: TextStyle(color: color)),
        Text('${ref.watch(itemDirectoryProvider)[itemRequired.key].name}:',
            style: TextStyle(color: color)),
        Text(
            '$count'
            '/${itemRequired.value}',
            style: TextStyle(color: color)),
      ]);
    }

    TableRow getItemOwnedStatus(MapEntry<ItemKey, int> itemRequired) {
      final count = ref.watch(inventoryStateProvider).get(itemRequired.key);
      final reqMet = count >= itemRequired.value;
      final color = getQuestColor(reqMet);
      return TableRow(children: [
        Text('-', style: TextStyle(color: color)),
        Text('${ref.watch(itemDirectoryProvider)[itemRequired.key].name}:',
            style: TextStyle(color: color)),
        Text(
            '$count'
            '/${itemRequired.value}',
            style: TextStyle(color: color)),
      ]);
    }

    final unlockReq = _quest.unlockRequirement;
    final features = unlockReq.features;
    final itemsRequired = unlockReq.cost;
    final itemsOwnedRequired = unlockReq.itemsOwned;
    final requirements = Table(
      children: [
        if (features != null)
          for (final feature in features) getFeatureStatus(feature),
        if (itemsRequired != null)
          for (final itemRequired in itemsRequired.items.entries)
            getItemRequiredStatus(itemRequired),
        if (itemsOwnedRequired != null)
          for (final itemRequired in itemsOwnedRequired.items.entries)
            getItemOwnedStatus(itemRequired),
      ],
    );

    return Column(
      children: [
        Row(
          children: [Text(_quest.name)],
        ),
        if (questCompleted)
          const Text(
            'Ready to turn in',
            style: TextStyle(color: Colors.green),
          )
        else
          requirements,
      ],
    );
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
