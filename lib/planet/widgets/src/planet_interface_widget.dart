import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/inventory/inventory_events.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/mining/miner_events.dart';
import 'package:mining_game/mining/miners_controller.dart';
import 'package:mining_game/planet/planet_controller.dart';
import 'package:mining_game/planet/view_to_planet_controller.dart';

final selectedMinerFromDropdownProvider =
    StateProvider.autoDispose<MinerInstance?>((ref) {
  final minerLocations = ref.watch(minerLocationsProvider);
  if (minerLocations.storedMiners.isNotEmpty) {
    return minerLocations.storedMiners.first;
  }
  return null;
});

class PlanetInterfaceWidget extends HookConsumerWidget {
  const PlanetInterfaceWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final minerLocations = ref.watch(minerLocationsProvider);
    final storedMiners = minerLocations.storedMiners;
    final selectedTile = ref.watch(markerLocationProvider);
    if (selectedTile == null || !selectedTile.isValid) {
      return Scaffold(
          body: Column(
        children: const [
          Text('Select a location on the map'),
          Flexible(flex: 1, child: ActiveMinersWidget()),
        ],
      ));
    }
    return Column(children: [
      Text('Selected Location: ${selectedTile.point.toString()}'),
      Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Column(
                  children: [
                    TextButton(
                        onPressed: () => ref
                            .read(gameEventManagerProvider)
                            .addEvent(AddItemsInventoryEvent(
                                container: ref
                                    .read(planetControllerProvider.notifier)
                                    .dig(
                                        selectedTile.point,
                                        ItemContainer.single(
                                            ItemKeys.IRON, 1)))),
                        child: const Text('dig')),
                    if (!selectedTile.visible)
                      TextButton(
                          onPressed: () => ref
                              .read(planetControllerProvider.notifier)
                              .scanForResources(selectedTile.point, 1),
                          child: const Text('scan')),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Text(
                    'Remaining resources:\n${selectedTile.visible ? selectedTile.resources.toString() : 'Unknown'}'),
                if (storedMiners.isNotEmpty &&
                    selectedTile.visible &&
                    !ref
                        .watch(minerLocationsProvider)
                        .activeMiners
                        .containsValue(selectedTile.point))
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton<MinerInstance>(
                          value: ref.watch(selectedMinerFromDropdownProvider),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          items: storedMiners
                              .map<DropdownMenuItem<MinerInstance>>((value) =>
                                  DropdownMenuItem<MinerInstance>(
                                      child: Text(value.definition.name),
                                      value: value))
                              .toList(growable: false),
                          onChanged: (MinerInstance? newVal) {
                            ref
                                .read(
                                    selectedMinerFromDropdownProvider.notifier)
                                .state = newVal;
                          }),
                      TextButton(
                          onPressed: () {
                            final selectedMiner =
                                ref.read(selectedMinerFromDropdownProvider);
                            if (selectedMiner == null) return;
                            ref.read(gameEventManagerProvider).addEvent(
                                ActivateMinerEvent(
                                    miner: selectedMiner,
                                    point: selectedTile.point));
                          },
                          child: const Text('install miner')),
                    ],
                  ),
              ],
            ),
          )
        ],
      ),
      const Flexible(flex: 1, child: ActiveMinersWidget()),
    ]);
  }
}

class ActiveMinersWidget extends HookConsumerWidget {
  const ActiveMinersWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final miners = ref
        .watch(minerLocationsProvider)
        .activeMiners
        .entries
        .toList(growable: false);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Active Miners'),
        Flexible(
          flex: 1,
          child: Scrollbar(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (_, index) {
                final entry = miners[index];
                final miner = entry.key;
                return Table(
                  children: [
                    TableRow(children: [Text(miner.definition.name)]),
                    TableRow(children: [Text('Location ${entry.key}')]),
                    // if (miner.hasDrill) ...[
                    //   TableRow(
                    //       children: [Text('Drill type: ${miner.drill?.name}')]),
                    //   TableRow(children: [Text('Base damage ${miner.baseDamage}')]),
                    //   TableRow(
                    //       children: [Text('Drill damage ${miner.drillDamage}')]),
                    // ],
                    TableRow(
                        children: [Text('Total damage ${miner.totalDamage}')]),
                    TableRow(children: [
                      Text(
                          'Inventory ${miner.hopper}/${miner.definition.baseHopperSize}')
                    ]),
                    const TableRow(children: [Text('picture of resource')]),
                    // if (!miner.hasDrill)
                    //   TableRow(children: [
                    //     TextButton(
                    //         onPressed: () {
                    //           ref.read(gameEventManagerProvider).addEvent(
                    //               DrillAttachEvent(
                    //                   miner: miner, drillId: ItemKey.TEST_DRILL));
                    //         },
                    //         child: const Text('Attach drill'))
                    //   ]),
                    // if (miner.hasDrill)
                    //   TableRow(children: [
                    //     TextButton(
                    //         onPressed: () {
                    //           ref
                    //               .read(gameEventManagerProvider)
                    //               .addEvent(DrillRemoveEvent(miner: miner));
                    //         },
                    //         child: const Text('Remove drill'))
                    //   ]),
                    // TableRow(children: [
                    //   TextButton(
                    //       onPressed: () {
                    //         ref
                    //             .read(gameEventManagerProvider)
                    //             .addEvent(StoreMinerEvent(miner: miner));
                    //       },
                    //       child: const Text('Store Miner'))
                    // ]),
                    TableRow(children: [
                      TextButton(
                          onPressed: () {
                            ref.read(gameEventManagerProvider).addEvent(
                                CollectHopperMinerEvent(miner: miner));
                          },
                          child: const Text('Collect resources'))
                    ]),
                  ],
                );
              },
              itemCount: miners.length,
              separatorBuilder: (_, __) => const Divider(),
            ),
          ),
        ),
      ],
    );
  }
}
