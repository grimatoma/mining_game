import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/resources/resources.dart';
import 'package:mining_game/persistence.dart';

final walletControllerProvider =
    StateNotifierProvider<WalletController, ResourceContainer>((ref) {
  return WalletController(ref.watch(dataStorageControllerProvider));
});

class WalletController extends StateNotifier<ResourceContainer> {
  WalletController(DataStorageController controller)
      : super(ResourceContainer(BuiltMap())) {
    void loadInitialData() async {
      final loadedBox = await Hive.openBox(DatabaseName.wallet.name);
      state = ResourceContainer({
        for (String val in loadedBox.keys)
          getType(val): loadedBox.get(val, defaultValue: 256) as int,
      }.build());
    }

    void updateBox() async {
      final loadedBox = await Hive.openBox(DatabaseName.wallet.name);
      stream.listen((storedResources) {
        loadedBox.clear();
        for (final resource in Resources.values) {
          loadedBox.put(resource.name, storedResources.resources[resource]);
        }
      });
    }

    loadInitialData();
    updateBox();
  }

  ResourceContainer get resources => state;

  bool canRemove(ResourceContainer resources) =>
      !(state - resources).hasNegative;
  void add(ResourceContainer resources) => state = state + resources;
  void remove(ResourceContainer resources) => state = state - resources;
}
