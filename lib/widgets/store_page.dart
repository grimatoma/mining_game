import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/store/shop_listing_definitions.dart';
import 'package:mining_game/item_management/store/store.dart';

import 'status_bar_wrapped_page.dart';

class StorePageWidget extends HookConsumerWidget {
  const StorePageWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen to changes in money (For failed purchases);
    ref.watch(inventoryStateProvider);
    final storeListingsController = ref.watch(storeControllerProvider.notifier);
    final storeListings = ref.watch(storeControllerProvider);
    final itemDirectory = ref.watch(itemDirectoryProvider);

    Widget _shopItem(ShopListing listing) {
      if (listing is MinerShopListing) {
        final definition = listing.definition;
        return _ActionMenuItem(
            text: 'Name: ${definition.name}\nDescription: '
                '${definition.description}\nCost ${listing.cost}',
            onPressed: () {
              final storeController =
                  ref.read(storeControllerProvider.notifier);
              if (!storeController.canBuyItem(listing)) return;
              storeController.buyItem(listing);
            },
            background: storeListingsController.canBuyItem(listing)
                ? Colors.white
                : Colors.redAccent);
      } else if (listing is ItemStackShopListing) {
        final item = itemDirectory[listing.itemKey];
        return _ActionMenuItem(
            text: 'Name: ${item.name}\nDescription: ${item.description}\nCost '
                '${listing.cost}\nAmount ${listing.quantity}',
            onPressed: () {
              final storeController =
                  ref.read(storeControllerProvider.notifier);
              if (!storeController.canBuyItem(listing)) return;
              storeController.buyItem(listing);
            },
            background: storeListingsController.canBuyItem(listing)
                ? Colors.white
                : Colors.redAccent);
      }
      // default
      return _ActionMenuItem(
          text: '${listing.toString()}  ${listing.cost}',
          onPressed: () {
            final storeController = ref.read(storeControllerProvider.notifier);
            if (!storeController.canBuyItem(listing)) return;
            storeController.buyItem(listing);
          },
          background: storeListingsController.canBuyItem(listing)
              ? Colors.white
              : Colors.redAccent);
    }

    return StatusBarWrappedPageWidget(
        title: 'Store',
        builder: (context, ref) => Scrollbar(
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (_, index) {
                  final listing = storeListings.listings[index];
                  if (listing is MinerShopListing) {
                    return MinerListingWidget(listing: listing);
                  }
                  return _shopItem(storeListings.listings[index]);
                },
                itemCount: storeListings.listings.length,
                separatorBuilder: (_, __) => const Divider(),
              ),
            ));
  }
}

class _ActionMenuItem extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color background;

  const _ActionMenuItem(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.background = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(text),
        style: TextButton.styleFrom(backgroundColor: background));
  }
}

class MinerListingWidget extends ConsumerWidget {
  final MinerShopListing listing;
  const MinerListingWidget({Key? key, required this.listing}) : super(key: key);

  Widget buildRowTitle(String title) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text('$title:',
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.right),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeListingsController = ref.watch(storeControllerProvider.notifier);

    final definition = listing.definition;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          definition.image,
          width: 50,
          // height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Text(
            definition.name,
            style: const TextStyle(fontSize: 20),
          ),
        ),
        Expanded(
          child: Table(
            children: [
              TableRow(children: [
                buildRowTitle('Base damage'),
                Text(definition.baseDamage.toString()),
              ]),
              TableRow(children: [
                buildRowTitle('Hopper size'),
                Text('${definition.baseHopperSize} items'),
              ]),
              TableRow(children: [
                buildRowTitle('Attachment slots'),
                const Text('2'),
              ]),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: ElevatedButton(
            child: Text(listing.cost.toString()),
            onPressed: () {
              final storeController =
                  ref.read(storeControllerProvider.notifier);
              if (!storeController.canBuyItem(listing)) return;
              storeController.buyItem(listing);
            },
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2))),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              onPrimary: storeListingsController.canBuyItem(listing)
                  ? Colors.grey[800]
                  : Colors.grey[500],
              primary: storeListingsController.canBuyItem(listing)
                  ? Colors.green[300]
                  : Colors.grey[100],
            ),
          ),
        )
      ],
    );
  }
}
