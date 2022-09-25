part of 'item_definition.dart';

class ItemDefinitionIdKeyedMapConverter
    extends ObjectKeyedMapConverter<ItemDefinitionId, int> {
  const ItemDefinitionIdKeyedMapConverter();

  @override
  ItemDefinitionId genKey(String keyVal) => ItemDefinitionId(keyVal);
}

abstract class ObjectKeyedMapConverter<K, V>
    implements JsonConverter<Map<K, V>, Map<String, dynamic>> {
  const ObjectKeyedMapConverter();

  K genKey(String keyVal);

  @override
  Map<K, V> fromJson(Map<String, dynamic> json) => {
        for (final item in json.entries) genKey(item.key): item.value as V,
      };

  @override
  Map<String, dynamic> toJson(Map<K, V> map) => {
        for (final item in map.entries) jsonEncode(item.key): item.value,
      };
}

class RequirementRenderer extends ConsumerWidget {
  final Requirement requirement;
  final bool checkInventoryForItems;

  const RequirementRenderer(
      {required this.requirement,
      this.checkInventoryForItems = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var missingItems = ItemContainer.getDefault;
    if (checkInventoryForItems) {
      missingItems = ref.watch(inventoryProvider).items - requirement.itemCost;
    }
    return Column(
      children: [
        for (final item in requirement.itemCost.entries)
          _buildItem(item, missingItems[item.key]),
      ],
    );
  }

  Widget _buildItem(MapEntry<ItemDefinitionId, int> entry, int? missing) {
    final definition = entry.key.definition();
    final itemWidget = ItemRenderer(
      definition: definition,
      count: entry.value,
      suffixText: missing == null ? '' : '($missing)',
    );
    return missing != null
        ? Container(
            color: Colors.red[200],
            child: itemWidget,
          )
        : itemWidget;
  }
}

class ItemRenderer extends StatelessWidget {
  final ItemDefinition definition;
  final int count;
  final String? suffixText;
  final bool showItemName;

  const ItemRenderer(
      {Key? key,
      required this.definition,
      required this.count,
      this.suffixText = '',
      this.showItemName = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(
        definition.image,
        width: 24,
      ),
      AutoSizeText(
          ' $count${showItemName ? ' ${definition.name}' : ''}$suffixText'),
    ]);
  }

  String get maybeName {
    if (!showItemName) return '';
    final def = definition;
    if (def is CanHavePluralName) {
      final pluralName = (def as CanHavePluralName).namePlural;
      if (pluralName != null) return pluralName;
    }
    return def.name;
  }
}
