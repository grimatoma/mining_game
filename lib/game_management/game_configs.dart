import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vector_math/vector_math_64.dart';

final gameConfigsProvider = Provider<GameConfigs>((_) => GameConfigs(
      width: 15,
      height: 10,
      depth: 0,
      seed: 2,
      planetImageSize: Vector2.all(2),
      maxGarageSlots: 9,
      houseManagerTicksPerUpdate: 30,
    ));

class GameConfigs {
  final int width;
  final int height;
  final int depth;
  final int seed;
  final Vector2 planetImageSize;
  final int maxGarageSlots;
  final int houseManagerTicksPerUpdate;

  const GameConfigs(
      {required this.houseManagerTicksPerUpdate,
      required this.width,
      required this.height,
      required this.depth,
      required this.seed,
      required this.planetImageSize,
      required this.maxGarageSlots});
}
