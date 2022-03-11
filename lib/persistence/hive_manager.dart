import 'package:hive_flutter/hive_flutter.dart';
import 'package:mining_game/garage_controller.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/planet/point.dart';

import 'synced.dart';

enum BoxKey {
  activeMiners,
  miners,
  GARAGE,
  FEATURES,
  INVENTORY,
}
const keyIncrement = '7';

class HiveManager {
  static final openedBoxes = <BoxKey, Box>{};
  static Box<T> getBox<T>(BoxKey key) {
    return openedBoxes[key] as Box<T>;
  }

  static Future<void> init() async {
    final futures = <Future>[];
    for (final key in BoxKey.values) {
      final boxName = key.name + keyIncrement;
      switch (key) {
        case BoxKey.activeMiners:
          Hive.registerAdapter(MapEntryAdapter<InstanceId, PlanetPoint>(56));
          futures.add(Hive.openBox<MapEntry<InstanceId, PlanetPoint>>(boxName)
              .then((value) => openedBoxes[key] = value));
          break;
        case BoxKey.miners:
          Hive.registerAdapter(MapEntryAdapter<InstanceId, MinerInstance>(55));
          futures.add(Hive.openBox<MapEntry<InstanceId, MinerInstance>>(boxName)
              .then((value) => openedBoxes[key] = value));
          break;
        case BoxKey.GARAGE:
          Hive.registerAdapter(MapEntryAdapter<int, SlotState>(57));
          futures.add(Hive.openBox<MapEntry<int, SlotState>>(boxName)
              .then((value) => openedBoxes[key] = value));
          break;
        case BoxKey.FEATURES:
          futures.add(Hive.openBox<String>(boxName)
              .then((value) => openedBoxes[key] = value));
          break;
        case BoxKey.INVENTORY:
          futures.add(Hive.openBox<ItemInstance?>(boxName)
              .then((value) => openedBoxes[key] = value));
          break;
      }
    }
    await Future.wait(futures);
  }

  static void clearAll() {
    for (final box in openedBoxes.values) {
      box.deleteFromDisk();
    }
  }
}
