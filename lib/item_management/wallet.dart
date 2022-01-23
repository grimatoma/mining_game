import 'package:built_collection/src/map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/resources/resources.dart';

final walletControllerProvider =
    StateNotifierProvider<WalletController, ResourceContainer>((ref) {
  return WalletController(ResourceContainer({Resources.iron: 123}.build()));
});

class WalletController extends StateNotifier<ResourceContainer> {
  WalletController(ResourceContainer state) : super(state);

  ResourceContainer get resources => state;

  bool canRemove(ResourceContainer resources) =>
      !(state - resources).hasNegative;
  void add(ResourceContainer resources) => state = state + resources;
  void remove(ResourceContainer resources) => state = state - resources;
}
