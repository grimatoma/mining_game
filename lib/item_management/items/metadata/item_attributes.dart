import 'package:mining_game/item_management/items/metadata/item_instance.dart';

// part 'item_attributes.freezed.dart';
// part 'item_attributes.g.dart';

/// Base class for an attribute for an item.
abstract class ItemAttribute {
  const ItemAttribute();
}

/// An item that is instantiatable.
///
/// An instance of this item can exist.
abstract class InstantiatableItem<SelfT, InstanceT> extends ItemAttribute {
  InstanceT instantiate(InstanceId id);
}

/// An item that has the ability to be upgraded with levels.
abstract class UpgradableItem extends ItemAttribute {
  const UpgradableItem();
}

/// An item that can be stored in stacks.
abstract class StackableItemDefinition extends ItemAttribute {
  int get maxStackSize;
}

// /// An instance of a stackable item.
// @freezed
// class StackInstance<StackTypeDefinition extends ItemProto>
//     extends ItemInstance<StackTypeDefinition> with _$StackInstance {
//   const StackInstance._();
//
//   @HiveType(typeId: 32, adapterName: 'MinerInstanceAdapter')
//   const factory StackInstance(
//       {@HiveField(0) required StackTypeDefinition proto,
//       @HiveField(1) required InstanceId instanceId,
//       @HiveField(2) required int quantity}) = _StackInstance;
// }
