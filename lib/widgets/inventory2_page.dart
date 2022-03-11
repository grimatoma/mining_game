import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventory2.dart';
import 'package:mining_game/item_management/item_definition.dart';

import 'status_bar_wrapped_page.dart';

final selectedItemProvider =
    StateNotifierProvider<SelectedItem, int?>((ref) => SelectedItem());

class SelectedItem extends StateNotifier<int?> {
  SelectedItem() : super(null);

  void select(int? index) => state = index;
}

class InventoryPageWidget2 extends ConsumerWidget {
  const InventoryPageWidget2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventory = ref.watch(inventoryStateProvider2).itemSlots.list;
    return StatusBarWrappedPageWidget(
        title: 'Inventory',
        builder: (context, ref) => Column(
              children: [
                Row(
                  children: [
                    TextButton(
                        onPressed: () {}, child: const Text('Add Credits)'))
                  ],
                ),
                Expanded(
                  child: GridView.builder(
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
              ],
            ));
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
    return DragTarget<int>(
      builder: (context, candidateData, rejectedData) {
        Color? color = _selected ? Colors.green[500] : Colors.blue[200];
        if (candidateData.isNotEmpty) {
          color = Colors.orange[800];
        }
        return LongPressDraggable<int>(
          data: _index,
          dragAnchorStrategy: pointerDragAnchorStrategy,
          feedback: DraggingItemWidget(_itemInstance, _index),
          child: GestureDetector(
            child: Container(
              child: ItemRenderWidget(_itemInstance),
              color: color,
            ),
            onTap: () {
              ref.read(selectedItemProvider.notifier).select(_index);
            },
          ),
        );
      },
      onWillAccept: (sourceIndex) {
        return true;
      },
      onAccept: (sourceIndex) {
        ref
            .read(inventoryStateProvider2.notifier)
            .moveItem(sourceIndex, _index);
      },
    );
  }
}

class DraggingItemWidget extends HookConsumerWidget {
  final ItemInstance? _itemInstance;
  final int _index;

  const DraggingItemWidget(
    this._itemInstance,
    this._index, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _selected = ref.watch(selectedItemProvider) == _index;
    return Container(
      child: Text('$_itemInstance'),
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
        Image.asset(_itemInstance?.itemId.definition().image ??
            'images/placeholder.png'),
        const Align(
          alignment: Alignment.topLeft,
          child: Text('topLeft'),
        ),
        const Align(
          alignment: Alignment.topRight,
          child: Text('topRight'),
        ),
        const Align(
          alignment: Alignment.bottomLeft,
          child: Text('bottomLeft'),
        ),
        const Align(
          alignment: Alignment.bottomRight,
          child: Text('bottomRight'),
        ),
      ],
    );
  }
}
