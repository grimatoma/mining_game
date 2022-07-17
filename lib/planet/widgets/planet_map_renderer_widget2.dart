import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/planet/planet_manager.dart';

class PlanetMapRendererWidget2 extends StatefulHookConsumerWidget {
  const PlanetMapRendererWidget2({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PlanetMapRendererWidget2State();
}

class _PlanetMapRendererWidget2State
    extends ConsumerState<PlanetMapRendererWidget2> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, viewConstraints) {
      final selectedPlanet = ref.watch(selectedPlanetProvider);
      return InteractiveViewer(
        constrained: false,
        minScale: 0.01,
        maxScale: 5,
        child: Padding(
          padding: const EdgeInsets.all(128.0),
          child: Container(
            width: selectedPlanet.width * 64,
            height: selectedPlanet.height * 64,
            color: Colors.teal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FittedBox(
                fit: BoxFit.fill,
                child: SizedBox(
                  width: selectedPlanet.width * 64,
                  height: selectedPlanet.height * 64,
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      for (int y = 0; y < selectedPlanet.height; y++)
                        TableRow(children: [
                          // for (final tile in selectedPlanet.tiles[y])
                          //   TileWidget(tile),
                        ])
                    ],
                  ),
                  //           )
                  //           // Stack(children: [
                  //           //   SizedBox(
                  //           //     width: viewConstraints.maxWidth,
                  //           //     height: viewConstraints.maxHeight,
                  //           //     child: FittedBox(
                  //           //         fit: BoxFit.fill,
                  //           //         child: PlanetImageWidget(viewConstraints)),
                  //           //   ),
                  //           //   // MinerLayerWidget(viewConstraints),
                  //           //   // PlanetMarkerWidget(viewConstraints),
                  //           // ]),
                  //           );
                  //     },
                  //   ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class TileWidget extends ConsumerWidget {
  final TileStateController _controller;

  const TileWidget(this._controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tileState = ref.watch(_controller.provider);
    return SizedBox(
      height: 64,
      width: 64,
      child: InkResponse(
        onTap: () {
          ref.read(selectedTileControllerProvider.notifier).state = _controller;
          ref.read(panelVisibilityState.notifier).state =
              PanelVisibility.TileDetail;
        },
        child: Stack(
          children: [
            Image.asset('assets/images/empty_inventory_slot.png'),
            if (tileState.doodad != null) ...[
              if (tileState.doodad?.imageAsset != null)
                Image.asset((tileState.doodad?.imageAsset)!),
            ],
            if (ref.watch(selectedTileControllerProvider) == _controller)
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 5)),
              ),
          ],
        ),
      ),
    );
  }
}
