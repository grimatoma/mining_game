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

class MiningGameWidget extends HookConsumerWidget {
  const MiningGameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(gameCoreProvider);
    final router = ref.watch(goRouterProvider);
    final currentIndex = ref.watch(navIndexProvider);

    return Scaffold(
      body: Row(children: [
        NavigationRail(
          destinations: [
            for (final route in ref.watch(mainNavigationPagesProvider))
              NavigationRailDestination(
                  icon: Icon(route.icon), label: Text(route.name)),
          ],
          selectedIndex: currentIndex,
          onDestinationSelected: (index) {
            ref.read(navIndexProvider.notifier).state = index;
            router.go(ref.read(mainNavigationPagesProvider)[index].path);
          },
        ),
        const VerticalDivider(
          thickness: 1,
          width: 1,
        ),
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
  final String name;
  final Widget Function(BuildContext context, RootRoute rootRoute) builder;
  final Widget Function(
    BuildContext context,
    GoRouterState state,
  ) goRouterWidgetBuilder;
  final IconData icon;
  final String path;

  RootRoute(
      {required this.path,
      required this.name,
      required this.builder,
      required this.goRouterWidgetBuilder,
      required this.icon});
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
      name: 'Planet',
      path: '/',
      icon: Icons.circle,
      builder: (context, _) => const PlanetPageWidget(),
      goRouterWidgetBuilder: (context, _) => const PlanetPageWidget(),
    ),

    RootRoute(
      name: 'Store',
      path: '/store',
      icon: Icons.store,
      builder: (context, _) => const StorePageWidget(),
      goRouterWidgetBuilder: (context, _) => const StorePageWidget(),
    ),
    RootRoute(
      name: 'Inventory',
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
      name: 'Quests',
      path: '/quests',
      builder: (context, rootRoute) => QuestListPageWidget(rootRoute),
      goRouterWidgetBuilder: (context, _) => const PlanetPageWidget(),
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
              path: route.name,
              builder: route.goRouterWidgetBuilder,
              pageBuilder: (context, state) => NoTransitionPage<void>(
                key: state.pageKey,
                child: route.goRouterWidgetBuilder(context, state),
              ),
            ),
        ]),
  ]);
});
