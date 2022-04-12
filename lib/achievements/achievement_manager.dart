import 'package:hooks_riverpod/hooks_riverpod.dart';

final achievementManagerProducer =
    StateNotifierProvider<AchievementManager, Achievements>(
        (ref) => AchievementManager());

class Achievements {}

class AchievementManager extends StateNotifier<Achievements> {
  AchievementManager() : super(Achievements());
}
