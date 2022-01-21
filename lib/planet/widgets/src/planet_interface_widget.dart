import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/items.dart';
import 'package:mining_game/item_management/wallet.dart';
import 'package:mining_game/mining/auto_mining_manager.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_marker.dart';

final selectedMinerFromDropdownProvider =
    StateProvider.autoDispose<Miner?>((ref) {
  final availableMiners = ref.watch(availableMinersProvider);
  if (availableMiners.isNotEmpty) return availableMiners.first;
  return null;
});
final availableMinersProvider = Provider.autoDispose<List<Miner>>((ref) => ref
    .watch(inventoryProvider)
    .items
    .keys
    .where((item) => item.itemType == ItemType.MINER)
    .toList(growable: false)
    .whereType<Miner>()
    .toList(growable: false));

class PlanetInterfaceWidget extends HookConsumerWidget {
  const PlanetInterfaceWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableMiners = ref.watch(availableMinersProvider);
    final selectedTile = ref
        .watch(planetControllerProvider)
        .getTile(ref.watch(planetMarkerControllerProvider).planetPoint);
    if (selectedTile == null || !selectedTile.isValid) {
      return const Scaffold(body: Text('Select a location on the map'));
    }
    return Column(children: [
      Text('Selected Location: ${selectedTile.point.toString()}'),
      TextButton(
          onPressed: () => ref
              .read(miningControllerProvider.notifier)
              .dig(selectedTile.point, const Resources(iron: 1)),
          child: const Text('dig')),
      if (!selectedTile.visible)
        TextButton(
            onPressed: () => ref
                .read(planetControllerProvider.notifier)
                .scanForResources(selectedTile.point, 1),
            child: const Text('scan')),
      if (availableMiners.isNotEmpty && selectedTile.visible)
        Row(
          children: [
            const Text('Select Miner to install:'),
            DropdownButton<Miner>(
                value: ref.watch(selectedMinerFromDropdownProvider),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                items: availableMiners
                    .map<DropdownMenuItem<Miner>>((value) =>
                        DropdownMenuItem<Miner>(
                            child: Text(value.name), value: value))
                    .toList(growable: false),
                onChanged: (Miner? newVal) {
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
                          miner: selectedMiner, planetTile: selectedTile));
                },
                child: const Text('install')),
          ],
        ),
      Text(
          'Resources left at location: ${selectedTile.visible ? selectedTile.resources.iron.toString() : 'Unknown'}'),

      // if (!planetTile.hasAutoMiner)
      //   TextButton(
      //       onPressed: () {
      //         ref.read(storeProvider).buyAutoMiner(planetTile);
      //       },
      //       child: const Text('Add miner')),
      // if (planetTile.hasAutoMiner)
      //   TextButton(
      //       onPressed: () =>
      //           ref.read(storeProvider).updateAutoMiner(planetTile),
      //       child: const Text('Upgrade miner')),
    ]);
  }
}
