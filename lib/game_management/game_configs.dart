import 'package:hooks_riverpod/hooks_riverpod.dart';

final gameConfigsProvider =
    Provider<GameConfigs>((_) => const GameConfigs(50, 20, 1, 2));

class GameConfigs {
  final int width;
  final int height;
  final int depth;
  final int seed;

  const GameConfigs(this.width, this.height, this.depth, this.seed);
}
