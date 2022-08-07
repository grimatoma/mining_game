import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/game_management/game_configs.dart';
import 'package:mining_game/garage_events.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/persistence/synced.dart';

import 'item_management/inventory/inventory.dart';
import 'persistence/hive_manager.dart';

part 'garage_controller.freezed.dart';

part 'garage_controller.g.dart';

final garageProvider = StateNotifierProvider<GarageNotifier, GarageState>(
    (ref) => GarageNotifier(
        ref.watch(gameEventManagerProvider),
        ref.watch(inventoryStateProvider.notifier),
        ref.watch(gameConfigsProvider).maxGarageSlots));

@freezed
class GarageState with _$GarageState {
  const GarageState._();

  // @HiveType(typeId: 42, adapterName: 'GarageStateAdapter')
  const factory GarageState(
      // @HiveField(1)
      SyncedMap<int, SlotState, int, SlotState> slotsSyncedMap) = _GarageState;

  BuiltMap<int, SlotState> get slots => slotsSyncedMap.map;

  SlotState getSlot(int index) => slots[index] ?? LockedSlot(index: index);

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
      {@HiveField(1) required ItemInstanceId minerId,
      @HiveField(2) required int index}) = SlotWithMiner;

  @HiveType(typeId: 44, adapterName: 'SlotStateLockedAdapter')
  const factory SlotState.locked({@HiveField(2) required int index}) =
      LockedSlot;

  @HiveType(typeId: 45, adapterName: 'SlotStateEmptyAdapter')
  const factory SlotState.empty({@HiveField(2) required int index}) = EmptySlot;
}

class GarageNotifier extends StateNotifier<GarageState> {
  final InventoryStateController _inventoryStateController;
  final GameEventManager _gameEventManager;

  GarageNotifier(
      this._gameEventManager, this._inventoryStateController, intMaxSlots)
      : super(GarageState(SyncedMap.loadSimpleSyncedMap(BoxKey.GARAGE))) {
    _gameEventManager.streamForEventType<GarageEvent>().listen((event) {
      switch (event.type) {
        case GarageEventType.UNLOCK_SLOT:
          event as UnlockSlotGarageEvent;
          _unlockSlot(event.slot);
          break;
        case GarageEventType.ADD_MINER_TO_SLOT:
          event as AddMinerToSlotGarageEvent;
          _addMinerToSlot(event.slot, event.minerInstance);
          break;
      }
    });
  }

  ItemRequirement unlockCost(int index) =>
      ItemRequirement({Items.CREDIT: pow(2, index + 1).round()});

  void _unlockSlot(LockedSlot slot) async {
    bool canUnlock(ItemRequirement unlockCost) =>
        _inventoryStateController.meetsRequirements(unlockCost);

    final index = slot.index;
    final cost = unlockCost(index);
    if (canUnlock(cost)) {
      _inventoryStateController.subtractItemRequirement(cost);
      state = state.rebuild(addOrUpdate: {
        index: EmptySlot(index: index),
      });
    } else {
      print('Attempting to unlock without money');
    }
  }

  void _addMinerToSlot(EmptySlot slot, ItemInstanceId minerInstance) {
    state = state.rebuild(addOrUpdate: {
      slot.index: SlotWithMiner(minerId: minerInstance, index: slot.index)
    });
  }
}
