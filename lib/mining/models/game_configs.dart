import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_configs.freezed.dart';

@freezed
class GameConfigs with _$GameConfigs {
  const factory GameConfigs(int width, int height, int depth, int seed) =
      _GameConfigs;
}
