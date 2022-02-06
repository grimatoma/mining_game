import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/mining/miner.dart';
import 'package:mining_game/mining/miner_events.dart';
import 'package:mining_game/mining/miners_controller.dart';
import 'package:mining_game/planet/planet_controller.dart';
import 'package:mining_game/planet/planet_marker.dart';

final selectedMinerFromDropdownProvider =
    StateProvider.autoDispose<StoredMinerInstance?>((ref) {
  final availableMiners = ref.watch(storedMinersProvider);
  if (availableMiners.isNotEmpty) return availableMiners.values.first;
  return null;
});

class PlanetInterfaceWidget extends HookConsumerWidget {
  const PlanetInterfaceWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableMiners = ref.watch(storedMinersProvider);
    final selectedTile = ref.watch(planetControllerProvider).getTile(
        ref.watch(planetScreenInfoControllerProvider).cursorPlanetPoint);
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
                            .read(inventoryStateProvider.notifier)
                            .add(ref
                                .read(planetControllerProvider.notifier)
                                .dig(selectedTile.point,
                                    ItemContainer.single(ItemKey.IRON, 1))),
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
                if (availableMiners.isNotEmpty &&
                    selectedTile.visible &&
                    !ref
                        .watch(minersControllerProvider)
                        .activeLocations
                        .containsKey(selectedTile))
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton<StoredMinerInstance>(
                          value: ref.watch(selectedMinerFromDropdownProvider),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          items: availableMiners.values
                              .map<DropdownMenuItem<StoredMinerInstance>>(
                                  (value) =>
                                      DropdownMenuItem<StoredMinerInstance>(
                                          child: Text(value.definition.name),
                                          value: value))
                              .toList(growable: false),
                          onChanged: (StoredMinerInstance? newVal) {
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
                                InstallAutoMinerEvent(
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
    final miners =
        ref.watch(activeMinerLocationsProvider).values.toList(growable: false);
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
                final miner = miners[index];
                return Table(
                  children: [
                    TableRow(children: [Text(miner.definition.name)]),
                    TableRow(children: [Text('Location ${miner.planetPoint}')]),
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
