import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/item_definition.dart';

class StatusBarWidget extends HookConsumerWidget {
  final ItemDefinitionId? dontNavigateForItemId;

  const StatusBarWidget({
    Key? key,
    this.dontNavigateForItemId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref
        .watch(inventoryProvider)
        .entries
        .where((entry) => entry.key.definition is ShowInWallet)
        .toBuiltList();
    return Container(
      color: Colors.cyanAccent[100],
      alignment: Alignment.topLeft,
      child: Center(
        child: Column(
          children: [
            GridView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 6,
              ),
              itemBuilder: (_, index) {
                final item = items[index];
                return ItemRenderer(
                  showItemName: true,
                  definition: item.key.definition,
                  count: item.value,
                  linkedToDetailPage: dontNavigateForItemId != item.key,
                );
              },
              itemCount: items.length,
            ),
          ],
        ),
      ),
    );
  }
}
