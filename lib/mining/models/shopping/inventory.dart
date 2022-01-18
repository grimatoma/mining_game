import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory.freezed.dart';

final inventoryStateProvider =
    StateNotifierProvider<InventoryController, Inventory>((ref) {
  return InventoryController(const Inventory(100));
});

class InventoryController extends StateNotifier<Inventory> {
  InventoryController(Inventory state) : super(state);
  int get iron => state.iron;

  void addIron(int amount) {
    state = state.copyWith(iron: state.iron + amount);
  }

  void removeIron(int amount) {
    state = state.copyWith(iron: state.iron - amount);
  }
}

@freezed
class Inventory with _$Inventory {
  const Inventory._();

  const factory Inventory(int iron) = _Inventory;
}
