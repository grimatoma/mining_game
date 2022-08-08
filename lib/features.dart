import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/persistence/hive_manager.dart';
import 'package:quiver/collection.dart';

final activeFeaturesProvider =
    StateNotifierProvider<ActiveFeaturesProvider, BuiltSet<Feature>>(
        (ref) => ActiveFeaturesProvider());

// @freezed
// class ActiveFeatures with _$ActiveFeatures {
//   const ActiveFeatures._();
//
//   const factory ActiveFeatures(BuiltSet<Feature> features) = _ActiveFeatures;
//
//   factory ActiveFeatures.fromJson(Map<String, Object?> json) =>
//       _$ActiveFeaturesFromJson(json);
//
//   ActiveFeatures rebuild(Function(SetBuilder<Feature>) updates) =>
//       copyWith(features: features.rebuild((p0) => updates));
// }

class ActiveFeaturesProvider extends StateNotifier<BuiltSet<Feature>> {
  ActiveFeaturesProvider()
      : super(HiveManager.getIterable(
            BoxKey.FEATURES,
            (list) => list
                .map<Feature>((e) => $enumDecode(_featuresMap, e))
                .toBuiltSet()));
}

enum Feature {
  SMELTING,
}

final _featuresMap = buildEnumMap(Feature.values);

HashBiMap<E, String> buildEnumMap<E extends Enum>(Iterable<E> values) =>
    HashBiMap()..addAll({for (var i in values) i: i.name});
