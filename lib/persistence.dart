import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/items/metadata/item_instance.dart';
// import 'package:path_provider/path_provider.dart'

enum DatabaseName {
  inventory5,
  wallet5,
  installedMiners5,
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
        box.put(item.instanceId.id, item);
      }
    });
    return retrieve();
  }

  Iterable<StoreTypeT> retrieve() => box.values;
}
