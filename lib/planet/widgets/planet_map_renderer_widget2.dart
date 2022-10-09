import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
//  final viewerTransformController = ref.watch(transformerController);
    final transformationController = useTransformationController();
    final selectedPlanet = ref.watch(selectedPlanetProvider);
    // return Center(
    // child:
    return LayoutBuilder(builder: (context, viewConstraints) {
      // final stored = ref.watch(planetViewerConstraintsProvider);
      // if (stored.x != viewConstraints.maxWidth ||
      //     stored.y != viewConstraints.maxHeight) {
      //   Future.delayed(Duration.zero, () {
      //     ref.read(planetViewerConstraintsProvider.notifier).update(
      //         Vector2(viewConstraints.maxWidth, viewConstraints.maxHeight));
      //   });
      // }
      final selectedPlanet = ref.watch(selectedPlanetProvider);
      return Center(
        child: InteractiveViewer(
            maxScale: 4,
            minScale: 1,
            boundaryMargin: EdgeInsets.symmetric(
                vertical: viewConstraints.maxHeight / 16,
                horizontal: viewConstraints.maxWidth / 16),
            // boundaryMargin: const EdgeInsets.all(25),
            transformationController: transformationController,
            constrained: false,
            onInteractionUpdate: (ScaleUpdateDetails details) {
              // ref
              //     .read(planetInteractiveViewerTranslationProvider.notifier)
              //     .update(viewerTransformController.value);
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: SizedBox(
                  width: selectedPlanet.width * 32,
                  height: selectedPlanet.height * 32,
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      for (int y = 0; y < selectedPlanet.height; y++)
                        TableRow(children: [
                          for (final tile in selectedPlanet.tiles[y])
                            TileWidget(tile),
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
            )),
      );
    });
  }
}

class TileWidget extends ConsumerWidget {
  final TileStateController _controller;

  const TileWidget(this._controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Image.asset('assets/images/placeholder.png'),
        Text('${_controller.x},${_controller.y}'),
        Text('${_controller.},${_controller.y}'),
      ],
    );
  }
}
