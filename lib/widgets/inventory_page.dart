import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/item_definitions.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/mining/miners_controller.dart';

import 'status_bar.dart';

class InventoryPageWidget extends HookConsumerWidget {
  const InventoryPageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventory = ref.watch(inventoryStateProvider);
    final itemDirectory = ref.watch(itemDirectoryProvider);
    final itemKeys = inventory.items.keys
        .where((key) => itemDirectory[key] is! HideInInventory)
        .toList();

    final storedMiners = ref
        .watch(minersControllerProvider)
        .stored
        .values
        .toList(growable: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventory'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const StatusBarWidget(),
          Flexible(
            child: Column(
              children: [
                const Text('Items'),
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    final item = itemDirectory[itemKeys[index]];
                    return Table(
                      children: [
                        TableRow(
                            children: [const Text('Name'), Text(item.name)]),
                        TableRow(children: [
                          const Text('Description'),
                          Text(item.description)
                        ]),
                        TableRow(children: [
                          const Text('Amount'),
                          Text(inventory.items[itemKeys[index]].toString())
                        ]),
                      ],
                    );
                  },
                  itemCount: itemKeys.length,
                  separatorBuilder: (_, __) => const Divider(),
                ),
                const Text('Miners'),
                ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    final miner = storedMiners[index];
                    final definition = miner.definition;
                    return Table(
                      children: [
                        TableRow(children: [
                          const Text('Name'),
                          Text(definition.name)
                        ]),
                        TableRow(children: [
                          const Text('Description'),
                          Text(definition.description)
                        ]),
                        TableRow(children: [
                          const Text('Damage'),
                          Text(definition.baseDamage.toString())
                        ]),
                      ],
                    );
                  },
                  itemCount: storedMiners.length,
                  separatorBuilder: (_, __) => const Divider(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
