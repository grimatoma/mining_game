import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/widgets/planet_page.dart';

import '../base/doodad_definition.dart';
import '../base/tickable_doodad.dart';

part 'tree_doodad.g.dart';

abstract class RegenerativeHarvestableDoodadInterface
    extends TickableDoodadInterface {
  double get resourceRequiredToHarvestOne;

  double get resourceMax;

  double get resourceIncreasePerTick;

  int? get manualEffortToHarvest;

  Map<int, String>? get dynamicImageAssets;

  ItemContainer get resourceGenerated;
}

// class RegenerativeHarvestableDoodadState extends DoodadState {
//   double currentResources = 1;
//   int effortCount = 0;
// }

const currentResourcesField = 'currentResources';
const effortCountField = 'effortCount';

@JsonSerializable(
  ignoreUnannotated: true,
  createFactory: false,
)
class RegenerativeHarvestableDoodadInstance
    extends TickableDoodadInstance<RegenerativeHarvestableDoodadDefinition>
    implements RegenerativeHarvestableDoodadInterface {
  @override
  Map<String, dynamic> toJson() =>
      _$RegenerativeHarvestableDoodadInstanceToJson(this);

  @override
  double get resourceRequiredToHarvestOne =>
      definition.resourceRequiredToHarvestOne;

  @override
  double get resourceMax => definition.resourceMax;

  @override
  double get resourceIncreasePerTick => definition.resourceIncreasePerTick;

  @override
  int? get manualEffortToHarvest => definition.manualEffortToHarvest;

  @JsonKey(name: currentResourcesField)
  late double currentResources;

  @JsonKey(name: effortCountField)
  late int effortCount;

  late final int? lowestDynamicAssetIndex;

  RegenerativeHarvestableDoodadInstance(super.pack) {
    currentResources =
        getOrDefaultFromJson(pack.json, currentResourcesField, () => 0);
    effortCount = getOrDefaultFromJson(pack.json, effortCountField, () => 0);

    final assets = dynamicImageAssets;
    if (assets != null) {
      lowestDynamicAssetIndex = assets.keys.fold<int>(
          assets.keys.first,
          (previousValue, element) =>
              previousValue > element ? element : previousValue);
    }
    imageAsset = _newImageAsset;
  }

  @override
  void init() {}

  @override
  bool canTick() => currentResources < resourceMax;

  @override
  void ticksMet() {
    if (currentResources < resourceMax) {
      currentResources = min(
          currentResources + resourceIncreasePerTick, resourceMax.toDouble());
      _refreshImageAsset();
    }
  }

  void harvest() {
    if (currentResources < resourceRequiredToHarvestOne) return;
    currentResources -= resourceRequiredToHarvestOne;
    ref.read(inventoryProvider.notifier).addItems(resourceGenerated);

    _refreshImageAsset();
    notifyListeners();
  }

  // Deal with later maybe add a special mixin for this
  void manualHarvest() {
    final manualEffortToHarvest = this.manualEffortToHarvest;
    if (manualEffortToHarvest == null) return;
    effortCount++;
    if (effortCount >= manualEffortToHarvest) {
      harvest();
      effortCount = 0;
      notifyListeners();
    }
  }

  void _refreshImageAsset() {
    final newImageAsset = _newImageAsset;
    if (newImageAsset != imageAsset) {
      imageAsset = newImageAsset;
      notifyListeners();
    }
  }

  @override
  Map<int, String>? get dynamicImageAssets => definition.dynamicImageAssets;

  String get _newImageAsset {
    final assets = dynamicImageAssets;
    if (assets == null) {
      return super.imageAsset;
    }

    final percent = (currentResources / resourceMax * 100).toInt();
    return assets[assets.keys.fold<int>(
        lowestDynamicAssetIndex!,
        (previousValue, e) =>
            previousValue < e && e <= percent ? e : previousValue)]!;
  }

  @override
  late String imageAsset;

  @override
  Widget get statusWidget => TreeStatusWidget(this);

  @override
  ItemContainer get resourceGenerated => definition.resourceGenerated;
}

class TreeStatusWidget extends ConsumerWidget {
  final RegenerativeHarvestableDoodadInstance _treeInstance;

  const TreeStatusWidget(
    this._treeInstance, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTick = _treeInstance.currentTickState.watch(ref);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Forest growth:'),
              Text(
                  '${(_treeInstance.currentResources * 100).toInt()}/${(_treeInstance.resourceMax * 100).toInt()}'),
              Text(
                  'Trees cost ${(_treeInstance.resourceRequiredToHarvestOne * 100).toInt()} each'),
              TextButton(
                  onPressed: () {
                    _treeInstance.manualHarvest();
                  },
                  child: const Text('Chop')),
            ],
          ),
        ),
        Expanded(flex: 1, child: DoodadStatus(_treeInstance)),
      ],
    );
  }
}
