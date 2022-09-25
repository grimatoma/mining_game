import 'package:json_annotation/json_annotation.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/requirement.dart';

import '../base/doodad_definition.dart';
import '../base/tickable_doodad.dart';

part 'digger_doodad.g.dart';

abstract class DiggerDoodadInterface extends TickableDoodadInterface {
  ItemContainer get itemMined;
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
    ref.read(inventoryProvider.notifier).addItems(itemMined);
  }

  @override
  bool canTick() => true;

  @override
  ItemContainer get itemMined => definition.itemMined;
}
