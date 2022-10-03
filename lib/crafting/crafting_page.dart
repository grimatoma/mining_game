import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/crafting/crafting_definitions.dart';
import 'package:mining_game/crafting/crafting_manager.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/widgets/status_bar.dart';

const textStyleTitle = TextStyle(fontWeight: FontWeight.bold, fontSize: 18);

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
        title: const Text('Crafting'),
      ),
      body: Column(
        children: [
          const StatusBarWidget(),
          const CraftingQueueWidget(),
          const Text(
            'Recipes',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) {
                return CraftRowWidget(recipes[index]);
              },
              separatorBuilder: (_, __) => const Divider(),
              itemCount: recipes.length,
              shrinkWrap: true,
            ),
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
    final itemDefinition = _recipe.output.definition;
    final canBuy = ref.watch(inventoryProvider).canRemove(_recipe.input);
    return Row(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                itemDefinition.imagePath,
                fit: BoxFit.fill,
                height: 64,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  itemDefinition.name,
                  style: textStyleTitle,
                ),
                RequirementRenderer(requirement: _recipe.input.toRequirement),
              ],
            ),
          ],
        ),
        TextButton(
            onPressed: canBuy
                ? () {
                    ref.read(craftingSessionProvider.notifier).enqueue(_recipe);
                  }
                : null,
            child: const Text('Enqueue')),
      ],
    );
  }
}

class CraftingQueueWidget extends HookConsumerWidget {
  const CraftingQueueWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queueSize = ref.watch(craftingQueueProvider).length;
    return SizedBox(
      height: 120,
      child: Column(
        children: [
          Text(
            'Crafting queue ($queueSize)',
            style: textStyleTitle,
          ),
          Expanded(
            child: Row(
              children: [
                session(ref),
                Expanded(child: queue(ref)),
              ],
            ),
          ),
          Container(
            height: 2,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget session(WidgetRef ref) {
    final session = ref.watch(craftingSessionProvider);
    if (session != null) {
      final itemDefinition = session.recipe.output.definition;
      return Container(
          color: Colors.green[100],
          width: 100,
          height: 100,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  ref.read(craftingSessionProvider.notifier).removeFromQueue(0);
                },
                child: SizedBox(
                  height: 90,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          itemDefinition.imagePath,
                          fit: BoxFit.fill,
                        ),
                        // Align(
                        //   alignment: AlignmentDirectional.bottomCenter,
                        //   child: Text(
                        //     itemDefinition.name,
                        //     style: TextStyle(
                        //       fontSize: 24,
                        //       foreground: Paint()
                        //         ..style = PaintingStyle.stroke
                        //         ..strokeWidth = 1
                        //         ..color = Colors.blue[700]!,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: LinearProgressIndicator(
                  value:
                      1 - session.remaining / session.recipe.craftingDuration,
                ),
              )
            ],
          ));
    }
    return Container(
        color: Colors.green[100],
        width: 100,
        height: 100,
        child: const Center(
            child: Text(
          'Crafting queue empty',
          textAlign: TextAlign.center,
        )));
  }

  Widget queue(WidgetRef ref) {
    final items = ref.watch(craftingQueueProvider);
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 75,
            child: RotatedBox(
              quarterTurns: 3,
              child: ListView.builder(
                  controller: useScrollController(),
                  itemCount: max(0, items.length - 1),
                  itemBuilder: (context, index) {
                    index++;
                    final item = items[index];
                    final definition = item.output.definition;
                    return GestureDetector(
                      onTap: () {
                        ref
                            .read(craftingSessionProvider.notifier)
                            .removeFromQueue(index);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: SizedBox(
                            width: 75,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image.asset(
                                      definition.imagePath,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                AutoSizeText(definition.name)
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ),
      ],
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
