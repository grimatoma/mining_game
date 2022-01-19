import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/store.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_marker.dart';

class PlanetInterfaceWidget extends HookConsumerWidget {
  const PlanetInterfaceWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventory = ref.watch(inventoryStateProvider);
    final planetTile = ref
        .read(planetProvider)
        .getTile(ref.watch(planetMarkerProvider).planetPoint);
    return Row(
      children: [
        Text(planetTile.point.toString()),
        TextButton(
            onPressed: () => ref
                .read(inventoryStateProvider.notifier)
                .addIron(planetTile.dig(1)),
            child: const Text('dig')),
        Text('Iron: ${inventory.iron}'),
        if (!planetTile.visible)
          TextButton(
              onPressed: () => planetTile.scanForResources(1),
              child: const Text('scan')),
        if (!planetTile.hasAutoMiner)
          TextButton(
              onPressed: () {
                print('try buy miner');
                ref.read(storeProvider).buyAutoMiner(planetTile);
              },
              child: const Text('Add miner')),
        if (planetTile.hasAutoMiner)
          TextButton(
              onPressed: () =>
                  ref.read(storeProvider).updateAutoMiner(planetTile),
              child: const Text('Upgrade miner')),
        Text(planetTile.iron.toString()),
      ],
    );
  }
}
