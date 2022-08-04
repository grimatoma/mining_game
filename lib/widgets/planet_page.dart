import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/doodads/base/doodad_definition.dart';
import 'package:mining_game/doodads/base/doodad_interface_and_instance.dart';
import 'package:mining_game/doodads/base/tickable_doodad.dart';
import 'package:mining_game/doodads/doodad_test_wip.dart';
import 'package:mining_game/planet/planet_manager.dart';
import 'package:mining_game/planet/widgets/planet_map_renderer_widget3.dart';

import '../item_management/item_definition.dart';
import 'status_bar_wrapped_page.dart';

class PlanetPageWidget extends HookConsumerWidget {
  const PlanetPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StatusBarWrappedPageWidget(
      title: 'Planet',
      builder: (context, ref) => Stack(fit: StackFit.expand, children: [
        const HexagonPlanetRenderer(),
        Align(
          alignment: FractionalOffset.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TextButton(onPressed: null, child: Text('Settings')),
            ],
          ),
        ),
        if (ref.watch(panelVisibilityState) == PanelVisibility.BuyMenu)
          const BuildMenuWidget(),
        if (ref.watch(panelVisibilityState) == PanelVisibility.TileDetail)
          const Align(
              alignment: FractionalOffset.bottomCenter,
              child: TileDetailWidget()),
      ]),
    );
  }
}

class ModalTitleWidget extends StatelessWidget {
  final String title;
  final List<Widget> leftCharms;
  final List<Widget> rightCharms;

  const ModalTitleWidget(
      {Key? key,
      required this.title,
      this.leftCharms = const [],
      this.rightCharms = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.tealAccent,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 4, 4, 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: AutoSizeText(
                      title,
                      maxLines: 1,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  if (leftCharms.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Row(
                        children: leftCharms,
                      ),
                    )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ...rightCharms,
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BuildMenuWidget extends HookConsumerWidget {
  static const menuItemPadding = 8.0;

  const BuildMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTile = ref.watch(selectedTileControllerProvider);
    if (selectedTile == null) {
      print('opening buy menu when no tile is selected');
      ref.read(panelVisibilityState.notifier).state = PanelVisibility.None;
      return Container();
    } else {
      return Stack(
        children: [
          GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                closeBuyMenu(ref);
              },
              child: Container(
                  // Covers the background to allow for closing of the buy menu.
                  )),
          Center(
            child: Container(
              width: min(600, MediaQuery.of(context).size.width * .95),
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: Colors.yellowAccent[100],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2)),
              // margin: EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  children: [
                    ModalTitleWidget(
                      title: 'Build menu',
                      rightCharms: [
                        TextButton(
                            onPressed: () {
                              closeBuyMenu(ref);
                            },
                            child: const Text('Close'))
                      ],
                    ),
                    Expanded(
                      child: GridView.count(
                        padding: const EdgeInsets.all(menuItemPadding),
                        mainAxisSpacing: menuItemPadding,
                        crossAxisSpacing: menuItemPadding,
                        crossAxisCount:
                            (MediaQuery.of(context).size.width / 128)
                                .floor()
                                .clamp(3, 5),
                        children: [
                          for (final item in supportedItemsToBuy(selectedTile))
                            DoodadBuildItemWidget(BuildMenuItem(
                                doodad: item, cost: ItemRequirement.empty())),
                        ],
                      ),
                    ),
                    const BuildMenuFocusDetail(),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }
  }
}

Iterable<DoodadDefinition> supportedItemsToBuy(
    TileStateController tileStateController) {
  return [
    for (final item in doodadDefinitionsExample)
      if (!tileStateController.hasDoodad &&
          item.supportedLocations.contains(tileStateController.tileType))
        item,
  ];
}

final buildMenuItemFocusProvider = StateProvider<BuildMenuItem?>((ref) => null);

class BuildMenuFocusDetail extends ConsumerWidget {
  const BuildMenuFocusDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(buildMenuItemFocusProvider);
    if (item == null) return Container();
    final doodad = item.doodad;
    return Container(
      color: Colors.green[100],
      height: 200,
      child: Column(
        children: [
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: Colors.red[100],
                border: const Border(
                    bottom: BorderSide(color: Colors.black, width: 2))),
            child: Text(
              doodad.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Flexible(
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        doodad.storeImageAsset,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(doodad.description),
                          ],
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            buyDoodad(ref);
                          },
                          child: const Center(child: Text('Buy'))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void buyDoodad(WidgetRef ref) {
  final item = ref.watch(buildMenuItemFocusProvider);
  final selectedTile = ref.read(selectedTileControllerProvider);
  if (item == null || selectedTile == null) return;

  selectedTile.addDoodad(item.doodad);
  ref.read(panelVisibilityState.notifier).state = PanelVisibility.None;
  ref.read(selectedTileControllerProvider.notifier).state = null;
  ref.read(buildMenuItemFocusProvider.notifier).state = null;
}

void closeBuyMenu(WidgetRef ref) {
  ref.read(panelVisibilityState.notifier).state = PanelVisibility.None;
  ref.read(buildMenuItemFocusProvider.notifier).state = null;
}

class DoodadBuildItemWidget extends HookConsumerWidget {
  final BuildMenuItem _item;

  const DoodadBuildItemWidget(
    this._item, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3),
        // color: Colors.purple,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: InkResponse(
          onTap: () {
            final focusedItemProvider =
                ref.read(buildMenuItemFocusProvider.notifier);
            if (focusedItemProvider.state == _item) {
              buyDoodad(ref);
            } else {
              focusedItemProvider.state = _item;
            }
          },
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  _item.doodad.storeImageAsset,
                  fit: BoxFit.fill,
                ),
              ),
              Text(_item.doodad.name),
            ],
          ),
        ),
      ),
    );
  }
}

