import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/mining/auto_mining_manager.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_marker.dart';

class PlanetMarkerWidget extends HookConsumerWidget {
  const PlanetMarkerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var marker = ref.watch(planetMarkerControllerProvider);
    return Positioned(
        left: marker.x,
        top: marker.y,
        child: Container(
          width: 1,
          height: 1,
          color: Colors.blue,
        ));
  }
}

class MinerLayerWidget extends HookConsumerWidget {
  const MinerLayerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: ref.watch(planetControllerProvider).width.toDouble(),
      height: ref.watch(planetControllerProvider).height.toDouble(),
      child: Stack(
        children: [
          for (final miner in ref.watch(miningControllerProvider).miners.values)
            Positioned(
                left: miner.planetTile.point.x.toDouble() + 0.25,
                top: miner.planetTile.point.y.toDouble() + 0.25,
                child: Container(
                  width: .5,
                  height: .5,
                  color: Colors.green,
                  // child: Text(miner.miner.name),
                ))
        ],
      ),
    );
  }
}
