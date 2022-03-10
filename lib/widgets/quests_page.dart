import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/quests.dart';
import 'package:mining_game/widgets/status_bar_wrapped_page.dart';

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

    TableRow getItemRequiredStatus(MapEntry<ItemId, int> itemRequired) {
      final count = ref.watch(inventoryStateProvider).get(itemRequired.key);
      final reqMet = count >= itemRequired.value;
      final color = getQuestColor(reqMet);
      return TableRow(children: [
        Text('-', style: TextStyle(color: color)),
        Text('${itemRequired.key.definition().name}:',
            style: TextStyle(color: color)),
        Text(
            '$count'
            '/${itemRequired.value}',
            style: TextStyle(color: color)),
      ]);
    }

    TableRow getItemOwnedStatus(MapEntry<ItemId, int> itemRequired) {
      final count = ref.watch(inventoryStateProvider).get(itemRequired.key);
      final reqMet = count >= itemRequired.value;
      final color = getQuestColor(reqMet);
      return TableRow(children: [
        Text('-', style: TextStyle(color: color)),
        Text('${itemRequired.key.definition().name}:',
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
