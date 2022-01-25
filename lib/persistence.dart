import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/items/metadata/item_instance.dart';

enum DatabaseName {
  inventory,
  wallet,
  installedMiners,
  planet,
}

final dataStorageControllerProvider =
    Provider<DataStorageController>((ref) => DataStorageController());

class DataStorageController {
  static Map<DatabaseName, Box> boxes = {};
}

class DataStorageConnector<StoreTypeT extends ItemInstance> {
  late Box<StoreTypeT> box;

  Iterable<StoreTypeT> attach(
      DatabaseName databaseName, Stream<Iterable<StoreTypeT>> stream) {
    stream.listen((items) {
      for (final item in items) {
        box.put(item.instanceId.toString(), item);
      }
    });
    return retrieve();
  }

  Iterable<StoreTypeT> retrieve() => box.values;
}
