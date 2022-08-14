import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mining_game/persistence/save_syncer.dart';

enum BoxKey {
  activeMiners,
  miners,
  GARAGE,
  FEATURES,
  INVENTORY,
  COMPLETED_QUESTS,
  CONSUMED_STORE_LISTINGS,
  PLANETS,
}

const keyIncrement = '16';

class HiveManager {
  static final openedBoxes = <BoxKey, Box>{};
  static late final Box<String> box;

  static T getData<T>(
      BoxKey key,
      T Function(Map<String, Object?> json) fromJson,
      T Function() defaultValue) {
    try {
      final data = box.get(key.name);
      if (data == null) return defaultValue();
      return fromJson(jsonDecode(data));
    } catch (e) {
      print('JSON PARSING FAILED');
      print(e);
      rethrow;
    }
  }

  static List<dynamic>? getIterableJson(BoxKey key) {
    try {
      final data = box.get(key.name);
      if (data == null) return null;
      return jsonDecode(data);
    } catch (e) {
      print('JSON PARSING FAILED');
      print(e);
      rethrow;
    }
  }

  static T getIterable<T>(BoxKey key, T Function(List<dynamic> json) fromJson) {
    try {
      final data = box.get(key.name);
      if (data == null) return fromJson([]);
      return fromJson(jsonDecode(data));
    } catch (e) {
      print('JSON PARSING FAILED');
      print(e);
      rethrow;
    }
  }

  static Future<void> init() async {
    box = await Hive.openBox(SaveSyncer.coreBox);
    // await box.deleteFromDisk();
    final futures = <Future>[];
    // for (final key in BoxKey.values) {
    //   final boxName = key.name + keyIncrement;
    //   futures.add(Hive.openBox<String>(boxName)
    //       .then((value) => openedBoxes[key] = value));
    // }
    // await Future.wait(futures);
  }

  // static Future<void> init() async {
  //   final futures = <Future>[];
  //   for (final key in BoxKey.values) {
  //     final boxName = key.name + keyIncrement;
  //     switch (key) {
  //       case BoxKey.activeMiners:
  //         Hive.registerAdapter(
  //             MapEntryAdapter<ItemInstanceId, PlanetPoint>(56));
  //         futures.add(
  //             Hive.openBox<MapEntry<ItemInstanceId, PlanetPoint>>(boxName)
  //                 .then((value) => openedBoxes[key] = value));
  //         break;
  //       case BoxKey.miners:
  //         Hive.registerAdapter(
  //             MapEntryAdapter<ItemInstanceId, MinerInstance>(55));
  //         futures.add(
  //             Hive.openBox<MapEntry<ItemInstanceId, MinerInstance>>(boxName)
  //                 .then((value) => openedBoxes[key] = value));
  //         break;
  //       case BoxKey.GARAGE:
  //         Hive.registerAdapter(MapEntryAdapter<int, SlotState>(57));
  //         futures.add(Hive.openBox<MapEntry<int, SlotState>>(boxName)
  //             .then((value) => openedBoxes[key] = value));
  //         break;
  //       case BoxKey.FEATURES:
  //         futures.add(Hive.openBox<String>(boxName)
  //             .then((value) => openedBoxes[key] = value));
  //         break;
  //       case BoxKey.INVENTORY:
  //         futures.add(Hive.openBox<String>(boxName)
  //             .then((value) => openedBoxes[key] = value));
  //         break;
  //       case BoxKey.COMPLETED_QUESTS:
  //         futures.add(Hive.openBox<int>(boxName)
  //             .then((value) => openedBoxes[key] = value));
  //         break;
  //     }
  //   }
  //   await Future.wait(futures);
  // }

  static void clearAll() {
    for (final box in openedBoxes.values) {
      box.deleteFromDisk();
    }
  }
}

BuiltSet<int> Function(List<dynamic> json) intSetFromJson =
    (list) => list.map((e) => e as int).toBuiltSet();
BuiltList<int> Function(List<dynamic> json) intListFromJson =
    (list) => list.map((e) => int.parse(e)).toBuiltList();
