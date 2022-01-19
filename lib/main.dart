import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_core_provider.dart';
import 'package:mining_game/planet/widgets/planet_map_renderer_widget.dart';
import 'package:mining_game/planet/widgets/src/planet_interface_widget.dart';

void main() {
  runApp(const ProviderScope(child: MaterialApp(home: MiningGameWidget())));
}

class MiningGameWidget extends HookConsumerWidget {
  const MiningGameWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(gameCoreProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mining Game WIP'),
      ),
      body: const MainMenuWidget(),
    );
  }
}

class MainMenuWidget extends HookConsumerWidget {
  const MainMenuWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        _MenuItem(
            text: 'Planet Menu',
            builder: (context) => const PlanetPageWidget()),
        _MenuItem(
            text: 'Store', builder: (context) => const PlanetPageWidget()),
        _MenuItem(
            text: 'Garage', builder: (context) => const PlanetPageWidget()),
        _MenuItem(
            text: 'Crafting', builder: (context) => const PlanetPageWidget()),
      ],
    );
  }
}

class _MenuItem extends StatelessWidget {
  final String text;
  final Widget Function(BuildContext) builder;
  const _MenuItem({Key? key, required this.text, required this.builder})
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

class PlanetPageWidget extends HookConsumerWidget {
  const PlanetPageWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: const [
      PlanetMapRenderer(),
      PlanetInterfaceWidget(),
    ]);
  }
}

class StoreMenuWidget extends HookConsumerWidget {
  const StoreMenuWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
