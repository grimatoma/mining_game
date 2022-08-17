import 'dart:async';
import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/store/store.dart';
import 'package:mining_game/persistence/hive_manager.dart';
import 'package:mining_game/planet/planets_manager.dart';
import 'package:mining_game/quests/quest_providers.dart';

final saveProvider = Provider((ref) => SaveSyncer(ref));

class SaveSyncer {
  final Ref _ref;
  static const coreBox = 'coreBox2';
  final Box<String> core;

  SaveSyncer(this._ref) : core = Hive.box(coreBox);

  Future<void> init() async {
    if (!Hive.isBoxOpen(coreBox)) {
      await Hive.openBox(coreBox);
    }

    Timer.periodic(const Duration(seconds: 1), (timer) {
      print('saving!');
      save();
    });
  }

  void save() {
    final inventory = _ref.read(inventoryStateProvider);
    HiveManager.box.put(BoxKey.INVENTORY.name, jsonEncode(inventory));

    final features = _ref.read(activeFeaturesProvider);
    HiveManager.box.put(BoxKey.FEATURES.name,
        jsonEncode(features.map((p0) => p0.name).toList()));

    final quests = _ref.read(completedQuestsProvider);
    HiveManager.box
        .put(BoxKey.COMPLETED_QUESTS.name, jsonEncode(quests.toList()));

    HiveManager.box.put(
        BoxKey.CONSUMED_STORE_LISTINGS.name,
        jsonEncode({
          Shop.PLANET_BUY_MENU.name: _ref
              .read(storePlanetBuyMenuControllerProvider)
              .consumedListing
              .toList(growable: false),
          Shop.STORE_MAIN_NAV.name: _ref
              .read(storeMainNavControllerProvider)
              .consumedListing
              .toList(growable: false),
        }));

    final planets = _ref.read(planetsManagerProvider).planets;
    HiveManager.box.put(BoxKey.PLANETS.name, jsonEncode(planets));
  }
}

// enum SyncKeys {
//   INVENTORY,
// }
// class SyncLoader {
//
// }
