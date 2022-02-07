import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/mining/miner.dart';
import 'package:mining_game/mining/miners_controller.dart';

import 'status_bar_wrapped_page.dart';

class GaragePageWidget extends ConsumerWidget {
  const GaragePageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const garageCount = 9;
    final miners = ref.watch(minersControllerProvider);
    final minerList = [
      ...miners.active.values,
      ...miners.stored.values,
    ];
    return StatusBarWrappedPageWidget(
        title: 'Garage',
        builder: (context, ref) => GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              children: [
                for (var i = 0; i < garageCount; i++)
                  if (i < minerList.length) ...[
                    GarageSlotWidget(minerList[i]),
                  ] else ...[
                    const GarageSlotWidget(null),
                  ]
              ],
            ));
  }
}

class GarageSlotWidget extends ConsumerWidget {
  final MinerInstance? _minerInstance;
  const GarageSlotWidget(
    this._minerInstance, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(_minerInstance != null
        ? _minerInstance.toString()
        : 'Buy slot\n(coming soon)');
  }
}
