import 'package:built_collection/built_collection.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_definition.dart';

import '../base/doodad_definition.dart';
import '../base/tickable_doodad.dart';

abstract class DiggerDoodadInterface extends TickableDoodadInterface {
  BuiltList<ItemInstanceGenerator> get itemMined;
}

class DiggerDoodadInstance
    extends TickableDoodadInstance<DiggerDoodadDefinition>
    implements DiggerDoodadInterface {
  DiggerDoodadInstance(super.ref, super.planetManager, super.parent,
      super.definition, super.notifyListeners);

  @override
  void ticksMet() {
    for (final generator in itemMined) {
      ref.read(inventoryStateProvider.notifier).addItemWithGenerator(generator);
    }
  }

  @override
  bool canTick() => true;

  @override
  BuiltList<ItemInstanceGenerator> get itemMined => definition.itemMined;
}
