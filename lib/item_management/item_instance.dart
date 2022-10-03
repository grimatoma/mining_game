part of 'item_definition.dart';

class ItemDefinitionIdKeyedMapConverter
    extends ObjectKeyedMapConverter<ItemDefinitionId, int> {
  const ItemDefinitionIdKeyedMapConverter();

  @override
  ItemDefinitionId genKey(String keyVal) =>
      ItemDefinitionId.fromJson(jsonDecode(keyVal));
}

abstract class ObjectKeyedMapConverter<K, V>
    implements JsonConverter<Map<K, V>, Map<String, dynamic>> {
  const ObjectKeyedMapConverter();

  K genKey(String keyVal);

  @override
  Map<K, V> fromJson(Map<String, dynamic> json) => {
        for (final entry in json.entries) genKey(entry.key): entry.value as V,
      };

  @override
  Map<String, dynamic> toJson(Map<K, V> map) => {
        for (final entry in map.entries) jsonEncode(entry.key): entry.value,
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
          _buildItem(item, min(0, missingItems[item.key])),
      ],
    );
  }

  Widget _buildItem(MapEntry<ItemDefinitionId, int> entry, int missing) {
    final definition = entry.key.definition;
    final itemWidget = ItemRenderer(
      definition: definition,
      count: entry.value,
      suffixText: missing == 0 ? '' : '($missing)',
    );
    return missing > 0
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
  final bool linkedToDetailPage;
  final bool hasItemHero;
  late final _heroTag = Random().nextInt(99999999).toString();

  ItemRenderer(
      {Key? key,
      required this.definition,
      required this.count,
      this.suffixText = '',
      this.showItemName = false,
      this.linkedToDetailPage = true,
      this.hasItemHero = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroContent = Image.asset(
      definition.imagePath,
      width: 24,
    );
    return GestureDetector(
      onTap: linkedToDetailPage
          ? () {
              if (ModalRoute.of(context)?.settings.name ==
                  '/inventory/item/:itemId') {
                context.pop();
              }
              context.push(
                  '/inventory/item/${definition.id.itemId}?heroSrc=$_heroTag');
            }
          : null,
      child: Row(children: [
        if (hasItemHero)
          Hero(
            tag: _heroTag,
            child: heroContent,
          ),
        if (!hasItemHero) heroContent,
        AutoSizeText(
            ' $count${showItemName ? ' ${definition.name}' : ''}$suffixText'),
      ]),
    );
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
