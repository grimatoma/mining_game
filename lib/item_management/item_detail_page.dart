import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/widgets/status_bar.dart';

class ItemDetailPageWidget extends ConsumerStatefulWidget {
  final ItemDefinition _itemDefinition;

  const ItemDetailPageWidget(
    this._itemDefinition, {
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ItemDetailPageWidgetState();
}

class _ItemDetailPageWidgetState extends ConsumerState<ItemDetailPageWidget> {
  late int sellAmount =
      ref.read(inventoryProvider).items[widget._itemDefinition.id];
  late final item = widget._itemDefinition;

  @override
  Widget build(BuildContext context) {
    final ownedCount = ref.watch(inventoryProvider).items[item.id];
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text(item.name),
      ),
      body: Column(children: [
        const StatusBarWidget(),
        Image.asset(
          item.imagePath,
          width: 256,
          fit: BoxFit.fitWidth,
        ),
        Text(item.description),
        Text('Owned: $ownedCount'),
        TextFormField(
          initialValue: sellAmount.toString(),
          decoration: InputDecoration(labelText: 'Sell amount'),
        ),
        TextButton(
            onPressed: () {
              // ref.read(inventoryProvider)
            },
            child: Text('Sell $sellAmount'))
      ]),
    );
  }
}
