import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/item_management/store/shop_listing_definitions.dart';
import 'package:mining_game/item_management/store/store.dart';

import 'status_bar_wrapped_page.dart';

class StorePageWidget extends HookConsumerWidget {
  const StorePageWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen to changes in money (For failed purchases);
    ref.watch(inventoryStateProvider);
    final storeListings = ref.watch(storeControllerProvider);

    return StatusBarWrappedPageWidget(
        title: 'Store',
        builder: (context, ref) => Scrollbar(
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  final listing = storeListings.listings[index];
                  return listing.map(
                      buyItemStack: (l) => BuyItemStackSellingListingWidget(l),
                      buyMiner: (l) => BuyMinerListingWidget(listing: l),
                      sell: (l) => SellingListing(l));
                },
                itemCount: storeListings.listings.length,
                separatorBuilder: (_, __) => const Divider(),
              ),
            ));
  }
}

class BuyItemStackSellingListingWidget extends ConsumerWidget {
  final BuyItemStackShopListing listing;
  const BuyItemStackSellingListingWidget(
    this.listing, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final definition = listing.itemId.definition();

    return ListingWidget(
      listingTitle: definition.name,
      listingDetails: Table(
        children: [
          TableRow(children: [
            ListingWidget.buildRowTitle('Description'),
            Text(definition.description),
          ]),
          TableRow(children: [
            ListingWidget.buildRowTitle('Quantity'),
            Text('${listing.quantity}'),
          ]),
        ],
      ),
      actionButton: BuyButton(listing),
    );
  }
}

class BuyMinerListingWidget extends ConsumerWidget {
  final BuyMinerShopListing listing;
  const BuyMinerListingWidget({Key? key, required this.listing})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final definition = ItemDirectory.getMiner(listing.minerId);
    return ListingWidget(
        imagePath: definition.image,
        listingTitle: definition.name,
        listingDetails: Table(
          children: [
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
          ],
        ),
        actionButton: BuyButton(listing));
  }
}

class SellingListing extends ConsumerWidget {
  final SellShopListing listing;
  const SellingListing(
    this.listing, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListingWidget(
        listingTitle: listing.items.toString(),
        listingDetails: Table(
          children: [
            TableRow(children: [
              ListingWidget.buildRowTitle('Description'),
              const Text('We need more iron!'),
            ]),
          ],
        ),
        actionButton: SellButton(listing));
  }
}

class ListingWidget extends ConsumerWidget {
  final String imagePath;
  final String listingTitle;
  final Widget listingDetails;
  final Widget actionButton;
  const ListingWidget({
    this.imagePath = 'images/placeholder.png',
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
        cost: listing.price,
        active: storeListingsController.canBuy(listing),
        onClick: () {
          storeListingsController.clickListing(listing as ShopListing);
        });
  }
}

class SellButton extends ConsumerWidget {
  final SellShopListing listing;
  const SellButton(
    this.listing, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeListingsController = ref.watch(storeControllerProvider.notifier);

    return ShopButton(
        cost: listing.sellPrice,
        active: storeListingsController.canSell(listing),
        onClick: () {
          storeListingsController.clickListing(listing as ShopListing);
        });
  }
}
