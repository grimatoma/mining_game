import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/planet/planet_manager.dart';

import 'doodad_interface_and_instance.dart';

abstract class TickableDoodadInterface implements DoodadInterface {
  int get ticksRequired;

  String get ticksName;
}

abstract class MaterialProcessorDoodadInterface
    implements TickableDoodadInterface {
  ItemRequirement get consumedMaterials;

  BuiltList<ItemInstance> get itemsProduced;
}

abstract class TickableDoodadInstance<
        DefinitionT extends TickableDoodadInterface>
    extends DoodadInstance<DefinitionT> implements TickableDoodadInterface {
  final SimpleStateProvider<int> currentTickState;

  @override
  int get ticksRequired => definition.ticksRequired;

  @override
  String get ticksName => definition.ticksName;

  TickableDoodadInstance(super.ref, super.planetManager, super.parent,
      super.definition, super.notifyListeners)
      : currentTickState = SimpleStateProvider<int>(ref, (ref) => 0) {
    print('created instance');
  }

  bool canTick();

  @override
  @mustCallSuper
  void update() {
    if (!canTick()) return;
    final newVal = currentTickState.read + 1;
    currentTickState.updateState = newVal;
    if (newVal <= ticksRequired) return;
    currentTickState.updateState = 0;
    print('Updating Digger!');
    ticksMet();
  }

  void ticksMet();
}
