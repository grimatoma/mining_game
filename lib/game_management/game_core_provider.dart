import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_clock.dart';
import 'package:mining_game/persistence/save_syncer.dart';

final gameCoreProvider = Provider<void>((ref) {
  ref.watch(gameClockProvider);
  ref.watch(saveProvider).init();
});
