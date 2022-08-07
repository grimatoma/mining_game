import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';

class SaveSyncer {
  final Ref _ref;
  static const coreBox = 'coreBox';
  final Box<String> core;

  SaveSyncer(this._ref) : core = Hive.box(coreBox);

  Future<void> init() async {
    await Hive.openBox(coreBox);
  }

  void save() {
    final inventory = _ref.read(inventoryStateProvider);
    final features = _ref.read(activeFeaturesProvider);
  }
}

// enum SyncKeys {
//   INVENTORY,
// }
// class SyncLoader {
//
// }
