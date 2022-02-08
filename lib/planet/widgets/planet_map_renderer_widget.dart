import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/planet/planet_controller.dart';
import 'package:mining_game/planet/view_to_planet_controller.dart';
import 'package:mining_game/planet/widgets/src/planet_marker_widget.dart';
import 'package:vector_math/vector_math_64.dart';

final transformerController =
    Provider<TransformationController>((ref) => TransformationController());

class PlanetMapRenderer extends HookConsumerWidget {
  const PlanetMapRenderer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewerTransformController = ref.watch(transformerController);
    return LayoutBuilder(
      builder: (context, viewConstraints) {
        final stored = ref.watch(planetViewerConstraintsProvider);
        if (stored.x != viewConstraints.maxWidth ||
            stored.y != viewConstraints.maxHeight) {
          Future.delayed(Duration.zero, () {
            ref.read(planetViewerConstraintsProvider.notifier).update(
                Vector2(viewConstraints.maxWidth, viewConstraints.maxHeight));
          });
        }
        return GestureDetector(
          onTapDown: (details) {
            ref.read(markerLocationProvider.notifier).select(ref
                .read(planetViewTransformHelperProvider)
                .toTile(
                    viewerTransformController.toScene(details.localPosition)));
          },
          child: InteractiveViewer(
            maxScale: 8,
            // boundaryMargin: const EdgeInsets.all(8),
            transformationController: viewerTransformController,
            onInteractionUpdate: (ScaleUpdateDetails details) {
              ref
                  .read(planetInteractiveViewerTranslationProvider.notifier)
                  .update(viewerTransformController.value);
            },
            child: AbsorbPointer(
              child: Stack(children: [
                SizedBox(
                  width: viewConstraints.maxWidth,
                  height: viewConstraints.maxHeight,
                  child: FittedBox(
                      fit: BoxFit.fill,
                      child: PlanetImageWidget(viewConstraints)),
                ),
                MinerLayerWidget(viewConstraints),
                PlanetMarkerWidget(viewConstraints),
              ]),
            ),
          ),
        );
      },
    );
  }
}

class PlanetImageWidget extends ConsumerWidget {
  final BoxConstraints planetRendererConstraints;
  const PlanetImageWidget(
    this.planetRendererConstraints, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageStream = ref.watch(planetImageProvider);
    return imageStream.when(
        data: (image) {
          if (image == null) return Container();
          return CustomPaint(
            painter: PlanetImagePainter(image: image),
            child: SizedBox(
              width: image.width.toDouble(),
              height: image.height.toDouble(),
            ),
          );
        },
        loading: () => const CircularProgressIndicator(),
        error: (err, stack) => Text('Error: $err'));
  }
}

/// Paints given [ui.Image] on [ui.Canvas]
/// Repaints every time there is a new image.
class PlanetImagePainter extends CustomPainter {
  ui.Image image;

  PlanetImagePainter({required this.image});

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawImage(
        image, Offset.zero, Paint()..filterQuality = FilterQuality.none);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
