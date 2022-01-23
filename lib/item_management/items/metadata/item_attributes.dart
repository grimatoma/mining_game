abstract class ItemAttribute {
  const ItemAttribute();
}

abstract class UpgradableItem extends ItemAttribute {
  const UpgradableItem();
}

abstract class StackableItemDefinition extends ItemAttribute {
  const StackableItemDefinition();

  int get maxStackSize;
}

abstract class BasicItemDefinition extends ItemAttribute {}
