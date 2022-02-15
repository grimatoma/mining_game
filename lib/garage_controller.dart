import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/game_management/game_configs.dart';
import 'package:mining_game/item_management/inventory.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/mining/miner.dart';
import 'package:mining_game/mining/miners.dart';

import 'mining/miners_controller.dart';

part 'garage_controller.freezed.dart';
part 'garage_controller.g.dart';

final garageProvider = StateNotifierProvider<GarageNotifier, GarageState>(
    (ref) => GarageNotifier(ref.watch(inventoryStateProvider.notifier),
        ref.watch(gameConfigsProvider).maxGarageSlots));

@freezed
class GarageState with _$GarageState {
  const GarageState._();

  @HiveType(typeId: 42, adapterName: 'GarageStateAdapter')
  const factory GarageState(
          @HiveField(1)
              SyncedMap<int, SlotState, int, SlotState> slotsSyncedMap) =
      _GarageState;

  BuiltMap<int, SlotState> get slots => slotsSyncedMap.map;
  SlotState getSlot(int index) => slots[index] ?? LockedSlot(index: index);

  // Miners rebuildSingle(
  //     {InstanceId? addOrUpdateKey,
  //       MinerInstance? addOrUpdateValue,
  //       InstanceId? removeKey}) =>
  //     Miners(_syncedMap.rebuildSingle(
  //         addOrUpdateKey: addOrUpdateKey,
  //         addOrUpdateValue: addOrUpdateValue,
  //         removeKey: removeKey));

  GarageState rebuild({
    Map<int, SlotState>? addOrUpdate,
    Iterable<int>? remove,
  }) =>
      GarageState(
          slotsSyncedMap.rebuild(addOrUpdate: addOrUpdate, remove: remove));
}

@freezed
class SlotState with _$SlotState {
  @HiveType(typeId: 43, adapterName: 'SlotStateMinerAdapter')
  const factory SlotState.withMiner(
      {@HiveField(1) required MinerInstance miner,
      @HiveField(2) required int index}) = SlotWithMiner;
  @HiveType(typeId: 44, adapterName: 'SlotStateLockedAdapter')
  const factory SlotState.locked({@HiveField(2) required int index}) =
      LockedSlot;
  @HiveType(typeId: 45, adapterName: 'SlotStateEmptyAdapter')
  const factory SlotState.empty({@HiveField(2) required int index}) = EmptySlot;
}

// MAke wrapper adaptor?

class GarageNotifier extends StateNotifier<GarageState> {
  final InventoryStateController _inventoryStateController;
  GarageNotifier(this._inventoryStateController, intMaxSlots)
      : super(GarageState(SyncedMap.loadSimpleSyncedMap(BoxKey.GARAGE)));

  ItemContainer unlockCost(int index) =>
      ItemContainer.single(ItemKey.CREDIT, pow(2, index + 1).round());

  bool _canUnlock(ItemContainer unlockCost) =>
      _inventoryStateController.canRemove(unlockCost);

  void unlockSlot(LockedSlot slot) async {
    final index = slot.index;
    final cost = unlockCost(index);
    if (_canUnlock(cost)) {
      await _inventoryStateController.remove(cost);
      state = state.rebuild(addOrUpdate: {
        index: EmptySlot(index: index),
      });
      // slots: state.slots.rebuild((p0) => p0.add(EmptySlot())));
    } else {
      print('Attempting to unlock without money');
    }
  }

  void addMinerToSlot(EmptySlot slot, MinerInstance minerInstance) {
    state = state.rebuild(addOrUpdate: {
      slot.index: SlotWithMiner(miner: minerInstance, index: slot.index)
    });
  }
}
