import 'dart:io' show Platform;

import 'package:built_collection/built_collection.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/crafting/crafting_page.dart';
import 'package:mining_game/digging_site.dart';
import 'package:mining_game/game_management/game_core_provider.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_detail_page.dart';
import 'package:mining_game/mixins/history_mixin.dart';
import 'package:mining_game/persistence/hive_manager.dart';
import 'package:mining_game/quests/quests_page.dart';
import 'package:window_manager/window_manager.dart';

import 'quests/quest_detail_widget.dart';
import 'widgets/inventory_page.dart';
import 'widgets/planet_page.dart';
import 'widgets/store_page.dart';

late final Map<String, SpriteSheet> spriteSheets;

void main() async {
  await Hive.initFlutter();

  await HiveManager.init();

  final image = await Flame.images.load('all/resources_sprite_page.png');

  spriteSheets = {
    'all/resources_sprite_page.png':
        SpriteSheet.fromColumnsAndRows(image: image, columns: 11, rows: 11)
  };

  if (!kIsWeb) {
    if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
      WidgetsFlutterBinding.ensureInitialized();
      await windowManager.ensureInitialized();

      WindowOptions windowOptions = const WindowOptions(
        size: Size(1200, 800),
        center: true,
        backgroundColor: Colors.transparent,
        skipTaskbar: false,
        titleBarStyle: TitleBarStyle.normal,
        minimumSize: Size(800, 600),
      );
      windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
        await windowManager.focus();
      });
    }
  }

  runApp(const ProviderScope(child: MaterialApp(home: MiningGameWidget())));
}

final navIndexProvider = StateProvider<int>((ref) => 0);

class MinerNavigationRail extends ConsumerWidget {
  const MinerNavigationRail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        ref
            .read(goRouterProvider)
            .go('/${ref.read(mainNavigationPagesProvider)[index].path}');
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
                ref.read(goRouterProvider).go(
                    '/${ref.read(mainNavigationPagesProvider)[index].path}');
              },
              items: [
                for (final route in ref.watch(mainNavigationPagesProvider))
                  BottomNavigationBarItem(
                      icon: route.iconWidget, label: route.label),
              ],
            ),
      // appBar: AppBar(
      //   title: const Text('test'),
      // ),
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

// class RouteBaseWidget extends ConsumerWidget {
//   final RootRoute _rootRoute;
//   final bool _visible;
//
//   const RouteBaseWidget(
//     this._visible,
//     this._rootRoute, {
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Offstage(
//         offstage: _visible, child: _rootRoute.builder(context, _rootRoute));
//   }
// }

class RootRoute {
  final key = GlobalKey<NavigatorState>();
  final String label;
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
      label: 'Digging Site',
      path: 'dig_site',
      icon: Icons.golf_course,
      goRouterWidgetBuilder: (context, _) =>
          ref.watch(digSiteManagerProvider).page,
    ),
    RootRoute(
      label: 'Forest',
      path: 'forest',
      icon: Icons.forest,
      goRouterWidgetBuilder: (context, _) =>
          ref.watch(forestManagerProvider).page,
    ),
    RootRoute(
      label: 'Planet',
      path: 'planet',
      icon: Icons.circle,
      goRouterWidgetBuilder: (context, _) => const PlanetPageWidget(),
    ),
    RootRoute(
      label: 'Store',
      path: 'store',
      icon: Icons.store,
      goRouterWidgetBuilder: (context, _) => const StorePageWidget(),
    ),
    RootRoute(
      label: 'Inventory',
      path: 'inventory',
      icon: Icons.storage,
      goRouterWidgetBuilder: (context, _) => const InventoryPageWidget(),
      routes: [
        GoRoute(
          path: 'item/:itemId',
          builder: (context, state) => ItemDetailPageWidget(
              ItemDefinitionId(state.params['itemId']!).definition,
              heroTag: state.queryParams['heroSrc']),
          // // pageBuilder: (context, state) => NoTransitionPage<void>(
          // //   key: state.pageKey,
          // //   child: ItemDetailPageWidget(
          // //     ItemDefinitionId(state.params['itemId']!).definition,
          // //     source: state.queryParams['heroSrc'],
          // //   ),
          // ),
        )
      ],
    ),

    // RootRoute(
    //     name: 'Garage',
    //     builder: (context, _) => const GaragePageWidget(),
    //     icon: Icons.garage),
    RootRoute(
      label: 'Quests',
      path: 'quests',
      goRouterWidgetBuilder: (context, _) => const QuestListPageWidget(),
      icon: Icons.attractions,
      routes: [
        GoRoute(
            path: 'quest/:questId',
            builder: (context, state) {
              return QuestDetailWidget(int.parse(state.params['questId']!));
            })
      ],
    ),
    RootRoute(
      label: 'Crafting',
      path: 'crafting',
      icon: Icons.handyman,
      goRouterWidgetBuilder: (context, _) => const CraftingPageWidget(),
    ),
  ].build();
});

final goRouterProvider = StateProvider<GoRouter>((ref) {
  return GoRouter(initialLocation: '/', routes: [
    GoRoute(
      path: '/',
      redirect: (_, __) => '/dig_site',
    ),
    for (final route in ref.watch(mainNavigationPagesProvider))
      GoRoute(
        path: '/${route.path}',
        builder: route.goRouterWidgetBuilder,
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          child: route.goRouterWidgetBuilder(context, state),
        ),
        routes: route.routes,
      ),
  ]);
});

class SlideRightToLeftTransition extends CustomTransitionPage {
  SlideRightToLeftTransition({required super.key, required super.child})
      : super(transitionsBuilder: (BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        });
}
