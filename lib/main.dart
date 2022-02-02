import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/adapters.dart';
import 'package:mining_game/game_management/game_core_provider.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/persistence.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';

import 'item_management/instance_id.dart';
import 'mining/miner.dart';
import 'widgets/inventory_page.dart';
import 'widgets/planet_page.dart';
import 'widgets/status_bar.dart';
import 'widgets/store_page.dart';

void main() async {
  Hive.registerAdapter(BuiltMapAdapter<PlanetPoint, PlanetTile>(30));
  Hive.registerAdapter(MinerDefinitionAdapter());
  Hive.registerAdapter(ActiveMinerInstanceAdapter());
  Hive.registerAdapter(StoredMinerInstanceAdapter());
  Hive.registerAdapter(ItemContainerAdapter());
  Hive.registerAdapter(ItemKeyAdapter());
  Hive.registerAdapter(InstanceIdAdapter());
  Hive.registerAdapter(BuiltMapAdapter<ItemKey, int>(32));
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
      home: SafeArea(
        child: Scaffold(
          persistentFooterButtons: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _NavigationMenuItem(
                    text: 'Planet Menu',
                    path: 'planet',
                    builder: (context) => const PlanetPageWidget()),
                _NavigationMenuItem(
                    text: 'Store',
                    path: 'store',
                    builder: (context) => const StorePageWidget()),
                _NavigationMenuItem(
                    text: 'Inventory',
                    path: 'inventory',
                    builder: (context) => const InventoryPageWidget())
              ],
            ),
          ],
          appBar: AppBar(
            title: const Text('Mining Game WIP'),
          ),
          body: const MainMenuWidget(),
        ),
      ),
    );
  }
}

class MainMenuWidget extends HookConsumerWidget {
  const MainMenuWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            const StatusBarWidget(),
            _NavigationMenuItem(
                text: 'Planet Menu',
                path: 'planet',
                builder: (context) => const PlanetPageWidget()),
            _NavigationMenuItem(
                text: 'Store',
                path: 'store',
                builder: (context) => const StorePageWidget()),
            _NavigationMenuItem(
                text: 'Inventory',
                path: 'inventory',
                builder: (context) => const InventoryPageWidget()),
            const Center(child: Text('Garage Coming Soon!')),
            const Center(child: Text('Crafting Coming Soon!')),
            TextButton(
                onPressed: () {
                  for (final database in DatabaseName.values) {
                    Hive.deleteBoxFromDisk(database.name);
                  }
                },
                child: const Center(
                    child: Text('Clear game state\n(This will reset the '
                        'game[For testing])\nReload game after clicking '
                        'to take effect'))),
          ],
        ),
      ),
    );
  }
}

class _NavigationMenuItem extends StatelessWidget {
  final String text;
  final String path;
  final Widget Function(BuildContext) builder;
  const _NavigationMenuItem(
      {Key? key, required this.text, required this.builder, required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: builder, settings: RouteSettings(name: '/$path')));
        },
        child: Text(text));
  }
}
