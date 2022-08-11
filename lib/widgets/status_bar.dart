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
        .watch(inventoryCountsStateProvider)
        .entries
        .where((element) => element.key.definition() is ShowInWallet);
    return Container(
      // width: 400,
      // height: 50,
      color: Colors.cyanAccent[100],
      alignment: Alignment.topLeft,
      child: Center(
        child: Column(
          children: [
            Table(
              columnWidths: {
                0: IntrinsicColumnWidth(),
                1: IntrinsicColumnWidth(),
              },
              children: [
                for (final item in itemEntry)
                  TableRow(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          item.key.definition().image,
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                          child: Text(
                              item.key.definition() is CanHavePluralName &&
                                      item.value > 1
                                  ? (item.key.definition() as CanHavePluralName)
                                          .namePlural ??
                                      item.key.itemName
                                  : item.key.itemName),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                      child: Text(item.value.toString()),
                    ),
                  ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
