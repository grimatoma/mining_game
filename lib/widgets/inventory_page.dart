import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';

import 'status_bar.dart';

final selectedItemProvider = StateProvider<ItemDefinition?>((ref) => null);

class InventoryPageWidget extends HookConsumerWidget {
  const InventoryPageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final inventoryItemEntries =
        ref.watch(inventoryProvider).entries.toBuiltList();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Inventory'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const StatusBarWidget(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: () {
                    ref
                        .read(inventoryProvider.notifier)
                        .addItem(Items.CREDIT, 42);
                  },
                  child: const Text('Add Credits')),
              TextButton(
                  onPressed: () {
                    ref.read(inventoryProvider.notifier).addItem(Items.MINER1);
                  },
                  child: const Text('Add Miner')),
              TextButton(
                  onPressed: () {
                    ref
                        .read(inventoryProvider.notifier)
                        .increaseMaxItems(amount: 10);
                  },
                  child: const Text('Increase Inventory Limit')),
              TextButton(
                  onPressed: () {
                    ref
                        .read(inventoryProvider.notifier)
                        .removeItems(ref.read(inventoryProvider).items);
                  },
                  child: const Text('Clear')),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(colors: [
                  Colors.grey[800]!,
                  Colors.black,
                ], radius: 1.0, focal: Alignment.center),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: GridView.builder(
                  controller: scrollController,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    childAspectRatio: 1 / 1,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (_, index) {
                    final entry = inventoryItemEntries[index];
                    return ItemRenderWidget(
                        itemDefinition: entry.key.definition,
                        quantity: entry.value);
                  },
                  itemCount: inventoryItemEntries.length,
                  shrinkWrap: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemRenderWidget extends ConsumerWidget {
  final ItemDefinition itemDefinition;
  final int quantity;
  late final _heroTag = Random().nextInt(9999999).toString();

  ItemRenderWidget(
      {required this.itemDefinition, required this.quantity, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GestureDetector(
        onTap: () {
          context
              .push('/inventory/item/${itemDefinition.id}?heroSrc=$_heroTag');
        },
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(
                    child: SizedBox.expand(
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Hero(
                          tag: _heroTag,
                          child: itemDefinition.widget(),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    _getName(itemDefinition),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                      itemDefinition is Stackable ? quantity.toString() : ''),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getName(ItemDefinition definition) {
    if (definition is CanHavePluralName) {
      final namePlural = (definition as CanHavePluralName).namePlural;
      if (namePlural != null) {
        return namePlural;
      }
    }
    return definition.name;
  }
}
