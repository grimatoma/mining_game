import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/widgets/status_bar.dart';

import 'item_management/item_keys.dart';
import 'loot_table.dart';

class ResourceCollectEvent {
  final DateTime timestamp;
  final count = globalCount++;
  final ItemContainer items;

  ResourceCollectEvent(this.items, this.timestamp);

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

// final digSiteLootTableProvider =
// StateProvider<LootTable>((ref) =>
//     LootTable(const [
//       ItemProbability(Items.IRON_ORE, 5, max: 2),
//       ItemProbability(Items.ROCK, 5),
//       ItemProbability(Items.SMALL_ROCK, 5, max: 3),
//       ItemProbability(Items.SHARP_ROCK, 5, max: 7),
//       ItemProbability(Items.COPPER_ORE, 5),
//     ]));
//
// final digDropManagerProvider = Provider<DigDropManager>(
//         (ref) => DigDropManager(ref.watch(digSiteLootTableProvider)));
//
// class DigDropManager {
//   final LootTable _lootTable;
//
//   DigDropManager(this._lootTable);
//
//   ResourceCollectEvent get digEvent =>
//       ResourceCollectEvent(_lootTable.pullLoot, DateTime.now());
// }
//
// final digEventsHistoryProvider = StateProvider<BuiltList<ResourceCollectEvent>>(
//         (ref) => BuiltList<ResourceCollectEvent>());

final digSiteManagerProvider =
    Provider<ResourceGatheringManager>((ref) => ResourceGatheringManager(ref,
        probabilities: const [
          ItemProbability(Items.IRON_ORE, 5, max: 2),
          ItemProbability(Items.ROCK, 5),
          ItemProbability(Items.SMALL_ROCK, 5, max: 3),
          ItemProbability(Items.SHARP_ROCK, 5, max: 7),
          ItemProbability(Items.COPPER_ORE, 5),
        ],
        title: 'Dig Site',
        action: 'Dig'));
final forestManagerProvider =
    Provider<ResourceGatheringManager>((ref) => ResourceGatheringManager(ref,
        probabilities: const [
          ItemProbability(Items.WOOD, 15),
          ItemProbability(Items.WOOD, 2, min: 2),
        ],
        title: 'Forest',
        action: 'Cut'));

class ResourceGatheringManager {
  final String title;
  final String action;
  final Ref _ref;
  LootTable _lootTable;

  final eventHistoryProvider = StateProvider<BuiltList<ResourceCollectEvent>>(
      (ref) => BuiltList<ResourceCollectEvent>());

  ResourceGatheringManager(
    this._ref, {
    required List<ItemProbability> probabilities,
    required this.title,
    required this.action,
  }) : _lootTable = LootTable(probabilities);

  set updateLootTable(LootTable newLootTable) => _lootTable = newLootTable;

  ResourceCollectEvent get gather {
    final newEvent = ResourceCollectEvent(_lootTable.pullLoot, DateTime.now());
    _ref.read(eventHistoryProvider.notifier).state =
        _ref.read(eventHistoryProvider).rebuild((p0) {
      p0.add(newEvent);
      if (p0.length > 100) {
        p0.remove(p0.first);
      }
    });
    _ref.read(inventoryProvider.notifier).addItems(newEvent.items);
    return newEvent;
  }

  Widget get page => ResourceSite(title, action, this);
}

class ResourceSite extends ConsumerWidget {
  final String title;
  final String action;
  final ResourceGatheringManager manager;

  const ResourceSite(
    this.title,
    this.action,
    this.manager, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventHistory = ref.watch(manager.eventHistoryProvider);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(title),
      ),
      body: Column(
        children: [
          const StatusBarWidget(),
          SizedBox(
            height: 256,
            child: Center(
              child: TextButton(
                  onPressed: () {
                    manager.gather;
                  },
                  child: Text(action, style: const TextStyle(fontSize: 64))),
            ),
          ),
          Center(
            child: Text('$action History'),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) =>
                  eventHistory[eventHistory.length - index - 1].widget,
              itemCount: eventHistory.length,
              separatorBuilder: (_, __) => const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
