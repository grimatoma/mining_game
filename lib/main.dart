import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_core_provider.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/mixins/history_mixin.dart';
import 'package:mining_game/persistence/hive_manager.dart';
import 'package:mining_game/quests/quests_page.dart';

import 'widgets/inventory_page.dart';
import 'widgets/planet_page.dart';
import 'widgets/store_page.dart';

void main() async {
  await Hive.initFlutter();

  await HiveManager.init();
  await ItemDirectory.init();
  runApp(const ProviderScope(child: MaterialApp(home: MiningGameWidget())));
}

final navIndexProvider = StateProvider<int>((ref) => 0);

class MinerNavigationRail extends ConsumerWidget {
  const MinerNavigationRail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return NavigationRail(
      useIndicator: true,
      indicatorColor: Colors.cyan[100],
      labelType: NavigationRailLabelType.all,
      selectedLabelTextStyle: TextStyle(color: Colors.lightBlue[500]),
      destinations: [
        for (final route in ref.watch(mainNavigationPagesProvider))
          NavigationRailDestination(
              icon: route.iconWidget, label: route.labelWidget),
      ],
      selectedIndex: ref.watch(navIndexProvider),
      onDestinationSelected: (index) {
        ref.read(navIndexProvider.notifier).state = index;
        router.go(ref.read(mainNavigationPagesProvider)[index].path);
      },
    );
  }
}

const smallScreenMaxSize = 640;

class MiningGameWidget extends HookConsumerWidget {
  const MiningGameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(gameCoreProvider);
    final router = ref.watch(goRouterProvider);
    final smallScreen = MediaQuery.of(context).size.width <= smallScreenMaxSize;

    return Scaffold(
      bottomNavigationBar: !smallScreen
          ? null
          : BottomNavigationBar(
              selectedItemColor: Colors.lightBlue[500],
              unselectedItemColor: Colors.grey,
              unselectedLabelStyle: const TextStyle(color: Colors.grey),
              showUnselectedLabels: true,
              selectedLabelStyle: const TextStyle(color: Colors.red),
              currentIndex: ref.watch(navIndexProvider),
              onTap: (index) {
                ref.read(navIndexProvider.notifier).state = index;
                router.go(ref.read(mainNavigationPagesProvider)[index].path);
              },
              items: [
                for (final route in ref.watch(mainNavigationPagesProvider))
                  BottomNavigationBarItem(
                      icon: route.iconWidget, label: route.label),
              ],
            ),
      appBar: AppBar(
        title: const Text('test'),
      ),
      // drawer: Container(width: 150, child: const MinerNavigationRail()),
      body: Row(children: [
        if (!smallScreen) ...[
          const MinerNavigationRail(),
          const VerticalDivider(
            thickness: 1,
            width: 1,
          ),
        ],
        Expanded(
          child: Column(
            children: [
              // const StatusBarWidget(),
              Expanded(
                child: MaterialApp.router(
                  routeInformationProvider: router.routeInformationProvider,
                  routeInformationParser: router.routeInformationParser,
                  routerDelegate: router.routerDelegate,
                  title: 'Lets mine',
                ),
              ),
            ],
          ),
        ),
      ]),
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
  final String label;
  final Widget Function(BuildContext context, RootRoute rootRoute) builder;
  final Widget Function(
    BuildContext context,
    GoRouterState state,
  ) goRouterWidgetBuilder;
  final IconData icon;
  final String path;
  final List<GoRoute> routes;

  Icon get iconWidget => Icon(icon);

  Text get labelWidget => Text(label);

  RootRoute(
      {required this.path,
      required this.label,
      required this.builder,
      required this.goRouterWidgetBuilder,
      required this.icon,
      this.routes = const []});
}

final navigationIndexProvider =
    StateNotifierProvider<IndexNotifier, int>((ref) => IndexNotifier());

class IndexNotifier extends StateNotifier<int> with HistoryMixin<int> {
  IndexNotifier() : super(0);

  void updateIndex(int i) => state = i;
}

final mainNavigationPagesProvider = StateProvider<BuiltList<RootRoute>>((ref) {
  return [
    RootRoute(
      label: 'Planet',
      path: '/',
      icon: Icons.circle,
      builder: (context, _) => const PlanetPageWidget(),
      goRouterWidgetBuilder: (context, _) => const PlanetPageWidget(),
    ),

    RootRoute(
      label: 'Store',
      path: '/store',
      icon: Icons.store,
      builder: (context, _) => const StorePageWidget(),
      goRouterWidgetBuilder: (context, _) => const StorePageWidget(),
    ),
    RootRoute(
      label: 'Inventory',
      path: '/inventory',
      icon: Icons.storage,
      builder: (context, _) => const InventoryPageWidget(),
      goRouterWidgetBuilder: (context, _) => const InventoryPageWidget(),
    ),
    // RootRoute(
    //     name: 'Garage',
    //     builder: (context, _) => const GaragePageWidget(),
    //     icon: Icons.garage),
    RootRoute(
      label: 'Quests',
      path: '/quests',
      builder: (context, rootRoute) => const QuestListPageWidget(),
      goRouterWidgetBuilder: (context, _) => const QuestListPageWidget(),
      icon: Icons.attractions,
    )
  ].build();
});

final goRouterProvider = StateProvider<GoRouter>((ref) {
  return GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const PlanetPageWidget(),
        routes: [
          for (final route in ref.watch(mainNavigationPagesProvider))
            GoRoute(
              path: route.label,
              builder: route.goRouterWidgetBuilder,
              pageBuilder: (context, state) => NoTransitionPage<void>(
                key: state.pageKey,
                child: route.goRouterWidgetBuilder(context, state),
              ),
            ),
        ]),
  ]);
});
