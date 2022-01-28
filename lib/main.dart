import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_core_provider.dart';
import 'package:mining_game/inventory/inventory.dart';
import 'package:mining_game/inventory/item_directory.dart';
import 'package:mining_game/item_management/items/metadata/item_instance.dart';
import 'package:mining_game/item_management/items/metadata/item_proto.dart';
import 'package:mining_game/item_management/resources/resources.dart';
import 'package:mining_game/item_management/store/shop_listings.dart';
import 'package:mining_game/item_management/store/store.dart';
import 'package:mining_game/persistence.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';
import 'package:mining_game/planet/widgets/planet_map_renderer_widget.dart';
import 'package:mining_game/planet/widgets/src/planet_interface_widget.dart';

void main() async {
  Hive.registerAdapter(BuiltMapAdapter<PlanetPoint, PlanetTile>(30));
  // Hive.registerAdapter(MinerInstanceAdapter());
  // Hive.registerAdapter(MinerProtoAdapter());
  Hive.registerAdapter(ResourceAdapter());
  // Hive.registerAdapter(ResourceContainerAdapter());
  Hive.registerAdapter(BuiltMapAdapter<Resource, int>(32));
  Hive.registerAdapter(InstanceIdAdapter());
  Hive.registerAdapter(ItemIdAdapter());
  Hive.registerAdapter(PlanetTileAdapter());
  Hive.registerAdapter(PlanetPointAdapter());
  Hive.registerAdapter(PlanetAdapter());
  await Hive.initFlutter();
  runApp(const ProviderScope(child: MaterialApp(home: MiningGameWidget())));
}

class MiningGameWidget extends HookConsumerWidget {
  const MiningGameWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(gameCoreProvider);

    return MaterialApp(
      title: 'Lets mine',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mining Game WIP'),
        ),
        body: const MainMenuWidget(),
      ),
    );
  }
}

class MainMenuWidget extends HookConsumerWidget {
  const MainMenuWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          const StatusBarWidget(),
          _NavigationMenuItem(
              text: 'Planet Menu',
              builder: (context) => const PlanetPageWidget()),
          _NavigationMenuItem(
              text: 'Store', builder: (context) => const StoreMenuWidget()),
          _NavigationMenuItem(
              text: 'Inventory',
              builder: (context) => const InventoryMenuWidget()),
          const Center(child: Text('Garage Coming Soon!')),
          const Center(child: Text('Crafting Coming Soon!')),
          TextButton(
              onPressed: () {
                for (final database in DatabaseName.values) {
                  Hive.deleteBoxFromDisk(database.name);
                }
              },
              child: const Center(
                  child: Text(
                      'Clear game state\n(This will reset the game[For testing])\nReload game after clicking to take effect'))),
        ],
      ),
    );
  }
}

class _NavigationMenuItem extends StatelessWidget {
  final String text;
  final Widget Function(BuildContext) builder;
  const _NavigationMenuItem(
      {Key? key, required this.text, required this.builder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: builder));
        },
        child: Text(text));
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

class PlanetPageWidget extends HookConsumerWidget {
  const PlanetPageWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planet'),
      ),
      body: SizedBox(
        child: Column(children: const [
          StatusBarWidget(),
          PlanetMapRenderer(),
          Flexible(child: PlanetInterfaceWidget()),
        ]),
      ),
    );
  }
}

class StoreMenuWidget extends HookConsumerWidget {
  const StoreMenuWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storeListingsController =
        ref.watch(storeListingsControllerProvider.notifier);
    final storeListings = ref.watch(storeListingsControllerProvider);
    final itemDirectory = ref.watch(itemDirectoryProvider);

    Widget _shopItem(ShopListing listing) {
      if (listing is MinerShopListing) {
        final definition = listing.definition;
        return _ActionMenuItem(
            text:
                'Name: ${definition.name}\nDescription: ${definition.description}\nCost ${listing.cost}',
            onPressed: () {
              final storeController =
                  ref.read(storeListingsControllerProvider.notifier);
              if (!storeController.canBuyItem(listing)) return;
              storeController.buyItem(listing);
            },
            background: storeListingsController.canBuyItem(listing)
                ? Colors.white
                : Colors.redAccent);
      } else if (listing is ItemStackShopListing) {
        final item = itemDirectory.getItemDefinition(listing.itemKey);
        return _ActionMenuItem(
            text:
                'Name: ${item.name}\nDescription: ${item.description}\nCost ${listing.cost}\nAmount ${listing.quantity}',
            onPressed: () {
              final storeController =
                  ref.read(storeListingsControllerProvider.notifier);
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
            final storeController =
                ref.read(storeListingsControllerProvider.notifier);
            if (!storeController.canBuyItem(listing)) return;
            storeController.buyItem(listing);
          },
          background: storeListingsController.canBuyItem(listing)
              ? Colors.white
              : Colors.redAccent);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Store'),
      ),
      body: Column(
        children: [
          const StatusBarWidget(),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (_, index) => _shopItem(storeListings.listings[index]),
            itemCount: storeListings.listings.length,
            separatorBuilder: (_, __) => const Divider(),
          ),
        ],
      ),
    );
  }
}

class InventoryMenuWidget extends HookConsumerWidget {
  const InventoryMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventory = ref.watch(inventoryProvider);
    final itemDirectory = ref.watch(itemDirectoryProvider);
    final itemKeys = inventory.items.keys.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventory'),
      ),
      body: Column(
        children: [
          const StatusBarWidget(),
          Flexible(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (_, index) {
                final item = itemDirectory.getItemDefinition(itemKeys[index]);
                return Table(
                  children: [
                    TableRow(children: [const Text('Name'), Text(item.name)]),
                    TableRow(children: [
                      const Text('Description'),
                      Text(item.description)
                    ]),
                    TableRow(children: [
                      const Text('Amount'),
                      Text(inventory.items[item].toString())
                    ]),
                  ],
                );
              },
              itemCount: inventory.items.length,
              separatorBuilder: (_, __) => const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}

class StatusBarWidget extends HookConsumerWidget {
  const StatusBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventory = ref.watch(inventoryProvider);
    return Table(
      children: [
        TableRow(children: [
          const Text('Iron: '),
          Text(inventory.get(ItemKey.IRON).toString())
        ]),
      ],
    );
  }
}
