import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/persistence/hive_manager.dart';
import 'package:mining_game/persistence/synced.dart';

final activeFeaturesProvider =
    StateNotifierProvider<ActiveFeaturesProvider, SyncedSet<Feature>>(
        (ref) => ActiveFeaturesProvider());

class ActiveFeaturesProvider extends StateNotifier<SyncedSet<Feature>> {
  ActiveFeaturesProvider()
      : super(SyncedSet<Feature>.load(BoxKey.FEATURES,
            convert: (feature) => feature.name,
            loadFunction: (features) => features
                .map((e) =>
                    Feature.values.firstWhere((element) => element.name == e))
                .toSet()));
}

enum Feature {
  SMELTING,
}
