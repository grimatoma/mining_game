import 'package:flutter/widgets.dart';
import 'package:mining_game/planet/planet_manager.dart';

import 'doodad_interface_and_instance.dart';

abstract class TickableDoodadInterface implements DoodadInterface {
  int get ticksRequired;

  String get ticksName;
}

mixin Tickable {
  @protected
  late final SimpleStateProvider<int> currentTickStateProvider;

  ReadOnlySimpleStateProvider get currentTickState => currentTickStateProvider;

  int get ticksRequired;

  bool canTick();

  @mustCallSuper
  void update() {
    if (!canTick()) return;
    final newVal = currentTickStateProvider.read + 1;
    currentTickStateProvider.updateState = newVal;
    if (newVal <= ticksRequired) return;
    currentTickStateProvider.updateState = 0;
    ticksMet();
  }

  void ticksMet();
}

abstract class TickableDoodadInstance<
        DefinitionT extends TickableDoodadInterface>
    extends DoodadInstance<DefinitionT>
    with Tickable
    implements TickableDoodadInterface {
  @override
  int get ticksRequired => definition.ticksRequired;

  @override
  String get ticksName => definition.ticksName;

  TickableDoodadInstance(super.ref, super.planetManager, super.parent,
      super.definition, super.notifyListeners) {
    currentTickStateProvider = SimpleStateProvider<int>(ref, (ref) => 0);
  }
}
