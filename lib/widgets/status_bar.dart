import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/item_definitions.dart';
import 'package:mining_game/item_management/item_directory.dart';

class StatusBarWidget extends HookConsumerWidget {
  const StatusBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemDirectory = ref.watch(itemDirectoryProvider);
    final itemEntry = ref
        .watch(inventoryStateProvider)
        .items
        .entries
        .where((element) => itemDirectory[element.key] is ShowInWallet);
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
                    Center(child: Text(itemDirectory[item.key].name)),
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
