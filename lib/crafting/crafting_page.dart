import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/crafting/crafting_definitions.dart';
import 'package:mining_game/crafting/crafting_manager.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/widgets/status_bar.dart';

class CraftingPageWidget extends ConsumerWidget {
  const CraftingPageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipes = ItemDirectory.allRecipes.values.toList(growable: false);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Quests'),
      ),
      body: Column(
        children: [
          const StatusBarWidget(),
          const CraftingQueueWidget(),
          ListView.separated(
            itemBuilder: (_, index) {
              return CraftRowWidget(recipes[index]);
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: recipes.length,
            shrinkWrap: true,
          )
        ],
      ),
    );
  }
}

class CraftRowWidget extends ConsumerWidget {
  final CraftingRecipe _recipe;

  const CraftRowWidget(
    this._recipe, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemDefinition = _recipe.output.definitionGet;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                itemDefinition.image,
                fit: BoxFit.fill,
                height: 64,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  itemDefinition.name,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                RequirementRenderer(requirement: _recipe.input.toRequirement),
              ],
            ),
          ],
        ),
        TextButton(
            onPressed: () {
              ref.read(craftingSessionProvider.notifier).enqueue(_recipe);
            },
            child: const Text('Enqueue')),
      ],
    );
  }
}

class CraftingQueueWidget extends ConsumerWidget {
  const CraftingQueueWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        session(ref),
        queue(ref),
      ],
    );
  }

  Widget session(WidgetRef ref) {
    final session = ref.watch(craftingSessionProvider);
    if (session != null) {
      return Text(session.remaining.toString());
    }
    return const Text('empty');
  }

  Widget queue(WidgetRef ref) {
    return Text('queue size: ${ref.watch(craftingQueueProvider).length}');
  }
}
