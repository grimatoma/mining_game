import 'package:built_collection/built_collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_definition.dart';

import '../base/doodad_definition.dart';
import '../base/tickable_doodad.dart';

part 'digger_doodad.g.dart';

abstract class DiggerDoodadInterface extends TickableDoodadInterface {
  BuiltList<ItemInstanceGenerator> get itemMined;
}

@JsonSerializable(
  ignoreUnannotated: true,
  createFactory: false,
)
class DiggerDoodadInstance
    extends TickableDoodadInstance<DiggerDoodadDefinition>
    implements DiggerDoodadInterface {
  @override
  Map<String, dynamic> toJson() => _$DiggerDoodadInstanceToJson(this);

  DiggerDoodadInstance(super.pack);

  @override
  void init() {}

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
