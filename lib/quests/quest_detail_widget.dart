import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/quests/townsfolk_definition.dart';
import 'package:mining_game/widgets/status_bar_wrapped_page.dart';

import 'quest_providers.dart';
import 'quests_page.dart';

class QuestDetailWidget extends ConsumerWidget {
  final QuestDefinitionId _questId;

  const QuestDetailWidget(
    this._questId, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void noQuestReturn() {
      Future.delayed(Duration.zero, () {
        context.go('/quests');
      });
    }

    final quest = ref.watch(allQuestsProvider)[_questId];
    final questStatus = ref.watch(questStatusProvider)[_questId];
    if (questStatus == null || quest == null) {
      noQuestReturn();
      return Container();
    }
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(quest.name),
        ),
        body: StatusBarWrappedPageWidget(
            title: quest.name,
            builder: (_, __) => Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          context.go('/quests');
                        },
                        child: const Text('back')),
                    Text(questStatus.toString()),
                    QuestListDetail(questStatus),
                    if (questStatus.requirementsMet)
                      TextButton(
                          onPressed: () {
                            ref
                                .read(completedQuestsProvider.notifier)
                                .markCompleted(quest);
                            context.go('/quests');
                          },
                          child: const Text('Complete Quest')),
                  ],
                )),
      ),
    );
  }
}
