import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_core_provider.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/mixins/history_mixin.dart';
import 'package:mining_game/persistence/hive_manager.dart';
import 'package:mining_game/quests/quests_page.dart';

import 'garage_controller.dart';
import 'widgets/garage_page.dart';
import 'widgets/inventory_page.dart';
import 'widgets/planet_page.dart';
import 'widgets/status_bar_wrapped_page.dart';
import 'widgets/store_page.dart';

void main() async {
  // Hive.registerAdapter(BuiltMapAdapter<PlanetPoint, PlanetTile>(30));
  // Hive.registerAdapter(MinerInstanceAdapter());
  // Hive.registerAdapter(ItemDefinitionIdAdapter());
  // Hive.registerAdapter(StackInstanceAdapter());
  // Hive.registerAdapter(ItemContainerAdapter());
  // Hive.registerAdapter(InstanceIdAdapter());
  // Hive.registerAdapter(BuiltMapAdapter<ItemDefinitionId, int>(32));
  // Hive.registerAdapter(PlanetTileAdapter());
  // Hive.registerAdapter(PlanetPointAdapter());
  // Hive.registerAdapter(PlanetAdapter());
  Hive.registerAdapter(SlotStateEmptyAdapter());
  Hive.registerAdapter(SlotStateLockedAdapter());
  Hive.registerAdapter(SlotStateMinerAdapter());

  await Hive.initFlutter();

  await HiveManager.init();
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
      home: AppRootWidget(),
      // // initialRoute: '/${ref.watch(mainNavigationPagesProvider).first.name}',
      // initialRoute: ref.watch(mainNavigationPagesProvider)[2].routeName,
      // routes: <String, WidgetBuilder>{
      //   // '/': (context) => const TestWi(),
      //   for (final nav in ref.watch(mainNavigationPagesProvider))
      //     nav.routeName: nav.builder,
      // },
    );
  }
}

class AppDrawerNavigation extends ConsumerWidget {
  const AppDrawerNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routes = ref.watch(mainNavigationPagesProvider);
    final currentIndex = ref.watch(navigationIndexProvider);
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            for (int i = 0; i < routes.length; i++)
              RouteBaseWidget(
                // false,
                i != currentIndex,
                routes[i],
              ),
          ],
        ),
      ),
    );
  }
}

class AppRootWidget extends HookConsumerWidget {
  const AppRootWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routes = ref.watch(mainNavigationPagesProvider);
    final currentIndex = ref.watch(navigationIndexProvider);
    return WillPopScope(
        child: Scaffold(
          body: Stack(
            children: [
              for (int i = 0; i < routes.length; i++)
                RouteBaseWidget(
                  // false,
                  i != currentIndex,
                  routes[i],
                ),
            ],
          ),
          bottomNavigationBar: const BottomNavigationWidget(),
        ),
        onWillPop: () async {
          final currentTab = routes[currentIndex];
          final isFirstRouteInCurrentTab =
              await currentTab.key.currentState?.maybePop() ?? false;
          if (isFirstRouteInCurrentTab) {
            // if not on the 'main' tab
            if (currentTab != routes[0]) {
              ref
                  .read(navigationIndexProvider.notifier)
                  .updateIndex(currentIndex);
              return false;
            }
          }
          return isFirstRouteInCurrentTab;
        });
  }
}

class BottomNavigationWidget extends ConsumerWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      unselectedItemColor: Colors.blue,
      items: [
        for (final route in ref.watch(mainNavigationPagesProvider))
          // TODO
          BottomNavigationBarItem(
              label: route.name,
              icon: Icon(
                route.icon,
                color: Colors.blue,
              ))
      ],
      onTap: (index) {
        ref.read(navigationIndexProvider.notifier).updateIndex(index);
      },
      currentIndex: ref.watch(navigationIndexProvider),
      selectedItemColor: Colors.red,
    );
  }
}

class RouteBaseWidget extends ConsumerWidget {
  final RootRoute _rootRoute;
  final bool _visible;

  const RouteBaseWidget(
    this._visible,
    this._rootRoute, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Offstage(
        offstage: _visible, child: _rootRoute.builder(context, _rootRoute));
  }
}

class RootRoute {
  final key = GlobalKey<NavigatorState>();
  final String name;
  final Widget Function(BuildContext context, RootRoute rootRoute) builder;
  final IconData icon;

  RootRoute({required this.name, required this.builder, required this.icon});
}

final navigationIndexProvider =
    StateNotifierProvider<IndexNotifier, int>((ref) => IndexNotifier());

class IndexNotifier extends StateNotifier<int> with HistoryMixin<int> {
  IndexNotifier() : super(0);

  void updateIndex(int i) => state = i;
}

class TestWi extends HookConsumerWidget {
  const TestWi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StatusBarWrappedPageWidget(
      title: 'testwi',
      builder: (context, ref) => DefaultTextStyle(
        style: Theme.of(context).textTheme.headline4!,
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Text('Home Page'),
        ),
      ),
    );
  }
}

final mainNavigationPagesProvider = StateProvider<BuiltList<RootRoute>>((ref) {
  return [
    RootRoute(
        name: 'planet',
        icon: Icons.circle,
        builder: (context, _) => const PlanetPageWidget()),
    RootRoute(
        name: 'Store',
        icon: Icons.store,
        builder: (context, _) => const StorePageWidget()),
    RootRoute(
        name: 'Inventory',
        icon: Icons.storage,
        builder: (context, _) => const InventoryPageWidget()),
    RootRoute(
        name: 'Garage',
        builder: (context, _) => const GaragePageWidget(),
        icon: Icons.garage),
    RootRoute(
        name: 'Quests',
        builder: (context, rootRoute) => QuestListPageWidget(rootRoute),
        icon: Icons.attractions)
  ].build();
});
