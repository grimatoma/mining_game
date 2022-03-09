import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_definition.dart';

class StatusBarWidget extends HookConsumerWidget {
  const StatusBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemEntry = ref
        .watch(inventoryStateProvider)
        .items
        .entries
        .where((element) => element.key.definition() is ShowInWallet);
    return Container(
      width: 400,
      height: 50,
      color: Colors.cyanAccent[100],
      alignment: Alignment.topLeft,
      child: Center(
        child: Column(
          children: [
            Table(
              children: [
                for (final item in itemEntry)
                  TableRow(children: [
                    Center(child: Text(item.key.itemName)),
                    Center(child: Text(item.value.toString())),
                  ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
