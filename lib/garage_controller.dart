import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/game_management/game_configs.dart';
import 'package:mining_game/garage_events.dart';
import 'package:mining_game/item_management/instance_id.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';

import 'item_management/inventory/inventory.dart';
import 'persistence/hive_manager.dart';

part 'garage_controller.freezed.dart';

freezed.dart';

part 'garage_controller.g.dart';

final garageProvider = StateNotifierProvider<GarageNotifier, GarageState>(
        (ref) =>
        GarageNotifier(
            ref.watch(gameEventManagerProvider),
            ref.watch(inventoryStateProvider.notifier),
            ref
                .watch(gameConfigsProvider)
                .maxGarageSlots));

@freezed
class GarageState with _$GarageState {
  const GarageState._();

  const factory GarageState(BuiltMap<int, SlotState> slots) = _GarageState;

  SlotState getSlot(int index) => slots[index] ?? LockedSlot(index: index);

  GarageState rebuild(Function(MapBuilder<int, SlotState>) rebuild) =>
      copyWith(slots: slots.rebuild(rebuild));

  factory GarageState.fromJson(Map<String, Object?> json) =>
      _$GarageStateFromJson(json);
}

@freezed
class SlotState with _$SlotState {
  const factory SlotState.withMiner(
      {required ItemInstanceId minerId, required int index}) = SlotWithMiner;

  const factory SlotState.locked({required int index}) = LockedSlot;

  const factory SlotState.empty({required int index}) = EmptySlot;

  factory SlotState.fromJson(Map<String, Object?> json) =>
      _$SlotStateFromJson(json);
}

class GarageNotifier extends StateNotifier<GarageState> {
  final InventoryStateController _inventoryStateController;
  final GameEventManager _gameEventManager;

  GarageNotifier(this._gameEventManager, this._inventoryStateController,
      intMaxSlots)
      : super(HiveManager.getData(BoxKey.GARAGE, GarageState.fromJson,
          () => GarageState(<int, SlotState>{}.build()))) {
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
      state = state.rebuild((p0) {
        p0[index] = EmptySlot(index: index);
      });
    } else {
      print('Attempting to unlock without money');
    }
  }

  void _addMinerToSlot(EmptySlot slot, ItemInstanceId minerInstance) {
    state = state.rebuild((p0) {
      p0[slot.index] = SlotWithMiner(minerId: minerInstance, index: slot.index);
    });
  }
}
