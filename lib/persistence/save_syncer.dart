import 'dart:async';
import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/crafting/crafting_manager.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
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
      save();
    });
  }

  void save() {
    final inventory = _ref.read(inventoryProvider);
    store(BoxKey.INVENTORY4, inventory);

    final features = _ref.read(activeFeaturesProvider);
    store(BoxKey.FEATURES, features.map((p0) => p0.name).toList());

    final quests = _ref.read(completedQuestsProvider);
    store(BoxKey.COMPLETED_QUESTS, quests.toList());

    store(BoxKey.CONSUMED_STORE_LISTINGS, {
      Shop.PLANET_BUY_MENU.name: _ref
          .read(storePlanetBuyMenuControllerProvider)
          .consumedListing
          .toList(growable: false),
      Shop.STORE_MAIN_NAV.name: _ref
          .read(storeMainNavControllerProvider)
          .consumedListing
          .toList(growable: false),
    });

    final planets = _ref.read(planetsManagerProvider).planets;
    store(BoxKey.PLANETS, planets);

    final craftingQueue = _ref.read(craftingQueueProvider);
    store(BoxKey.CRAFTING_QUEUE2, craftingQueue.toList(growable: false));
    final craftingSession = _ref.read(craftingSessionProvider);
    store(BoxKey.CRAFTING_SESSION2, craftingSession);
  }

  void store(BoxKey key, dynamic item) {
    HiveManager.box.put(key.name, jsonEncode(item));
  }
}
