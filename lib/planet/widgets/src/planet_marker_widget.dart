import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/mining/miners_controller.dart';
import 'package:mining_game/planet/view_to_planet_controller.dart';

class PlanetMarkerWidget extends HookConsumerWidget {
  final BoxConstraints planetRendererConstraints;

  const PlanetMarkerWidget(this.planetRendererConstraints, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final marker = ref.watch(markerLocationProvider);
    final planetScale = ref.watch(planetToImageScalerProvider);
    final transformHelper = ref.watch(planetViewTransformHelperProvider);

    if (marker == null) {
      return Container();
    }
    return Positioned.fromRect(
        rect: transformHelper.toOnTileScaled(marker.point, 2, 2),
        child: Container(
          // TODO MArker should be a fixed size to the screen Probably the
          //  miners too. think like landmarks for good maps.
          width: 1 * planetScale.x,
          height: 1 * planetScale.y,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.white,
                width: 1,
              )),
        ));
  }
}

class MinerLayerWidget extends HookConsumerWidget {
  final BoxConstraints planetRendererConstraints;
  const MinerLayerWidget(
    this.planetRendererConstraints, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final planetScreenInfo = ref.watch(planetScreenInfoControllerProvider);
    final activeMiners = ref.watch(minersControllerProvider);
    final transformHelper = ref.watch(planetViewTransformHelperProvider);
    return SizedBox(
      width: planetRendererConstraints.maxWidth,
      height: planetRendererConstraints.maxHeight,
      child: Stack(
        fit: StackFit.expand,
        children: activeMiners.active.values
            .map((miner) => Positioned.fromRect(
                rect: transformHelper.toOnTileScaled(miner.planetPoint, .8, .8),
                child: Container(
                  width: 0.5 * transformHelper.planetToImageScaler.x,
                  height: 0.5 * transformHelper.planetToImageScaler.y,
                  color: Colors.green,
                  child: Text(miner.definition.name,
                      style: const TextStyle(fontSize: 6)),
                )))
            .toList(growable: false),
      ),
    );
  }
}
