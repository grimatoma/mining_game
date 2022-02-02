import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/planet/widgets/planet_map_renderer_widget.dart';
import 'package:mining_game/planet/widgets/src/planet_interface_widget.dart';

import 'status_bar.dart';

class PlanetPageWidget extends HookConsumerWidget {
  const PlanetPageWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planet'),
      ),
      body: SizedBox(
        child: Column(children: const [
          StatusBarWidget(),
          PlanetMapRenderer(),
          Flexible(child: PlanetInterfaceWidget()),
        ]),
      ),
    );
  }
}
