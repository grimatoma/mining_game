import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/item_management/store/shop_listing_definitions.dart';
import 'package:mining_game/item_management/store/store.dart';

import 'status_bar.dart';

class StorePageWidget extends HookConsumerWidget {
  const StorePageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen to changes in money (For failed purchases);
    ref.watch(inventoryProvider);
    final storeListings = ref.watch(storeMainNavControllerProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Store'),
      ),
      body: Column(children: [
        const StatusBarWidget(),
        Expanded(
          child: ListView.separated(
            controller: ScrollController(),
            shrinkWrap: true,
            itemBuilder: (_, index) {
              final listing = storeListings.listings[index];
              return listing.map(
                itemListing: (l) => ItemShopListingWidget(l),
                doodadListing: (DoodadShopListing value) =>
                    throw UnimplementedError(),
                featureListing: (FeatureShopListing value) =>
                    throw UnimplementedError(),
              );
            },
            itemCount: storeListings.listings.length,
            separatorBuilder: (_, __) => const Divider(),
          ),
        )
      ]),
    );
  }
}

class ItemShopListingWidget extends ConsumerWidget {
  final ItemShopListing listing;

  const ItemShopListingWidget(this.listing, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final definition = ItemDirectory.getItem(listing.item);

    return ListingWidget(
      // imagePath: definition.imagePath,
      listingTitle: definition.name,
      listingDetails: Table(children: [
        if (definition is Stackable)
          TableRow(children: [
            ListingWidget.buildRowTitle('STACKABLE ITEM HERE'),
          ])
        else
          ...definition.maybeMap(miner: (id) {
            definition as MinerItemDefinition;
            return [
              TableRow(children: [
                ListingWidget.buildRowTitle('Base damage'),
                Text(definition.baseDamage.toString()),
              ]),
              TableRow(children: [
                ListingWidget.buildRowTitle('Hopper size'),
                Text('${definition.baseHopperSize} items'),
              ]),
              TableRow(children: [
                ListingWidget.buildRowTitle('Attachment slots'),
                const Text('2'),
              ]),
            ];
          }, orElse: () {
            return [
              TableRow(children: [
                ListingWidget.buildRowTitle('OR ELSE ITEM HERE'),
              ])
            ];
          })
      ]),
      actionButton: BuyButton(listing),
    );
  }
}

class ListingWidget extends ConsumerWidget {
  final String imagePath = 'assets/images/placeholder.png';
  final String listingTitle;
  final Widget listingDetails;
  final Widget actionButton;

  const ListingWidget({
    String imagePath = 'assets/images/placeholder.png',
    required this.listingTitle,
    required this.listingDetails,
    required this.actionButton,
    Key? key,
  }) : super(key: key);

  static Widget buildRowTitle(String title) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text('$title:',
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.right),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          imagePath,
          width: 50,
          // height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Text(
            listingTitle,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        Expanded(
          child: listingDetails,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: actionButton,
        )
      ],
    );
  }
}

class ShopButton extends ConsumerWidget {
  final ItemContainer cost;
  final bool active;
  final void Function() onClick;

  const ShopButton({
    required this.cost,
    required this.active,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        foregroundColor: active ? Colors.grey[800] : Colors.grey[500],
        backgroundColor: active ? Colors.green[300] : Colors.grey[100],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2))),
        padding: const EdgeInsets.symmetric(horizontal: 8),
      ),
      child: RequirementRenderer(
        requirement: Requirement(itemCost: cost),
        checkInventoryForItems: true,
      ),
    );
  }
}

class BuyButton extends ConsumerWidget {
  final ItemShopListing listing;

  const BuyButton(
    this.listing, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeListingsController =
        ref.watch(storeMainNavControllerProvider.notifier);

    return ShopButton(
        cost: listing.cost,
        active: storeListingsController.canBuy(listing),
        onClick: () {
          storeListingsController.clickListing(listing);
        });
  }
}
