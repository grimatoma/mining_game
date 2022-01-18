import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/mining/models/mining/auto_mining_manager.dart';

final gameCoreProvider = Provider<void>((ref) {
  ref.watch(autoMiningManagerProvider);
  // ref.refresh(provider)
});
