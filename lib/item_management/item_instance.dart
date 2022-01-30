import 'item_definitions.dart';

abstract class ItemInstance<DefinitionT extends BaseItemForDirectory> {
  DefinitionT get definition;
  const ItemInstance();
}

mixin InstanceDefinitionDetails implements BaseItemDefinition {
  BaseItemDefinition get definition;

  @override
  String get name => definition.name;
  @override
  String get description => definition.description;
}
