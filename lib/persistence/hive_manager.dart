import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mining_game/persistence/save_syncer.dart';

enum BoxKey {
  activeMiners,
  miners,
  GARAGE,
  FEATURES,
  INVENTORY4,
  COMPLETED_QUESTS,
  CONSUMED_STORE_LISTINGS,
  CRAFTING_SESSION2,
  CRAFTING_QUEUE2,
  PLANETS,
}

const keyIncrement = '17';

class HiveManager {
  static final openedBoxes = <BoxKey, Box>{};
  static late final Box<String> box;

  static T getData<T>(
      BoxKey key,
      T Function(Map<String, Object?> json) fromJson,
      T Function() defaultValue) {
    try {
      final data = box.get(key.name);
      if (data == null || data == 'null') return defaultValue();
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

  static Iterable<T> getIterableOfType<T>(
      BoxKey key, T Function(Map<String, dynamic> json) fromJson) {
    try {
      final data = box.get(key.name);
      if (data == null) return <T>[];
      return (jsonDecode(data) as List<dynamic>).map((e) => fromJson(e));
    } catch (e) {
      print('JSON PARSING FAILED');
      print(e);
      rethrow;
    }
  }

  static Future<void> init() async {
    box = await Hive.openBox(SaveSyncer.coreBox);
  }

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
