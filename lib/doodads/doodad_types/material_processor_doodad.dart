import 'package:built_collection/built_collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mining_game/doodads/base/doodad_definition.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/planet/planet_manager.dart';

import '../base/tickable_doodad.dart';

part 'material_processor_doodad.g.dart';

abstract class MaterialProcessorDoodadInterface
    implements TickableDoodadInterface {
  ItemRequirement get consumedMaterials;

  BuiltList<ItemInstance> get itemsProduced;
}

const _isProcessingField = 'isProcessing';

@JsonSerializable(
  ignoreUnannotated: true,
  createFactory: false,
)
class MaterialProcessorDoodadInstance
    extends TickableDoodadInstance<MaterialProcessorDoodadDefinition>
    implements MaterialProcessorDoodadInterface {
  late final InventoryStateController _inventoryController;

  @override
  ItemRequirement get consumedMaterials => definition.consumedMaterials;

  @override
  BuiltList<ItemInstance> get itemsProduced => definition.itemsProduced;

  @JsonKey(name: _isProcessingField)
  late final SimpleStateProvider<bool> _isProcessingResourceState;

  ReadOnlySimpleStateProvider<bool> get isProcessing =>
      _isProcessingResourceState;

  MaterialProcessorDoodadInstance(super.pack) {
    _inventoryController = ref.read(inventoryStateProvider.notifier);

    _isProcessingResourceState = SimpleStateProvider<bool>(
        ref,
        boolToJson,
        (ref) =>
            getOrDefaultFromJson(pack.json, _isProcessingField, () => false));
  }

  @override
  bool canTick() {
    if (isProcessing.read) return true;
    if (_inventoryController.subtractItemRequirement(consumedMaterials)) {
      _isProcessingResourceState.updateState = true;
      return true;
    }
    return false;
  }

  @override
  void ticksMet() {
    _inventoryController.addItems(itemsProduced);
    ref.read(inventoryStateProvider.notifier).addItems(itemsProduced);
  }

  @override
  Map<String, dynamic> toJson() =>
      _$MaterialProcessorDoodadInstanceToJson(this);
}
