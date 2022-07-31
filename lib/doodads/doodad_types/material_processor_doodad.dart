import 'package:built_collection/built_collection.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/planet/planet_manager.dart';

import '../base/tickable_doodad.dart';

abstract class MaterialProcessorDoodadInterface
    implements TickableDoodadInterface {
  ItemRequirement get consumedMaterials;

  BuiltList<ItemInstance> get itemsProduced;
}

class MaterialProcessorDoodadInstance
    extends TickableDoodadInstance<MaterialProcessorDoodadInterface>
    implements MaterialProcessorDoodadInterface {
  final InventoryStateController _inventoryController;

  @override
  ItemRequirement get consumedMaterials => definition.consumedMaterials;

  @override
  BuiltList<ItemInstance> get itemsProduced => definition.itemsProduced;

  final SimpleStateProvider<bool> _hasResourceState;

  ReadOnlySimpleStateProvider<bool> get hasResources => _hasResourceState;

  MaterialProcessorDoodadInstance(super.ref, super.planetManager, super.parent,
      super.definition, super.notifyListeners)
      : _inventoryController = ref.read(inventoryStateProvider.notifier),
        _hasResourceState = SimpleStateProvider<bool>(ref, (ref) => false);

  @override
  bool canTick() {
    if (hasResources.read) return true;
    if (_inventoryController.subtractItemRequirement(consumedMaterials)) {
      _hasResourceState.updateState = true;
      return true;
    }
    return false;
  }

  @override
  void ticksMet() {
    _inventoryController.addItems(itemsProduced);
    ref.read(inventoryStateProvider.notifier).addItems(itemsProduced);
  }
}
