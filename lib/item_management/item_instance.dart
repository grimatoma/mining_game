part of 'item_definition.dart';

class RequirementRenderer extends ConsumerWidget {
  final Requirement requirement;
  final bool checkInventoryForItems;
  final bool showInventoryCountForItems;

  const RequirementRenderer(
      {required this.requirement,
      this.checkInventoryForItems = false,
      this.showInventoryCountForItems = false,
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
          _buildItem(item, min(0, missingItems[item.key]), ref),
      ],
    );
  }

  Widget _buildItem(
      MapEntry<ItemDefinitionId, int> entry, int missing, WidgetRef ref) {
    final definition = entry.key.definition;
    final itemWidget = ItemRenderer(
      definition: definition,
      countPrefix: showInventoryCountForItems
          ? '${ref.watch(inventoryProvider).items[definition.id]}/'
          : '',
      count: entry.value,
      suffixText: missing == 0 ? '' : '($missing)',
      linkedToDetailPage: false,
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
  final String countPrefix;
  late final _heroTag = Random().nextInt(99999999).toString();

  ItemRenderer(
      {Key? key,
      required this.definition,
      required this.count,
      this.countPrefix = '',
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
              context
                  .push('/inventory/item/${definition.id}?heroSrc=$_heroTag');
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
            ' $countPrefix$count${showItemName ? ' ${definition.name}' : ''}$suffixText'),
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
