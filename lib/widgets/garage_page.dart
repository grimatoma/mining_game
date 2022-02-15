import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_configs.dart';
import 'package:mining_game/garage_controller.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/mining/miner.dart';
import 'package:mining_game/mining/miners_controller.dart';
import 'package:mining_game/widgets/store_page.dart';

import 'status_bar_wrapped_page.dart';

final _unHousedMinersProvider = Provider<BuiltList<MinerInstance>>((ref) {
  final slottedMiners = ref
      .watch(garageProvider)
      .slots
      .values
      .whereType<SlotWithMiner>()
      .map((e) => e.miner)
      .toSet();
  return ref
      .watch(minersProvider)
      .miners
      .values
      .where((e) => !slottedMiners.contains(e))
      .toBuiltList();
});

class GaragePageWidget extends ConsumerWidget {
  const GaragePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final garageState = ref.watch(garageProvider);
    return StatusBarWrappedPageWidget(
        title: 'Garage',
        builder: (context, ref) => GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              children: [
                // for (final slotEntry in garageState.slots.entries)
                //   slotEntry.value.when(
                //       withMiner: (s) => GarageSlotWidget(s),
                //       locked: () => LockedGarageSlotWidget(
                //           ItemContainer.single(ItemKey.CREDIT, 2 ^ slotEntry.key)),
                //       empty: () => EmptyGarageSlotWidget()),
                for (var i = 0;
                    i < ref.watch(gameConfigsProvider).maxGarageSlots;
                    i++)
                  garageState.getSlot(i).when(
                      withMiner: (_, __) => GarageSlotWidget(
                          garageState.getSlot(i) as SlotWithMiner),
                      locked: (_) => LockedGarageSlotWidget(
                          garageState.getSlot(i) as LockedSlot),
                      empty: (_) => EmptyGarageSlotWidget(
                          garageState.getSlot(i) as EmptySlot))
              ],
            ));
  }
}

class EmptyGarageSlotWidget extends ConsumerWidget {
  final EmptySlot slot;
  const EmptyGarageSlotWidget(
    this.slot, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FittedBox(
            fit: BoxFit.contain,
            child: Column(
              children: [
                const Text(
                  'Empty',
                ),
                Row(
                  children: [
                    const Text('Add Miner'),
                    DropdownButton<MinerInstance>(
                      items: [
                        for (final miner in ref.watch(_unHousedMinersProvider))
                          DropdownMenuItem<MinerInstance>(
                              value: miner, child: Text(miner.definition.name)),
                      ],
                      onChanged: (miner) {
                        ref
                            .read(garageProvider.notifier)
                            .addMinerToSlot(slot, miner!);
                      },
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

class LockedGarageSlotWidget extends ConsumerWidget {
  final LockedSlot slot;
  const LockedGarageSlotWidget(
    this.slot, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cost = ref.watch(garageProvider.notifier).unlockCost(slot.index);
    return Container(
      color: Colors.red,
      child: Column(children: [
        const Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(16.0),
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
              cost: cost,
              active: ref.watch(inventoryStateProvider).canSubtract(cost),
              onClick: () {
                ref.read(garageProvider.notifier).unlockSlot(slot);
              },
            ),
          ),
        )
      ]),
    );
  }
}

class GarageSlotWidget extends ConsumerWidget {
  final SlotWithMiner _slotWithMiner;
  const GarageSlotWidget(
    this._slotWithMiner, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final minerInstance = _slotWithMiner.miner;
    return LayoutBuilder(
      builder: (context, constraints) => OutlinedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MinerDetailWidget(minerInstance)));
        },
        child: Column(
          children: [
            Container(
              width: constraints.maxWidth * .7,
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(minerInstance.definition.image),
            ),
            SizedBox(child: Text(minerInstance.definition.name)),
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
