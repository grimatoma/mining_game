import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_core_provider.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/items.dart';
import 'package:mining_game/item_management/store.dart';
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
      ],
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
    var store = ref.watch(storeStateProvider.notifier);
    final items = ref.watch(storeStateProvider);

    Widget _shopItem(ShopItem shopItem) => _ActionMenuItem(
        text: '${shopItem.item.name}  ${shopItem.cost}',
        onPressed: () {
          if (!store.canBuyItem(shopItem)) return;
          ref.read(storeStateProvider.notifier).buyItem(shopItem);
        },
        background: store.canBuyItem(shopItem) ? Colors.white : Colors.grey);

    return ListView.separated(
      itemBuilder: (_, index) => _shopItem(items[index]),
      itemCount: items.length,
      separatorBuilder: (_, __) => const Divider(),
    );
  }
}

class InventoryMenuWidget extends HookConsumerWidget {
  const InventoryMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(inventoryStateProvider);
    final itemKeys = items.keys.toList();

    return ListView.separated(
      itemBuilder: (_, index) {
        final item = itemKeys[index];
        return Table(
          children: [
            TableRow(children: [const Text('Name'), Text(item.name)]),
            TableRow(
                children: [const Text('Description'), Text(item.description)]),
            TableRow(
                children: [const Text('Amount'), Text(items[item].toString())]),
          ],
        );
      },
      itemCount: items.length,
      separatorBuilder: (_, __) => const Divider(),
    );
  }
}
