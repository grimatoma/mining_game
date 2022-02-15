import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/planet/point.dart';

import 'miner.dart';

abstract class ActiveMinerEvent extends GameEvent<ActiveMinerEventTypes> {
  @override
  ActiveMinerEventTypes get type;
}

enum ActiveMinerEventTypes {
  ACTIVATE_MINER,
  DEACTIVATE_MINER,
}

class ActivateMinerEvent extends ActiveMinerEvent {
  @override
  final type = ActiveMinerEventTypes.ACTIVATE_MINER;

  final PlanetPoint point;
  final MinerInstance miner;

  ActivateMinerEvent({required this.miner, required this.point});
}

class DeactivateMinerEvent extends ActiveMinerEvent {
  @override
  final type = ActiveMinerEventTypes.DEACTIVATE_MINER;

  final MinerInstance miner;

  DeactivateMinerEvent({required this.miner});
}

abstract class MinerEvent extends GameEvent<MinerEventTypes> {
  @override
  MinerEventTypes get type;
}

enum MinerEventTypes {
  // TODO change to DRILL CHANGE that does both
  DRILL_ATTACH,
  NEW_MINER,
  DRILL_REMOVE,
  COLLECT_HOPPER,
}

class CreateMinerEvent extends MinerEvent {
  @override
  final type = MinerEventTypes.NEW_MINER;

  final MinerDefinition definition;

  CreateMinerEvent(this.definition);
}

class CollectHopperMinerEvent extends MinerEvent {
  @override
  final type = MinerEventTypes.COLLECT_HOPPER;

  final MinerInstance miner;

  CollectHopperMinerEvent({required this.miner});
}

class DrillAttachEvent extends MinerEvent {
  @override
  final type = MinerEventTypes.DRILL_ATTACH;

  final ItemKey drillId;
  final MinerInstance miner;

  DrillAttachEvent({required this.miner, required this.drillId});
}

class DrillRemoveEvent extends MinerEvent {
  @override
  final type = MinerEventTypes.DRILL_REMOVE;

  final MinerInstance miner;

  DrillRemoveEvent({required this.miner});
}
