import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/mining/models/mining/planet_tile.dart';

import 'mixins/void_stream_provider_mixin.dart';
import 'models/game_configs.dart';
import 'models/point.dart';

final gameConfigsProvider =
    Provider<GameConfigs>((_) => const GameConfigs(100, 30, 1, 2));

final planetProvider = Provider<Planet>((ref) {
  final configs = ref.watch(gameConfigsProvider);
  return Planet(configs: configs);
});

// final planetMapProvider = Provider<BuiltMap<Point, PlanetTile>>((ref) {
//   return ref.watch(resourceMapProvider).planetMap;
// });
// final planetControllerProvider =
//     StateProvider((ref) => PlanetController(ref.watch(resourceMapProvider)));

// class PlanetController extends StateNotifier<Planet> {
//   final Planet planet;

//   PlanetController(this.planet) : super(planet);
// }

class Planet with VoidChangeStreamAndStreamProvider {
  late int maxResourceSize;
  final int width;
  final int height;
  final int depth;
  Map<PlanetPoint, PlanetTile> get planetMap => _planetMap;
  late Map<PlanetPoint, PlanetTile> _planetMap;

  Planet({required GameConfigs configs})
      : width = configs.width,
        height = configs.height,
        depth = configs.depth {
    planetImage();
    const z = 0;

    // change to spare populating
    _planetMap = <PlanetPoint, PlanetTile>{};
    maxResourceSize = 0;
    final random = Random(configs.seed);
    for (var x = 0; x < configs.width; x++) {
      for (var y = 0; y < configs.height; y++) {
        final resourceSize = random.nextInt(1000);
        final p = PlanetPoint(x, y, z);
        planetMap[p] = PlanetTile(p, this, resourceSize);
        maxResourceSize =
            maxResourceSize > resourceSize ? maxResourceSize : resourceSize;
      }
    }
  }

  PlanetTile getTile(PlanetPoint p) =>
      planetMap.putIfAbsent(p, () => PlanetTile(p, this, 0));

  Uint8List planetImage() {
    return Uint8List(0);
    //  var pictureRecorder = PictureRecorder();
    //  // add rect?
    //  var canvas = Canvas(pictureRecorder);
    //  final points = [
    //    Offset(50, 100),
    //    Offset(150, 75),
    //    Offset(250, 250),
    //    Offset(130, 200),
    //    Offset(270, 100),
    //  ];
    //  final paint = Paint()
    //    ..color = Colors.black
    //    ..strokeWidth = 4
    //    ..strokeCap = StrokeCap.round;
    //  canvas.drawPoints(PointMode.points, points, paint);
    //  // final image =  await ;
    //  final image = pictureRecorder.endRecording();
    //
    //  planetImage2 = (await (await image.toImage(300, 300)).toByteData())!.buffer.asUint8List();
    // notifyUpdate();

    // var image = i.Image(2,1);
    // image.setPixelRgba(0, 0, 255, 0, 0);
    // image.setPixelRgba(1, 0, 0, 255, 0);
    // // return image.getBytes();
    //
    // final i2 = Image.memory(image.getBytes());
    //  var pictureRecorder = PictureRecorder();
    //  // add rect?
    //  var canvas = Canvas(pictureRecorder);
    //  canvas.drawImage(i2, Offset.zero, Paint());
    //
    // // var png = i.encodePng(image);
    //
    // png.
    // final c = Color.fromRGBO(5, 10, 150, 200);
    // utf8.decode([c.value]);
    // Color;
    // return Uint8List.fromList([
    // for (var x = 0; x < width; x++)
    // for (var y = 0; y < height; y++)

    // ]);
  }

  int dig(PlanetPoint p, int strength) {
    final tile = planetMap[p];
    if (tile == null) return 0;
    final oldIron = tile.iron;
    tile.iron = max(tile.iron - strength, 0);
    return oldIron - tile.iron;
  }

  int scanForResources(PlanetPoint p, int radius) {
    notifyUpdate();
    return _resourceValue(_scan(p, radius));
  }

  List<PlanetPoint> _scan(PlanetPoint p, int radius) {
    // to be lazy for now it returns everything around it
    final points = [
      for (var x = p.x - 1; x <= p.x + 1; x++)
        for (var y = p.y - 1; y <= p.y + 1; y++)
          if (x >= 0 && x < width && y >= 0 && y < height) PlanetPoint(x, y, 0)
    ];
    for (final point in points) {
      planetMap[point]?.visible = true;
    }
    return points;
  }

  int _resourceValue(List<PlanetPoint> points) {
    return points.fold(
        0,
        (previousValue, element) =>
            previousValue += planetMap[element]?.iron ?? 0);
  }

  tileColor(PlanetTile planetTile) => Color.fromARGB(
      255, min(255, (255 * planetTile.iron / maxResourceSize)).toInt(), 0, 0);
}
