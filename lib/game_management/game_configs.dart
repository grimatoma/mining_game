import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vector_math/vector_math_64.dart';

final gameConfigsProvider =
    Provider<GameConfigs>((_) => GameConfigs(32, 16, 1, 2, Vector2.all(2)));

class GameConfigs {
  final int width;
  final int height;
  final int depth;
  final int seed;
  final Vector2 planetImageSize;

  const GameConfigs(
      this.width, this.height, this.depth, this.seed, this.planetImageSize);
}
