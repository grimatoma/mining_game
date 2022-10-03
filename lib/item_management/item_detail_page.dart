import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/widgets/status_bar.dart';

class ItemDetailPageWidget extends ConsumerStatefulWidget {
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
  late int startingSellPrice = ref.read(inventoryProvider).items[itemId];

  @override
  Widget build(BuildContext context) {
    final ownedCount = ref.watch(inventoryProvider).items[itemId];
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
          if (item is CanSell && (item as CanSell).sellPrice != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  child: TextFormField(
                    initialValue: startingSellPrice.toString(),
                    decoration: const InputDecoration(labelText: 'Sell amount'),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (newValue) {
                      final parsed = int.tryParse(newValue);
                      if (parsed != null) {
                        setState(() {
                          startingSellPrice = parsed;
                        });
                      }
                    },
                  ),
                ),
                TextButton(
                  onPressed: startingSellPrice <= ownedCount &&
                          startingSellPrice >= 0
                      ? () {
                          ref.read(inventoryProvider.notifier).removeItems(
                              item.createSingleContainer(startingSellPrice));
                          // TODO return gold value.
                        }
                      : null,
                  child: Text('Sell $startingSellPrice'),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
