import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_keys.dart';

import '../base/doodad_definition.dart';
import '../base/tickable_doodad.dart';

class DiggerInstance extends TickableDoodadInstance<DiggerDoodadDefinition> {
  DiggerInstance(super.ref, super.planetManager, super.parent, super.definition,
      super.notifyListeners);

  @override
  void ticksMet() {
    ref
        .read(inventoryStateProvider.notifier)
        .addItems(Items.IRON.generateItemInstance(2));
  }

  @override
  bool canTick() => true;
}
