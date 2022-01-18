import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/mining/mixins/void_stream_provider_mixin.dart';


final inventoryProvider = Provider<Inventory>((ref) {
  return Inventory();
});

class Inventory with VoidChangeStreamAndStreamProvider {
  int _iron = 100;
  int get iron => _iron;

  void addIron(int amount) {
    notifyUpdate();
    _iron += amount;
  }

  void removeIron(int amount) {
    notifyUpdate();
    _iron -= amount;
  }
}

