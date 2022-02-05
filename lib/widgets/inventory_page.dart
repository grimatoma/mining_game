import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/item_definitions.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/mining/miner.dart';
import 'package:mining_game/mining/miners_controller.dart';

import 'status_bar_wrapped_page.dart';

class _InventoryListItem {
  final String? header;
  final BaseItemForDirectory? item;
  final StoredMinerInstance? miner;
  _InventoryListItem({this.header, this.item, this.miner});

  Widget build(WidgetRef ref) {
    final header = this.header;
    if (header != null) {
      return Text(header);
    }
    final item = this.item;
    if (item != null) {
      final inventory = ref.watch(inventoryStateProvider);
      return Table(
        children: [
          TableRow(children: [const Text('Name'), Text(item.name)]),
          TableRow(
              children: [const Text('Description'), Text(item.description)]),
          TableRow(children: [
            const Text('Amount'),
            Text(inventory.items[item.itemKey].toString())
          ]),
        ],
      );
    }
    final miner = this.miner;
    if (miner != null) {
      final definition = miner.definition;
      return Table(
        children: [
          TableRow(children: [const Text('Name'), Text(definition.name)]),
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
    }
    throw Exception('');
  }
}

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

    final inventoryItems = [
      _InventoryListItem(header: 'Items'),
      for (final item in itemKeys)
        _InventoryListItem(item: itemDirectory[item]),
      _InventoryListItem(header: 'Miners'),
      for (final miner in storedMiners) _InventoryListItem(miner: miner),
    ];

    return StatusBarWrappedPageWidget(
        title: 'Inventory',
        builder: (context, ref) => ListView.separated(
              itemBuilder: (_, index) => inventoryItems[index].build(ref),
              itemCount: inventoryItems.length,
              separatorBuilder: (_, __) => const Divider(),
            ));
  }
}
