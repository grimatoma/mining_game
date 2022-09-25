import 'package:json_annotation/json_annotation.dart';
import 'package:mining_game/doodads/base/doodad_definition.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/planet/planet_manager.dart';

import '../base/tickable_doodad.dart';

part 'material_processor_doodad.g.dart';

abstract class MaterialProcessorDoodadInterface
    implements TickableDoodadInterface {
  ItemContainer get consumedMaterials;

  ItemContainer get itemsProduced;
}

const _isProcessingField = 'isProcessing';

@JsonSerializable(
  ignoreUnannotated: true,
  createFactory: false,
)
class MaterialProcessorDoodadInstance
    extends TickableDoodadInstance<MaterialProcessorDoodadDefinition>
    implements MaterialProcessorDoodadInterface {
  late final InventoryStateProvider _inventoryController;

  @override
  ItemContainer get consumedMaterials => definition.consumedMaterials;

  @override
  ItemContainer get itemsProduced => definition.itemsProduced;

  @JsonKey(name: _isProcessingField)
  late final SimpleStateProvider<bool> _isProcessingResourceState;

  ReadOnlySimpleStateProvider<bool> get isProcessing =>
      _isProcessingResourceState;

  MaterialProcessorDoodadInstance(super.pack) {
    _inventoryController = ref.read(inventoryProvider.notifier);
    _isProcessingResourceState = SimpleStateProvider<bool>(ref, (_) => false,
        valueFromJson: (ref, json) => json,
        valueToJson: boolToJson,
        json: getOrDefaultFromJson(pack.json, _isProcessingField, () => null));
  }

  @override
  void init() {}

  @override
  bool canTick() {
    if (isProcessing.read) return true;
    if (_inventoryController.removeItems(consumedMaterials)) {
      _isProcessingResourceState.updateState = true;
      return true;
    }
    return false;
  }

  @override
  void ticksMet() {
    _inventoryController.addItems(itemsProduced);
    ref.read(inventoryProvider.notifier).addItems(itemsProduced);
  }

  @override
  Map<String, dynamic> toJson() =>
      _$MaterialProcessorDoodadInstanceToJson(this);
}
