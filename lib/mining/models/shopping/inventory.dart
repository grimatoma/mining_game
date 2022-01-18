import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'mixins/void_stream_provider_mixin.dart';

final inventoryProvider = Provider<Inventory>((ref) {
  return Inventory();
});

class Inventory with VoidChangeStreamAndStreamProvider {
  int iron = 0;

  addIron(int dig) {
    notifyUpdate();
    return iron += dig;
  }
}

