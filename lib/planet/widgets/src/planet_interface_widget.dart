import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/wallet.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_marker.dart';

class PlanetInterfaceWidget extends HookConsumerWidget {
  const PlanetInterfaceWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventory = ref.watch(walletStateProvider);
    final planetTile = ref
        .read(planetProvider)
        .getTile(ref.watch(planetMarkerProvider).planetPoint);
    return Column(
      children: [
        Text('Selected Location: ${planetTile.point.toString()}'),
        TextButton(
            onPressed: () =>
                ref.read(walletStateProvider.notifier).add(planetTile.dig(1)),
            child: const Text('dig')),
        Text('Current Iron: ${inventory.iron}'),
        if (!planetTile.visible)
          TextButton(
              onPressed: () => planetTile.scanForResources(1),
              child: const Text('scan')),
        const Text('ADD PLACE MINER HERE'),
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
        if (planetTile.visible)
          Text('Resources left at location: ${planetTile.iron.toString()}'),
      ],
    );
  }
}
