import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/mining/miner.dart';
import 'package:mining_game/mining/miners_controller.dart';
import 'package:mining_game/widgets/store_page.dart';

import 'status_bar_wrapped_page.dart';

class GaragePageWidget extends ConsumerWidget {
  const GaragePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const garageLimit = 9;
    const unlockedSlots = 4;
    final miners = ref.watch(minersControllerProvider);
    final minerList = [
      ...miners.active.values,
      ...miners.stored.values,
    ];
    return StatusBarWrappedPageWidget(
        title: 'Garage',
        builder: (context, ref) => GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              children: [
                for (var i = 0; i < garageLimit; i++) ...[
                  if (i < minerList.length) ...[
                    GarageSlotWidget(minerList[i]),
                  ] else if (i < unlockedSlots)
                    const EmptyGarageSlotWidget(),
                  if (i == unlockedSlots - 1)
                    LockedGarageSlotWidget(
                        ItemContainer.single(ItemKey.CREDIT, 2 ^ i)),
                ]
              ],
            ));
  }
}

class EmptyGarageSlotWidget extends ConsumerWidget {
  const EmptyGarageSlotWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.blue,
      child: Expanded(
        flex: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Empty',
              )),
        ),
      ),
    );
  }
}

class LockedGarageSlotWidget extends ConsumerWidget {
  final ItemContainer unlockCost;
  const LockedGarageSlotWidget(
    this.unlockCost, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.red,
      child: Column(children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Unlock Miner Slot',
                )),
          ),
        ),
        Expanded(
          flex: 3,
          child: Center(
            child: ShopButton(
              cost: unlockCost,
              active: ref.watch(inventoryStateProvider).canSubtract(unlockCost),
              onClick: () {
                ref.read(inventoryStateProvider.notifier).remove(unlockCost);
                // TODO add garage slot
              },
            ),
          ),
        )
      ]),
    );
  }
}

class GarageSlotWidget extends ConsumerWidget {
  final MinerInstance _minerInstance;
  const GarageSlotWidget(
    this._minerInstance, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) => OutlinedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MinerDetailWidget(_minerInstance)));
        },
        child: Column(
          children: [
            Container(
              width: constraints.maxWidth * .7,
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(_minerInstance.definition.image),
            ),
            SizedBox(child: Text(_minerInstance.definition.name)),
          ],
        ),
      ),
    );
  }
}

class MinerDetailWidget extends ConsumerWidget {
  final MinerInstance _minerInstance;
  const MinerDetailWidget(
    this._minerInstance, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StatusBarWrappedPageWidget(
      title: _minerInstance.definition.name,
      builder: (_, __) => Container(
        child: Text(_minerInstance.definition.description),
      ),
    );
  }
}
