import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/widgets/status_bar.dart';

class ItemDetailPageWidget extends StatefulHookConsumerWidget {
  final ItemDefinition _itemDefinition;
  final String? heroTag;

  const ItemDetailPageWidget(
    this._itemDefinition, {
    Key? key,
    this.heroTag,
  }) : super(key: key);

  @override
  ConsumerState createState() => _ItemDetailPageWidgetState();
}

class _ItemDetailPageWidgetState extends ConsumerState<ItemDetailPageWidget> {
  late final item = widget._itemDefinition;
  late final itemId = item.id;
  late int amountToSell = ref.read(inventoryProvider).items[itemId];

  @override
  Widget build(BuildContext context) {
    final ownedCount = ref.watch(inventoryProvider).items[itemId];
    final textEditingController = useTextEditingController(
      text: amountToSell.toString(),
    );
    final sellPrice =
        item is CanSell ? amountToSell * (item as CanSell).sellPrice! : 0;
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text(item.name),
      ),
      body: Column(
        children: [
          StatusBarWidget(dontNavigateForItemId: itemId),
          Hero(
            tag: widget.heroTag ?? 'N/A',
            child: Image.asset(
              item.imagePath,
              width: 256,
              fit: BoxFit.fitWidth,
            ),
          ),
          Text(item.description),
          Text('Owned: $ownedCount'),
          if (item is CanSell)
            Text('Sell Price: ${(item as CanSell).sellPrice}'),
          if (item is CanSell && (item as CanSell).sellPrice != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  child: TextFormField(
                    controller: textEditingController,
                    decoration: const InputDecoration(labelText: 'Sell amount'),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (newValue) {
                      final parsed = int.tryParse(newValue);
                      setState(() {
                        if (parsed != null && parsed <= ownedCount) {
                          amountToSell = parsed;
                        } else {
                          textEditingController.text = amountToSell.toString();
                        }
                      });
                    },
                  ),
                ),
                TextButton(
                  onPressed: amountToSell <= ownedCount && amountToSell >= 0
                      ? () {
                          final amountSold = amountToSell;
                          final soldPrice = sellPrice;
                          ref.read(inventoryProvider.notifier).removeItems(
                              item.createSingleContainer(amountToSell));
                          setState(() {
                            amountToSell =
                                ref.read(inventoryProvider).itemCount(itemId);
                            textEditingController.text = '$amountToSell';
                          });
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: Text('Sold ${item.name}'),
                                    content: Text(
                                        'You sold${amountSold > 1 ? ' $amountSold' : ''} ${item.name} for $soldPrice gold.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('OK'),
                                      )
                                    ],
                                  ));
                        }
                      : null,
                  child: Text('Sell $amountToSell for $sellPrice'),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
