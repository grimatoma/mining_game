import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/planet/point.dart';

abstract class ActiveMinerEvent extends GameEvent<ActiveMinerEventType> {
  @override
  ActiveMinerEventType get type;
}

enum ActiveMinerEventType {
  ACTIVATE_MINER,
  DEACTIVATE_MINER,
}

class ActivateMinerEvent extends ActiveMinerEvent {
  @override
  final type = ActiveMinerEventType.ACTIVATE_MINER;

  final PlanetPoint point;
  final MinerInstance miner;

  ActivateMinerEvent({required this.miner, required this.point});
}

class DeactivateMinerEvent extends ActiveMinerEvent {
  @override
  final type = ActiveMinerEventType.DEACTIVATE_MINER;

  final MinerInstance miner;

  DeactivateMinerEvent({required this.miner});
}

abstract class MinerEvent extends GameEvent<MinerEventType> {
  @override
  MinerEventType get type;
}

enum MinerEventType {
  // TODO change to DRILL CHANGE that does both
  DRILL_ATTACH,
  NEW_MINER,
  DRILL_REMOVE,
  COLLECT_HOPPER,
}

class CreateMinerEvent extends MinerEvent {
  @override
  final type = MinerEventType.NEW_MINER;

  final MinerId minerId;

  CreateMinerEvent(this.minerId);
}

class CollectHopperMinerEvent extends MinerEvent {
  @override
  final type = MinerEventType.COLLECT_HOPPER;

  final MinerInstance miner;

  CollectHopperMinerEvent({required this.miner});
}

class DrillAttachEvent extends MinerEvent {
  @override
  final type = MinerEventType.DRILL_ATTACH;

  final ItemId drillId;
  final MinerInstance miner;

  DrillAttachEvent({required this.miner, required this.drillId});
}

class DrillRemoveEvent extends MinerEvent {
  @override
  final type = MinerEventType.DRILL_REMOVE;

  final MinerInstance miner;

  DrillRemoveEvent({required this.miner});
}
