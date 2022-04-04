import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/quests/quest_definition.dart';
import 'package:mining_game/widgets/status_bar_wrapped_page.dart';

import 'quest_providers.dart';
import 'quests_page.dart';

class QuestDetailWidget extends ConsumerWidget {
  final QuestStatus _questStatus;

  const QuestDetailWidget(
    this._questStatus, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!ref.watch(activeQuestStatusProvider).contains(_questStatus)) {
      Future.delayed(Duration.zero, () {
        Navigator.pop(context);
      });
    }
    return StatusBarWrappedPageWidget(
        title: _questStatus.definition.name,
        builder: (_, __) => Column(
              children: [
                Text(_questStatus.toString()),
                QuestListDetail(_questStatus),
                if (_questStatus.requirementsMet)
                  TextButton(
                      onPressed: () {
                        ref
                            .read(completedQuestsProvider.notifier)
                            .markCompleted(_questStatus.definition);
                      },
                      child: const Text('Compelte Quest')),
              ],
            ));
  }
}
