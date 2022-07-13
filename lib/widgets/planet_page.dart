import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/planet/planet_manager.dart';
import 'package:mining_game/planet/widgets/planet_map_renderer_widget2.dart';

import 'status_bar_wrapped_page.dart';

class PlanetPageWidget extends HookConsumerWidget {
  const PlanetPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StatusBarWrappedPageWidget(
      title: 'Planet',
      builder: (context, ref) => Stack(children: [
        const PlanetMapRendererWidget2(),
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
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
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
    return Center(
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
                        ref.read(panelVisibilityState.notifier).state =
                            PanelVisibility.None;
                      },
                      child: const Text('Close'))
                ],
              ),
              Expanded(
                child: GridView.count(
                  padding: const EdgeInsets.all(menuItemPadding),
                  mainAxisSpacing: menuItemPadding,
                  crossAxisSpacing: menuItemPadding,
                  crossAxisCount: (MediaQuery.of(context).size.width / 128)
                      .floor()
                      .clamp(3, 5),
                  children: [
                    for (int i = 0; i < 10; i++) ...[
                      DoodadBuildItemWidget(TreeBuildMenuItem.singleton),
                      DoodadBuildItemWidget(DiggerBuildMenuItem.singleton),
                    ],
                  ],
                ),
              ),
              const BuildMenuFocusDetail(),
            ],
          ),
        ),
      ),
    );
  }
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
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 2))),
            child: Text(
              item.name,
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
                        item.image,
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
                            Text(item.description),
                          ],
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            final selectedTile =
                                ref.read(selectedTileControllerProvider);
                            selectedTile
                                ?.addDoodad(item.createNew(selectedTile));
                            ref.read(panelVisibilityState.notifier).state =
                                PanelVisibility.None;
                            ref
                                .read(selectedTileControllerProvider.notifier)
                                .state = null;
                            ref
                                .read(buildMenuItemFocusProvider.notifier)
                                .state = null;
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
        color: Colors.purple,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: InkResponse(
          onTap: () {
            ref.read(buildMenuItemFocusProvider.notifier).state = _item;
          },
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  _item.image,
                  fit: BoxFit.fill,
                ),
              ),
              Text(_item.name),
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
    return Container(
        color: Colors.red,
        height: 150,
        child: LayoutBuilder(builder: (context, constaints) {
          final width = min(constaints.maxWidth, 500.0);
          return SizedBox(
            width: width,
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              children: [
                ModalTitleWidget(
                  title:
                      '${selectedTile.tile.title} ${selectedTile.tile.x},${selectedTile.tile.y}',
                  leftCharms: [
                    Text('${selectedTile.tile.x},${selectedTile.tile.y}'),
                  ],
                  rightCharms: [
                    if (selectedTile.tile.hasDoodad)
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
                      if (selectedTile.tile.doodad != null)
                        Expanded(
                          child: SizedBox(
                            width: width * 0.8,
                            child: DoodadStatus(selectedTile.tile.doodad!),
                          ),
                        ),
                      if (!selectedTile.tile.hasDoodad)
                        Align(
                          alignment: Alignment.topRight,
                          child: Column(
                            children: [
                              TextButton(
                                  onPressed: (ref.read(
                                              selectedTileControllerProvider) ==
                                          null)
                                      ? null
                                      : () {
                                          ref
                                              .read(
                                                  panelVisibilityState.notifier)
                                              .state = PanelVisibility.BuyMenu;
                                        },
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
        }));
  }
}

class DoodadStatus extends ConsumerWidget {
  final Doodad _doodad;

  const DoodadStatus(
    this._doodad, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final doodad = _doodad;
    if (doodad is TickableDoodad) {
      final tick = ref.watch(doodad.tickState);
      final ticksLeft = doodad.ticksRequired - tick;
      return
          // LayoutBuilder(
          // builder: (context, constraints) =>
          Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Text('${(ticksLeft ~/ 60).toString().padLeft(2, '0')}'
              ':'
              '${(ticksLeft % 60).toString().padLeft(2, '0')}'),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearProgressIndicator(
                value: tick.toDouble() / doodad.ticksRequired,
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
