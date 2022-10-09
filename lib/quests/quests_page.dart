import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/model_assets/townsfolkIds.dart';
import 'package:mining_game/quests/quest_definition.dart';
import 'package:mining_game/util/colors.dart';
import 'package:mining_game/widgets/status_bar.dart';

import 'quest_providers.dart';
import 'townsfolk_definition.dart';

const borderColor = Color(0xFF448AFF);
final border = Border.all(
  color: borderColor,
  width: 3.0,
);

class QuestListPageWidget extends HookConsumerWidget {
  const QuestListPageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quests = ref.watch(questStatusProvider).values.toList();
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Quests'),
        ),
        body: Column(
          children: [
            const StatusBarWidget(),
            TextButton(
                onPressed: () {
                  ref.read(completedQuestsProvider.notifier).resetQuests();
                },
                child: const Text("Reset quests")),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  controller: useScrollController(),
                  itemBuilder: (_, index) => InkWell(
                      onTap: () {
                        context.push(
                            '/quests/quest/${quests[index].definition.id}');
                      },
                      child: QuestListDetail(quests[index])),
                  separatorBuilder: (_, __) => const Divider(),
                  itemCount: quests.length),
            ),
          ],
        ));
  }
}

class QuestListDetail extends ConsumerWidget {
  final QuestStatus _questStatus;

  const QuestListDetail(
    this._questStatus, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questGiverId = _questStatus.definition.questGiver;
    const kMinWidthOfLargeScreen = 900;
    bool isScreenWide =
        MediaQuery.of(context).size.width >= kMinWidthOfLargeScreen;
    return Row(
      children: [
        if (questGiverId != null)
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(
                              15.0) //                 <--- border radius here
                          ),
                      color: Colors.green[100],
                      border: border,
                    ),
                    child: Image.asset(questGiverId.definition.image)),
                Text(questGiverId.definition.name),
              ],
            ),
          ),
        Expanded(
          child: Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        _questStatus.definition.name,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      if (_questStatus.requirementsMet)
                        const Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Text(
                            'Ready to turn in',
                            style: TextStyle(color: Colors.green),
                          ),
                        )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Text('Rewards'),
                        RewardsRenderer(_questStatus.definition),
                      ],
                    ),
                  ),
                ],
              ),
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minWidth: 250,
                    maxWidth: 750,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Column(
                      children: [
                        const Text('Requirements'),
                        QuestStatusRenderer(
                            _questStatus, _questStatus.definition),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RewardsRenderer extends ConsumerWidget {
  final QuestDefinition questDefinition;

  const RewardsRenderer(
    this.questDefinition, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rewardItems = [
      ...?questDefinition.reward.items?.entries,
    ];
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        border: border,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 200,
            maxHeight: 50,
          ),
          // height: 50,
          child: RotatedBox(
            quarterTurns: 3,
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (_, index) {
                final item = rewardItems[index];
                return RotatedBox(
                  quarterTurns: 1,
                  child: ItemRenderer(
                    definition: item.key.definition,
                    count: item.value,
                  ),
                );
              },
              itemCount: rewardItems.length,
            ),
          ),
        ),
      ),
    );
  }
}

class QuestStatusRenderer extends ConsumerWidget {
  final QuestStatus questStatus;
  final QuestDefinition _questDefinition;

  const QuestStatusRenderer(this.questStatus, this._questDefinition, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        for (final feature in _questDefinition.completeRequirement.features)
          FeatureRequirement(feature),
        for (final itemRequired
            in questStatus.definition.completeRequirement.itemCost.entries)
          ItemRequirement(
            itemId: itemRequired.key,
            required: itemRequired.value,
            questStatus: questStatus,
          ),
        for (final itemRequired
            in questStatus.definition.completeRequirement.itemsOwned.entries)
          ItemRequirement(
            itemId: itemRequired.key,
            required: itemRequired.value,
            questStatus: questStatus,
            ownsOnly: true,
          ),
      ],
    );
  }
}

enum RequirementProgress {
  NOT_STARTED,
  IN_PROGRESS,
  MET,
}

Color getBackgroundColor(RequirementProgress progress) {
  switch (progress) {
    case RequirementProgress.NOT_STARTED:
      return Colors.red[200]!;
    case RequirementProgress.IN_PROGRESS:
      return Colors.blue[200]!;
    case RequirementProgress.MET:
      return Colors.green[400]!;
  }
}

class QuestSingleRequirementProgress extends ConsumerWidget {
  final RequirementProgress progress;
  final int currentAmount;
  final int requiredAmount;
  final String? centerText;

  final bool showProgressBar;
  final bool showProgressNumbers;

  const QuestSingleRequirementProgress(
      {required this.progress,
      required this.showProgressNumbers,
      required this.showProgressBar,
      this.currentAmount = 1,
      this.requiredAmount = 1,
      this.centerText,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const boarderRadius = BorderRadius.all(Radius.circular(35.0));
    final color = getBackgroundColor(progress);
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 28,
        decoration: BoxDecoration(
            borderRadius: boarderRadius,
            color: getBackgroundColor(progress),
            border: Border.all(
              color: color.darken(0.2),
              style: BorderStyle.solid,
              width: 2.0,
            )),
        child: ClipRRect(
          borderRadius: boarderRadius,
          child: SizedBox(
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Stack(
                children: [
                  if (showProgressBar)
                    Row(
                      children: [
                        Container(
                          color: color.darken(.3),
                          width: constraints.maxWidth *
                              min(1, currentAmount / requiredAmount),
                        ),
                        Container(
                          color: Colors.grey[200],
                        ),
                      ],
                    ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (centerText != null) Text(centerText!),
                        if (showProgressNumbers)
                          Text('$currentAmount/$requiredAmount'),
                      ],
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}

class FeatureRequirement extends ConsumerWidget {
  final Feature _feature;

  const FeatureRequirement(this._feature, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return QuestSingleRequirementProgress(
        centerText: 'Unlocked ${_feature.name}',
        progress: ref.watch(activeFeaturesProvider).contains(_feature)
            ? RequirementProgress.MET
            : RequirementProgress.NOT_STARTED,
        showProgressNumbers: false,
        showProgressBar: false);
  }
}

class ItemRequirement extends ConsumerWidget {
  final ItemDefinitionId itemId;
  final QuestStatus questStatus;
  final bool ownsOnly;
  final int required;

  const ItemRequirement(
      {required this.itemId,
      required this.required,
      required this.questStatus,
      this.ownsOnly = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final current = questStatus.itemsProgress[itemId];
    final isCompleted = current >= required;
    var status = RequirementProgress.NOT_STARTED;
    if (isCompleted) {
      status = RequirementProgress.MET;
    } else if (!isCompleted && current > 0) {
      status = RequirementProgress.IN_PROGRESS;
    }

    return QuestSingleRequirementProgress(
      centerText: '${ownsOnly ? 'Own' : 'Required'} ${itemId.itemName} ',
      progress: status,
      showProgressNumbers: true,
      showProgressBar: !isCompleted,
      currentAmount: current,
      requiredAmount: required,
    );
  }
}
