import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/inventory/inventory2.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/item_keys.dart';

import 'status_bar_wrapped_page.dart';

final selectedItemProvider =
    StateNotifierProvider<SelectedItem, int?>((ref) => SelectedItem());

class SelectedItem extends StateNotifier<int?> {
  SelectedItem() : super(null);

  void select(int? index) => state = index;
}

class InventoryPageWidget2 extends HookConsumerWidget {
  const InventoryPageWidget2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final inventory = ref.watch(inventoryStateProvider2).itemSlots.list;
    return StatusBarWrappedPageWidget(
      title: 'Inventory',
      builder: (context, ref) => Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: () {
                    ref.read(inventoryStateProvider2.notifier).addItem(
                        ItemInstance.stackInstance(
                            id: ItemInstanceId.generate(),
                            itemId: ItemKeys.CREDIT,
                            quantity: 45));
                  },
                  child: const Text('Add Credits')),
              TextButton(
                  onPressed: () {
                    ref.read(inventoryStateProvider2.notifier).addItems(
                        ItemDirectory.getItem(const ItemDefinitionId('MINER1'))
                            .generateItemInstance());
                  },
                  child: const Text('Add Miner')),
              TextButton(
                  onPressed: () {
                    ref.read(inventoryStateProvider2.notifier).addSlots(1);
                  },
                  child: const Text('Add Empty slot')),
              TextButton(
                  onPressed: () {
                    ref.read(inventoryStateProvider2.notifier).clear();
                  },
                  child: const Text('Clear')),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  flex: 3,
                  child: GridView.builder(
                    controller: scrollController,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 1 / 1,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    itemBuilder: (_, index) =>
                        ItemWidget(inventory[index], index),
                    itemCount: inventory.length,
                  ),
                ),
                const Flexible(flex: 1, child: ItemDetailWidget()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemWidget extends HookConsumerWidget {
  final ItemInstance? _itemInstance;
  final int _index;
  const ItemWidget(
    this._itemInstance,
    this._index, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _selected = ref.watch(selectedItemProvider) == _index;
    return LayoutBuilder(
      builder: (context, constraints) => DragTarget<int>(
        builder: (context, candidateData, rejectedData) {
          Color? color = _selected ? Colors.green[500] : Colors.blue[200];
          if (candidateData.isNotEmpty) {
            color = Colors.orange[800];
          }
          final widget = GestureDetector(
            child: Container(
              child: ItemRenderWidget(_itemInstance),
              color: color,
            ),
            onTap: () {
              ref.read(selectedItemProvider.notifier).select(_index);
            },
          );
          return _itemInstance == null
              ? widget
              : LongPressDraggable<int>(
                  data: _index,
                  delay: const Duration(milliseconds: 10),
                  dragAnchorStrategy: pointerDragAnchorStrategy,
                  feedback:
                      DraggingItemWidget(_itemInstance, _index, constraints),
                  child: widget,
                  onDragStarted: () {
                    ref.read(selectedItemProvider.notifier).select(_index);
                  },
                );
        },
        onWillAccept: (sourceIndex) {
          return true;
        },
        onAccept: (sourceIndex) {
          ref
              .read(inventoryStateProvider2.notifier)
              .moveItem(sourceIndex, _index);
          ref.read(selectedItemProvider.notifier).select(_index);
        },
      ),
    );
  }
}

class DraggingItemWidget extends HookConsumerWidget {
  final ItemInstance? _itemInstance;
  final int _index;
  final BoxConstraints _boxConstraints;

  const DraggingItemWidget(
    this._itemInstance,
    this._index,
    this._boxConstraints, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _selected = ref.watch(selectedItemProvider) == _index;
    return Container(
      constraints: _boxConstraints,
      child: ItemRenderWidget(_itemInstance),
      color: _selected ? Colors.green[800] : Colors.blue[500],
    );
  }
}

class ItemRenderWidget extends ConsumerWidget {
  final ItemInstance? _itemInstance;
  const ItemRenderWidget(this._itemInstance, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.fill,
                child: _itemInstance != null
                    ? Image.asset(_itemInstance!.itemId.definition().image)
                    : null,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            _getName(_itemInstance),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(_itemInstance?.maybeMap(
                  stackInstance: (stack) {
                    return stack.quantity.toString();
                  },
                  orElse: () => '') ??
              ''),
        ),
      ],
    );
  }

  String _getName(ItemInstance? itemInstance) {
    if (itemInstance == null) return '';
    final definition = _itemInstance!.itemId.definition();
    if (definition is HasPluralName) {
      return (definition as HasPluralName).namePlural;
    }
    return definition.name;
  }
}

class ItemDetailWidget extends ConsumerWidget {
  const ItemDetailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedItemProvider);
    if (selectedIndex == null) {
      return Container();
    }
    final itemInstance =
        ref.watch(inventoryStateProvider2).itemSlots[selectedIndex];
    if (itemInstance == null) {
      return Container();
    }

    final definition = itemInstance.itemId.definition();
    // This should have a fitted box or seomthing
    // https://stackoverflow.com/questions/57803737/flutter-renderflex-children-have-non-zero-flex-but-incoming-height-constraints
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          Expanded(
              child: Center(
                  child: Image.asset(itemInstance.itemId.definition().image))),
          Expanded(
            child: Column(
              children: [
                Text(definition.name),
                const Text(
                    'dddddddddddddddddddddd dddddddddddddddddddddddddddddddddddddddddddddddddddd ddddddddddddddddddddddddddd'),
                Flexible(child: Text(definition.name)),
                Flexible(child: Text(definition.description)),
                TextButton(onPressed: () {}, child: const Text('Sell')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
