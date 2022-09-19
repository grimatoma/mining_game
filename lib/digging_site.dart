import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/widgets/status_bar.dart';

import 'item_management/item_keys.dart';

class DigEvent {
  final DateTime timestamp;
  final count = globalCount++;
  final BuiltList<ItemInstance> items;

  DigEvent(this.items, this.timestamp);

  Widget get widget => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const Text('Dig and found: '),
              Column(
                children: [
                  for (final item in items)
                    ItemRenderer(
                        showItemName: true,
                        definition: item.itemId.definition(),
                        count: item.maybeMap(
                            stackInstance: (s) => s.quantity, orElse: () => 1)),
                ],
              ),
            ],
          ),
          Text(timestamp.toIso8601String())
        ],
      );

  static var globalCount = 1;
}

class DigDropManager {
  static const possibleDrops = [
    Items.ROCK,
    Items.SMALL_ROCK,
    Items.SHARP_ROCK,
    Items.IRON_ORE,
    Items.COPPER,
  ];
  static final r = Random();

  static DigEvent get digEvent => DigEvent(
      ItemDirectory.getItem(possibleDrops[r.nextInt(possibleDrops.length)])
          .generateItemInstance(r.nextInt(5) + 1),
      DateTime.now());
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
                    final digEvent = DigDropManager.digEvent;
                    digEventsState.state = digEventsState.state.rebuild((p0) {
                      p0.add(digEvent);
                      if (p0.length > 100) {
                        p0.remove(p0.first);
                      }
                    });
                    ref
                        .read(inventoryStateProvider.notifier)
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
