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
      alignment: Alignment.topLeft,
      child: SizedBox(
        width: 400,
        child: Column(
          children: [
            const Text('Mining Game'),
            Table(
              children: [
                for (final item in itemEntry)
                  TableRow(children: [
                    Text(itemDirectory[item.key].name),
                    Text(item.value.toString()),
                  ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
