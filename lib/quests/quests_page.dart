import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/quests/quest_definition.dart';
import 'package:mining_game/widgets/status_bar.dart';

import 'quest_providers.dart';

class QuestListPageWidget extends HookConsumerWidget {
  const QuestListPageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('rebuilding quest page');
    final scrollController = useScrollController();
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
            ListView.separated(
                shrinkWrap: true,
                controller: scrollController,
                itemBuilder: (_, index) => InkWell(
                    onTap: () {
                      context
                          .push('/quests/quest/${quests[index].definition.id}');
                    },
                    child: QuestListDetail(quests[index])),
                separatorBuilder: (_, __) => const Divider(),
                itemCount: quests.length),
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
    Color getQuestColor(bool requirementMet) {
      return requirementMet ? Colors.green : Colors.red;
    }

    TableRow getFeatureStatus(Feature feature, Set<Feature> currentFeatures) {
      final reqMet = currentFeatures.contains(feature);
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

    TableRow getItemRequiredStatus(MapEntry<ItemDefinitionId, int> itemRequired,
        ItemContainer currentItemProgress,
        [String? suffix]) {
      final currentCount = currentItemProgress[itemRequired.key];
      final reqMet = currentCount >= itemRequired.value;
      final color = getQuestColor(reqMet);
      return TableRow(children: [
        Text('-', style: TextStyle(color: color)),
        Text('${itemRequired.key.definition().name}:',
            style: TextStyle(color: color)),
        Text(
            '$currentCount'
            '/${itemRequired.value}',
            style: TextStyle(color: color)),
        if (suffix != null) Text(' $suffix', style: TextStyle(color: color)),
      ]);
    }

    final unlockReq = _questStatus.definition.completeRequirement;
    final features = unlockReq.features;
    final requirements = Table(
      children: [
        for (final feature in features)
          getFeatureStatus(feature, _questStatus.featuresProgress),
        for (final itemRequired in unlockReq.itemCost.entries)
          getItemRequiredStatus(itemRequired, _questStatus.itemsProgress),
        for (final itemRequired in unlockReq.itemsOwned.entries)
          getItemRequiredStatus(
              itemRequired, _questStatus.itemsProgress, 'Owned'),
      ],
    );

    return Column(
      children: [
        Row(
          children: [Text(_questStatus.definition.name)],
        ),
        if (_questStatus.requirementsMet)
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
