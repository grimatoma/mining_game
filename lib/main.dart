import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/adapters.dart';
import 'package:mining_game/game_management/game_core_provider.dart';
import 'package:mining_game/garage_controller.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/item_ftest.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/mixins/history_mixin.dart';
import 'package:mining_game/persistence.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';
import 'package:mining_game/widgets/quests_page.dart';

import 'item_management/instance_id.dart';
import 'mining/miner.dart';
import 'mining/miners.dart';
import 'widgets/garage_page.dart';
import 'widgets/inventory_page.dart';
import 'widgets/navigator_page.dart';
import 'widgets/planet_page.dart';
import 'widgets/status_bar.dart';
import 'widgets/store_page.dart';

void main() async {
  Hive.registerAdapter(BuiltMapAdapter<PlanetPoint, PlanetTile>(30));
  Hive.registerAdapter(MinerInstanceAdapter());
  Hive.registerAdapter(MinerDefinitionIdAdapter());
  Hive.registerAdapter(ItemContainerAdapter());
  Hive.registerAdapter(ItemIdAdapter());
  Hive.registerAdapter(InstanceIdAdapter());
  Hive.registerAdapter(BuiltMapAdapter<ItemId, int>(32));
  Hive.registerAdapter(PlanetTileAdapter());
  Hive.registerAdapter(PlanetPointAdapter());
  Hive.registerAdapter(PlanetAdapter());
  Hive.registerAdapter(SlotStateEmptyAdapter());
  Hive.registerAdapter(SlotStateLockedAdapter());
  Hive.registerAdapter(SlotStateMinerAdapter());

  await Hive.initFlutter();
  await MinerHiveManager.init();
  await ItemDirectory.init();
  runApp(const ProviderScope(child: MaterialApp(home: MiningGameWidget())));
}

class MiningGameWidget extends HookConsumerWidget {
  const MiningGameWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(gameCoreProvider);

    return const MaterialApp(
      title: 'Lets mine',
      home: MainNavigationWidget(),
    );
  }
}

class NavItem {
  final GlobalKey key;
  final String name;
  final Widget Function(BuildContext) builder;
  final IconData icon;

  NavItem({required this.name, required this.builder, required this.icon})
      : key = GlobalKey();
}

final navigationIndexProvider =
    StateNotifierProvider<IndexNotifier, int>((ref) => IndexNotifier());

class IndexNotifier extends StateNotifier<int> with HistoryMixin<int> {
  IndexNotifier() : super(0) {
    state = 0;
  }
}

final mainNavigationPagesProvider = StateProvider<BuiltList<NavItem>>((ref) {
  return [
    NavItem(
        name: 'Main',
        icon: Icons.home,
        builder: (context) => const MainMenuWidget()),
    NavItem(
        name: 'Planet',
        icon: Icons.circle,
        builder: (context) => const PlanetPageWidget()),
    NavItem(
        name: 'Store',
        icon: Icons.store,
        builder: (context) => const StorePageWidget()),
    NavItem(
        name: 'Inventory',
        icon: Icons.storage,
        builder: (context) => const InventoryPageWidget()),
    NavItem(
        name: 'Garage',
        builder: (context) => const GaragePageWidget(),
        icon: Icons.garage),
    NavItem(
        name: 'Quests',
        builder: (context) => const QuestListPageWidget(),
        icon: Icons.attractions)
  ].build();
});

class MainNavigationWidget extends ConsumerWidget {
  const MainNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(navigationIndexProvider);
    final items = ref.watch(mainNavigationPagesProvider);
    return Scaffold(
      body: SafeArea(
        // Add Will PopScope
        child: WillPopScope(
          onWillPop: () async {
            final stateProvider = ref.read(navigationIndexProvider.notifier);
            if (stateProvider.canUndo) {
              stateProvider.undo();
            }
            // TODO: Allow app to close...
            return false;
          },
          child: IndexedStack(
            index: index,
            children: [
              for (final item in items) NavigatorPage(navItem: item),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          for (final item in items)
            BottomNavigationBarItem(icon: Icon(item.icon), label: item.name),
        ],
        currentIndex: index,
        onTap: (index) async {
          ref.read(navigationIndexProvider.notifier).state = index;
        },
      ),
    );
  }
}

class MainMenuWidget extends HookConsumerWidget {
  const MainMenuWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.read(mainNavigationPagesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let\'s Mine!'),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              const StatusBarWidget(),
              for (var i = 1; i < items.length; i++)
                _NavigationMenuItem(
                    text: items[i].name,
                    path: items[i].name,
                    navItem: items[i]),
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
      ),
    );
  }
}

class _NavigationMenuItem extends ConsumerWidget {
  final String text;
  final String path;
  final NavItem navItem;
  const _NavigationMenuItem(
      {Key? key, required this.text, required this.navItem, required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
        onPressed: () {
          final index = ref.read(mainNavigationPagesProvider).indexOf(navItem);
          ref.read(navigationIndexProvider.notifier).state =
              index >= 0 ? index : 0;
          Navigator.of(context).restorablePushNamed('/${navItem.name}');
          // Navigator.
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: builder, settings: RouteSettings(name: '/$path')));
        },
        child: Text(text));
  }
}

// onWillPop: () async {
// print(
// 'On Will called ${navigatorKeys[_pageIndex]?.currentState?.context.widget}');
// // return !await navigatorKeys[_pageIndex].currentState.context;
// return !await Navigator.maybePop(
// navigatorKeys[_pageIndex]!.currentState!.context);
// // Navigator.pop(navigatorKeys[_pageIndex].currentState.context);
// },
