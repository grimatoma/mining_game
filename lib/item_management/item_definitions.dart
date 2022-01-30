import 'item_directory.dart';

abstract class BaseItemDefinition {
  const BaseItemDefinition();

  String get name;
  String get description;
}

abstract class BaseItemForDirectory extends BaseItemDefinition {
  const BaseItemForDirectory();

  ItemKey get itemKey;
}

abstract class ShowInWallet {}

abstract class HideInInventory {}
