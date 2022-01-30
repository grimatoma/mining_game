import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/planet/point.dart';

import 'miner.dart';

abstract class AutoMiningManagerEvent extends GameEvent<MinerEventTypes> {
  @override
  MinerEventTypes get type;
}

enum MinerEventTypes {
  INSTALL_AUTO_MINER,
  DRILL_ATTACH,
  STORE_MINER,
  CREATE_MINER,
  DRILL_REMOVE,
  COLLECT_HOPPER,
}

class CreateMinerEvent extends AutoMiningManagerEvent {
  @override
  final type = MinerEventTypes.CREATE_MINER;

  final MinerDefinition definition;

  CreateMinerEvent(this.definition);
}

class InstallAutoMinerEvent extends AutoMiningManagerEvent {
  @override
  final type = MinerEventTypes.INSTALL_AUTO_MINER;

  final PlanetPoint point;
  final StoredMinerInstance miner;

  InstallAutoMinerEvent({required this.miner, required this.point});
}

class StoreMinerEvent extends AutoMiningManagerEvent {
  @override
  final type = MinerEventTypes.STORE_MINER;

  final ActiveMinerInstance miner;

  StoreMinerEvent({required this.miner});
}

class CollectHopperMinerEvent extends AutoMiningManagerEvent {
  @override
  final type = MinerEventTypes.COLLECT_HOPPER;

  final ActiveMinerInstance miner;

  CollectHopperMinerEvent({required this.miner});
}

class DrillAttachEvent extends AutoMiningManagerEvent {
  @override
  final type = MinerEventTypes.DRILL_ATTACH;

  final ItemKey drillId;
  final MinerInstance miner;

  DrillAttachEvent({required this.miner, required this.drillId});
}

class DrillRemoveEvent extends AutoMiningManagerEvent {
  @override
  final type = MinerEventTypes.DRILL_REMOVE;

  final MinerInstance miner;

  DrillRemoveEvent({required this.miner});
}
