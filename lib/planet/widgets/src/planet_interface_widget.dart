import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/inventory/item_container.dart';
import 'package:mining_game/inventory/item_directory.dart';
import 'package:mining_game/mining/auto_mining_manager.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_marker.dart';

final selectedMinerFromDropdownProvider =
    StateProvider.autoDispose<StoredMinerInstance?>((ref) {
  final availableMiners = ref.watch(storedMinersProvider);
  if (availableMiners.isNotEmpty) return availableMiners.first;
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
          ActiveMinersWidget(),
        ],
      ));
    }
    return Column(children: [
      Text('Selected Location: ${selectedTile.point.toString()}'),
      TextButton(
          onPressed: () => ref
              .read(minersControllerProvider.notifier)
              .dig(selectedTile.point, ItemContainer.single(ItemKey.IRON, 1)),
          child: const Text('dig')),
      if (!selectedTile.visible)
        TextButton(
            onPressed: () => ref
                .read(planetControllerProvider.notifier)
                .scanForResources(selectedTile.point, 1),
            child: const Text('scan')),
      if (availableMiners.isNotEmpty &&
          selectedTile.visible &&
          !ref.watch(minersControllerProvider).active.containsKey(selectedTile))
        Row(
          children: [
            const Text('Select Miner to install:'),
            DropdownButton<StoredMinerInstance>(
                value: ref.watch(selectedMinerFromDropdownProvider),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                items: availableMiners
                    .map<DropdownMenuItem<StoredMinerInstance>>((value) =>
                        DropdownMenuItem<StoredMinerInstance>(
                            child: Text(value.definition.name), value: value))
                    .toList(growable: false),
                onChanged: (StoredMinerInstance? newVal) {
                  ref.read(selectedMinerFromDropdownProvider.notifier).state =
                      newVal;
                }),
            TextButton(
                onPressed: () {
                  final selectedMiner =
                      ref.read(selectedMinerFromDropdownProvider);
                  if (selectedMiner == null) return;
                  ref.read(gameEventManagerProvider).addEvent(
                      InstallAutoMinerEvent(
                          miner: selectedMiner, point: selectedTile.point));
                },
                child: const Text('install')),
          ],
        ),
      Text(
          'Resources left at location: ${selectedTile.visible ? selectedTile.resources.toString() : 'Unknown'}'),
      const ActiveMinersWidget(),
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
        ref.watch(activeMinersProvider).values.toList(growable: false);
    return Column(
      children: [
        const Text('Active Miners'),
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (_, index) {
            final miner = miners[index];
            return Table(
              children: [
                TableRow(children: [Text(miner.definition.name)]),
                TableRow(children: [Text('Location ${miner.planetPoint}')]),
                if (miner.hasDrill) ...[
                  TableRow(
                      children: [Text('Drill type: ${miner.drill?.name}')]),
                  TableRow(children: [Text('Base damage ${miner.baseDamage}')]),
                  TableRow(
                      children: [Text('Drill damage ${miner.drillDamage}')]),
                ],
                TableRow(children: [Text('Total damage ${miner.totalDamage}')]),
                const TableRow(children: [Text('Inventory 23/100')]),
                const TableRow(children: [Text('picture of resource')]),
                if (!miner.hasDrill)
                  TableRow(children: [
                    TextButton(
                        onPressed: () {
                          ref
                              .read(gameEventManagerProvider)
                              .addEvent(DrillAttachEvent(miner: miner));
                        },
                        child: const Text('Attach drill'))
                  ]),
                if (miner.hasDrill)
                  TableRow(children: [
                    TextButton(
                        onPressed: () {
                          ref
                              .read(gameEventManagerProvider)
                              .addEvent(DrillRemoveEvent(miner: miner));
                        },
                        child: const Text('Remove drill'))
                  ]),
                TableRow(children: [
                  TextButton(
                      onPressed: () {
                        ref
                            .read(gameEventManagerProvider)
                            .addEvent(StoreMinerEvent(miner: miner));
                      },
                      child: const Text('Store Miner'))
                ]),
              ],
            );
          },
          itemCount: miners.length,
          separatorBuilder: (_, __) => const Divider(),
        ),
      ],
    );
  }
}
