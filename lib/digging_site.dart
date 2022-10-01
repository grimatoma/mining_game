import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/widgets/status_bar.dart';

import 'item_management/item_keys.dart';
import 'loot_table.dart';

class DigEvent {
  final DateTime timestamp;
  final count = globalCount++;
  final ItemContainer items;

  DigEvent(this.items, this.timestamp);

  Widget get widget => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const Text('Dig and found: '),
              Column(
                children: [
                  for (final item in items.entries)
                    ItemRenderer(
                        showItemName: true,
                        definition: item.key.definition,
                        count: item.value),
                ],
              ),
            ],
          ),
          Text(timestamp.toIso8601String())
        ],
      );

  static var globalCount = 1;
}

final digSiteLootTableProvider =
    StateProvider<LootTable>((ref) => LootTable(const [
          ItemProbability(Items.IRON_ORE, 5, max: 2),
          ItemProbability(Items.ROCK, 5),
          ItemProbability(Items.SMALL_ROCK, 5, max: 3),
          ItemProbability(Items.SHARP_ROCK, 5, max: 7),
          ItemProbability(Items.COPPER_ORE, 5),
        ]));

final digDropManagerProvider = Provider<DigDropManager>(
    (ref) => DigDropManager(ref.watch(digSiteLootTableProvider)));

class DigDropManager {
  final LootTable _lootTable;

  DigDropManager(this._lootTable);

  DigEvent get digEvent => DigEvent(_lootTable.pullLoot, DateTime.now());
}

final digEventsHistoryProvider =
    StateProvider<BuiltList<DigEvent>>((ref) => BuiltList<DigEvent>());

class DigSite extends ConsumerWidget {
  const DigSite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final digEvents = ref.watch(digEventsHistoryProvider);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Dig Site'),
      ),
      body: Column(
        children: [
          const StatusBarWidget(),
          SizedBox(
            height: 256,
            child: Center(
              child: TextButton(
                  onPressed: () {
                    final digEventsState =
                        ref.read(digEventsHistoryProvider.state);
                    final digEvent = ref.read(digDropManagerProvider).digEvent;
                    digEventsState.state = digEventsState.state.rebuild((p0) {
                      p0.add(digEvent);
                      if (p0.length > 100) {
                        p0.remove(p0.first);
                      }
                    });
                    ref
                        .read(inventoryProvider.notifier)
                        .addItems(digEvent.items);
                  },
                  child: const Text('Dig', style: TextStyle(fontSize: 64))),
            ),
          ),
          const Center(
            child: Text('Dig History'),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) =>
                  digEvents[digEvents.length - index - 1].widget,
              itemCount: digEvents.length,
              separatorBuilder: (_, __) => const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