class TileDetailWidget extends ConsumerWidget {
  const TileDetailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTile = ref.watch(selectedTileControllerProvider);
    if (selectedTile == null) return Container();

    final canBuild = supportedItemsToBuy(selectedTile).isNotEmpty;
    return Container(
        color: Colors.red[100],
        height: 150,
        child: Center(child: LayoutBuilder(builder: (context, constraints) {
          final width = min(constraints.maxWidth, 500.0);
          return Container(
            color: Colors.red[400],
            width: width,
            child: Column(
              children: [
                ModalTitleWidget(
                  title:
                      '${selectedTile.tileType.name} ${selectedTile.hexagon}',
                  leftCharms: [
                    if (selectedTile.hasDoodad)
                      AutoSizeText(
                        maxLines: 1,
                        '${selectedTile.doodadInstance.runtimeType}',
                        style: const TextStyle(fontSize: 16),
                      ),
                  ],
                  rightCharms: [
                    if (selectedTile.hasDoodad)
                      TextButton(
                          onPressed: () {
                            selectedTile.removeDoodad();
                            ref.read(panelVisibilityState.notifier).state =
                                PanelVisibility.None;
                          },
                          child: const Text('Remove')),
                    TextButton(
                        onPressed: () {
                          ref.read(panelVisibilityState.notifier).state =
                              PanelVisibility.None;
                          ref
                              .read(selectedTileControllerProvider.notifier)
                              .state = null;
                        },
                        child: const Text('Close')),
                  ],
                ),
                Expanded(
                  flex: 1,
                  // fit: FlexFit.loose,
                  child: Column(
                    // fit: StackFit.expand,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Expanded(
                      //     child: Container(
                      //
                      //
                      //   color: Colors.purple,
                      // )),
                      if (selectedTile.doodadInstance != null)
                        Expanded(
                          child: SizedBox(
                            width: width * 0.8,
                            child: selectedTile.doodadInstance?.statusWidget ??
                                DoodadStatus(selectedTile.doodadInstance!),
                          ),
                        ),
                      if (!selectedTile.hasDoodad)
                        Align(
                          alignment: Alignment.topRight,
                          child: Column(
                            children: [
                              TextButton(
                                  onPressed: canBuild
                                      ? () {
                                          ref
                                              .read(
                                                  panelVisibilityState.notifier)
                                              .state = PanelVisibility.BuyMenu;
                                        }
                                      : null,
                                  child: const Text('Build')),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          );
        })));
  }
}

class DoodadStatus extends ConsumerWidget {
  final DoodadInstance _doodadInstance;

  const DoodadStatus(
    this._doodadInstance, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Make local to use IS for typing.
    final doodad = _doodadInstance;
    if (doodad is TickableDoodadInstance) {
      final currentTick = doodad.currentTickState.watch(ref);
      final ticksLeft = doodad.ticksRequired - currentTick;
      return Column(
        children: [
          Text(
            doodad.ticksName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text('${(ticksLeft ~/ 60).toString().padLeft(2, '0')}'
              ':'
              '${(ticksLeft % 60).toString().padLeft(2, '0')}'),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearProgressIndicator(
                value: currentTick.toDouble() / doodad.ticksRequired,
              ),
            ),
          ),
        ],
        // ),
      );
    }
    return Container();
  }
}
