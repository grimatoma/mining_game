import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/mining/auto_mining_manager.dart';
import 'package:mining_game/planet/planet_marker.dart';

class PlanetMarkerWidget extends HookConsumerWidget {
  const PlanetMarkerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planetScreenInfo = ref.watch(planetScreenInfoControllerProvider);
    final cursorLocation = planetScreenInfo.cursorLocationScreen;
    return Positioned(
        left: cursorLocation.dx + planetScreenInfo.xScale * 0.35,
        top: cursorLocation.dy + planetScreenInfo.yScale * 0.35,
        child: Container(
          width: 0.3 * planetScreenInfo.xScale,
          height: 0.3 * planetScreenInfo.yScale,
          color: Colors.blue,
        ));
  }
}

class MinerLayerWidget extends HookConsumerWidget {
  final double screenWidth;
  final double screenHeight;
  const MinerLayerWidget(
    this.screenWidth,
    this.screenHeight, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planetScreenInfo = ref.watch(planetScreenInfoControllerProvider);
    return SizedBox(
      width: screenWidth,
      height: screenHeight,
      child: Stack(
        fit: StackFit.expand,
        children: [
          for (final miner in ref.watch(miningControllerProvider).miners.values)
            Positioned(
                left:
                    planetScreenInfo.screenLocation(miner.planetTile.point).dx +
                        0.25 * planetScreenInfo.xScale,
                top:
                    planetScreenInfo.screenLocation(miner.planetTile.point).dy +
                        0.25 * planetScreenInfo.yScale,
                child: Container(
                  width: 0.5 * planetScreenInfo.xScale,
                  height: 0.5 * planetScreenInfo.yScale,
                  color: Colors.green,
                  child: Text(miner.miner.name,
                      style: const TextStyle(fontSize: 6)),
                ))
        ],
      ),
    );
  }
}
