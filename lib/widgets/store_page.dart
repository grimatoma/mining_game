import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/store/shop_listing_definitions.dart';
import 'package:mining_game/item_management/store/store.dart';

import 'status_bar_wrapped_page.dart';

class StorePageWidget extends HookConsumerWidget {
  const StorePageWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollCtrl = useScrollController();
    // Listen to changes in money (For failed purchases);
    ref.watch(inventoryStateProvider);
    final storeListings = ref.watch(storeControllerProvider);

    return StatusBarWrappedPageWidget(
        title: 'Store',
        builder: (context, ref) => Scrollbar(
              controller: scrollCtrl,
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  final listing = storeListings.listings[index];
                  return listing.map(
                      buyItem: (l) => BuyListingWidget(l),
                      sellItems: (l) => SellingListingWidget(l));
                },
                itemCount: storeListings.listings.length,
                separatorBuilder: (_, __) => const Divider(),
              ),
            ));
  }
}

class BuyListingWidget extends ConsumerWidget {
  final BuyItemShopListing listing;

  const BuyListingWidget(this.listing, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final definition = ItemDirectory.getItem(listing.generator.id);

    return ListingWidget(
      imagePath: definition.image,
      listingTitle: definition.name,
      listingDetails: Table(children: [
        if (definition is Stackable)
          TableRow(children: [
            ListingWidget.buildRowTitle('STACKABLE ITEM HERE'),
          ])
        else
          ...definition.maybeMap(minerDefinition: (id) {
            definition as MinerDefinition;
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

class SellingListingWidget extends ConsumerWidget {
  final SellItemsShopListing listing;

  const SellingListingWidget(
    this.listing, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListingWidget(
        listingTitle: listing.sellPrice.toString(),
        listingDetails: Table(
          children: [
            TableRow(children: [
              ListingWidget.buildRowTitle('Description'),
              const Text('We need more iron!'),
            ]),
          ],
        ),
        actionButton: SellItemsButton(listing));
  }
}

class ListingWidget extends ConsumerWidget {
  final String imagePath;
  final String listingTitle;
  final Widget listingDetails;
  final Widget actionButton;
  const ListingWidget({
    this.imagePath = 'assets/images/placeholder.png',
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
  final ItemRequirement cost;
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
      child: Text(cost.toString()),
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2))),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        onPrimary: active ? Colors.grey[800] : Colors.grey[500],
        primary: active ? Colors.green[300] : Colors.grey[100],
      ),
    );
  }
}

class BuyButton extends ConsumerWidget {
  final BuyShopListing listing;
  const BuyButton(
    this.listing, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeListingsController = ref.watch(storeControllerProvider.notifier);

    return ShopButton(
        cost: listing.cost,
        active: storeListingsController.canBuy(listing),
        onClick: () {
          storeListingsController.clickListing(listing as ShopListing);
        });
  }
}

class SellItemsButton extends ConsumerWidget {
  final SellItemsShopListing listing;

  const SellItemsButton(
    this.listing, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeListingsController = ref.watch(storeControllerProvider.notifier);

    return ShopButton(
        cost: listing.cost,
        active: storeListingsController.canSellItemListing(listing),
        onClick: () {
          storeListingsController.clickListing(listing);
        });
  }
}
