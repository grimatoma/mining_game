import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mining_game/planet/planet_manager.dart';

import 'doodad_interface_and_instance.dart';

abstract class TickableDoodadInterface implements DoodadInterface {
  int get ticksRequired;

  String get ticksName;
}

const _currentTickField = 'currentTick';
mixin Tickable {
  @JsonKey(name: _currentTickField)
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

  TickableDoodadInstance(super.pack) {
    currentTickStateProvider = SimpleStateProvider<int>(ref, (ref) => 0,
        valueToJson: intToJson,
        valueFromJson: (ref, json) => json,
        json: getOrDefaultFromJson(pack.json, _currentTickField, () => null));
  }
}

T getOrDefaultFromJson<T>(Map<String, dynamic>? json, String key,
    [T Function()? defaultValue, T Function(dynamic)? customParse]) {
  final data = json?[key];
  if (data == null && defaultValue != null) return defaultValue();
  if (customParse != null) return customParse(data);
  return data;
}

// T getOrDefaultIntFromJson<T>(int? json, String key,
//     [T Function()? defaultValue, T Function(dynamic)? customParse]) {
//   final data = json?[key];
//   if (data == null && defaultValue != null) return defaultValue();
//   if (customParse != null) return customParse(data);
//   return data;
// }

int intToJson(int i) => i;

int intFromJson(dynamic i) => i;

bool boolToJson(bool b) => b;

bool boolFromJson(dynamic b) => b;
