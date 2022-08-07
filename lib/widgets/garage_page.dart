// import 'package:built_collection/built_collection.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:mining_game/event_manager/game_event_manager.dart';
// import 'package:mining_game/game_management/game_configs.dart';
// import 'package:mining_game/garage_controller.dart';
// import 'package:mining_game/garage_events.dart';
// import 'package:mining_game/item_management/inventory/inventory.dart';
// import 'package:mining_game/item_management/item_definition.dart';
// import 'package:mining_game/mining/miners_controller.dart';
// import 'package:mining_game/widgets/store_page.dart';
//
// import 'status_bar_wrapped_page.dart';
//
// final _unHousedMinersProvider = Provider<BuiltList<MinerInstance>>((ref) {
//   final slottedMinerIds = ref
//       .watch(garageProvider)
//       .slots
//       .values
//       .whereType<SlotWithMiner>()
//       .map((e) => e.minerId)
//       .toSet();
//   return ref
//       .watch(minersProvider)
//       .miners
//       .values
//       .where((instance) => !slottedMinerIds.contains(instance.id))
//       .toBuiltList();
// });
//
// class GaragePageWidget extends HookConsumerWidget {
//   const GaragePageWidget({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final scrollController = useScrollController();
//     return StatusBarWrappedPageWidget(
//         title: 'Garage',
//         builder: (context, ref) {
//           return LayoutBuilder(
//             builder: (context, constraints) => GridView.count(
//               controller: scrollController,
//               crossAxisCount: constraints.maxWidth.toInt() ~/ 180,
//               mainAxisSpacing: 1,
//               crossAxisSpacing: 1,
//               children: [
//                 for (var i = 0;
//                     i < ref.watch(gameConfigsProvider).maxGarageSlots;
//                     i++)
//                   ref.watch(garageProvider).getSlot(i).map(
//                       withMiner: (slot) => PopulatedGarageSlotWidget(slot),
//                       locked: (slot) => LockedGarageSlotWidget(slot),
//                       empty: (slot) => EmptyGarageSlotWidget(slot)),
//               ],
//             ),
//           );
//         });
//   }
// }
//
// class EmptyGarageSlotWidget extends ConsumerWidget {
//   final EmptySlot slot;
//   const EmptyGarageSlotWidget(
//     this.slot, {
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Container(
//       color: Colors.blue,
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: FittedBox(
//             fit: BoxFit.contain,
//             child: Column(
//               children: [
//                 const Text(
//                   'Empty',
//                 ),
//                 Row(
//                   children: [
//                     const Text('Add Miner'),
//                     DropdownButton<MinerInstance>(
//                       items: [
//                         for (final miner in ref.watch(_unHousedMinersProvider))
//                           DropdownMenuItem<MinerInstance>(
//                               value: miner, child: Text(miner.definition.name)),
//                       ],
//                       onChanged: (miner) {
//                         ref.read(gameEventManagerProvider).addEvent(
//                             AddMinerToSlotGarageEvent(
//                                 slot: slot, minerInstance: miner!.id));
//                       },
//                     )
//                   ],
//                 ),
//               ],
//             )),
//       ),
//     );
//   }
// }
//
// class LockedGarageSlotWidget extends ConsumerWidget {
//   final LockedSlot slot;
//   const LockedGarageSlotWidget(
//     this.slot, {
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final cost = ref.watch(garageProvider.notifier).unlockCost(slot.index);
//     return Container(
//       color: Colors.red,
//       child: Column(children: [
//         const Expanded(
//           flex: 4,
//           child: Padding(
//             padding: EdgeInsets.all(16.0),
//             child: FittedBox(
//                 fit: BoxFit.contain,
//                 child: Text(
//                   'Unlock Miner Slot',
//                 )),
//           ),
//         ),
//         Expanded(
//           flex: 3,
//           child: Center(
//             child: ShopButton(
//               cost: cost,
//               active: ref
//                   .watch(inventoryStateProvider.notifier)
//                   .meetsRequirements(cost),
//               onClick: () {
//                 ref
//                     .read(gameEventManagerProvider)
//                     .addEvent(UnlockSlotGarageEvent(slot: slot));
//               },
//             ),
//           ),
//         )
//       ]),
//     );
//   }
// }
//
// class PopulatedGarageSlotWidget extends ConsumerWidget {
//   final SlotWithMiner _slotWithMiner;
//   const PopulatedGarageSlotWidget(
//     this._slotWithMiner, {
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final minerInstance =
//         ref.watch(minersProvider).getMiner(_slotWithMiner.minerId)!;
//     return LayoutBuilder(
//       builder: (context, constraints) => InkWell(
//         onTap: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => MinerDetailWidget(minerInstance)));
//         },
//         child: Column(
//           children: [
//             Container(
//               width: constraints.maxWidth * .7,
//               padding: const EdgeInsets.all(16.0),
//               child: Image.asset(minerInstance.definition.image),
//             ),
//             SizedBox(child: Text(minerInstance.definition.name)),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class MinerDetailWidget extends ConsumerWidget {
//   final MinerInstance _minerInstance;
//   const MinerDetailWidget(
//     this._minerInstance, {
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return StatusBarWrappedPageWidget(
//       title: _minerInstance.definition.name,
//       builder: (_, __) => Text(_minerInstance.definition.description),
//     );
//   }
// }
