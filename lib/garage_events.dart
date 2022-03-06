import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/instance_id.dart';

import 'garage_controller.dart';

enum GarageEventType {
  UNLOCK_SLOT,
  ADD_MINER_TO_SLOT,
}

abstract class GarageEvent extends GameEvent<GarageEventType> {
  @override
  GarageEventType get type;

  const GarageEvent();
}

class UnlockSlotGarageEvent extends GarageEvent {
  @override
  final type = GarageEventType.UNLOCK_SLOT;
  final LockedSlot slot;

  const UnlockSlotGarageEvent({required this.slot});
}

class AddMinerToSlotGarageEvent extends GarageEvent {
  @override
  final type = GarageEventType.ADD_MINER_TO_SLOT;
  final EmptySlot slot;
  final InstanceId instanceId;

  const AddMinerToSlotGarageEvent(
      {required this.slot, required this.instanceId});
}
