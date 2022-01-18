import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/mining/mixins/void_stream_provider_mixin.dart';
import 'package:mining_game/mining/models/auto_miner.dart';
import 'package:mining_game/mining/models/event_manager/game_event_manager.dart';
import 'package:mining_game/mining/models/planet_tile.dart';
import 'package:quiver/collection.dart';

import 'event_manager/event_manager.dart';

final autoMiningManagerProvider = Provider<AutoMiningManager>((ref) {
  return AutoMiningManager(ref.watch(gameEventManagerProvider));
});

/// Manges all auto miners and notifies when the miners collection changes.
class AutoMiningManager with VoidChangeStreamAndStreamProvider {
  final EventStreamManager _eventStreamManager;
  final miners = BiMap<PlanetTile, AutoMiner>();

  AutoMiningManager(this._eventStreamManager) {
    _eventStreamManager
        .streamForEventType<AutoMiningManagerEvent>()
        .listen((event) {
      switch (event.type) {
        case AutoMiningManagerEvents.NewMiner:
          _newMiner(event);
          break;
        case AutoMiningManagerEvents.UpgradeMiner:
          _upgradeMiner(event);
          break;
      }
    });
  }

  void _newMiner(AutoMiningManagerEvent event) {
    event = event as NewMinerEvent;
    miners[event.planetTile] =
        AutoMiner(damage: 1, planetTile: event.planetTile);
    notifyUpdate();
  }

  void _upgradeMiner(AutoMiningManagerEvent event) {
    event = event as UpgradeMinerEvent;
    // Interesting question, How do I know that the tile is in a valid location?
    // If it doesn't exist then I already paid for the upgrade.
    miners[event.planetTile]?.damage += event.damageIncrease;
  }

  bool hasMiner(PlanetTile planetTile) => miners.containsKey(planetTile);
}

abstract class AutoMiningManagerEvent
    extends GameEvent<AutoMiningManagerEvents> {
  @override
  AutoMiningManagerEvents get type;
}

enum AutoMiningManagerEvents {
  NewMiner,
  UpgradeMiner,
}

class NewMinerEvent extends AutoMiningManagerEvent {
  final type = AutoMiningManagerEvents.NewMiner;

  final PlanetTile planetTile;

  NewMinerEvent({required this.planetTile});
}

class UpgradeMinerEvent extends AutoMiningManagerEvent {
  final type = AutoMiningManagerEvents.UpgradeMiner;

  final PlanetTile planetTile;
  final int damageIncrease;

  UpgradeMinerEvent({required this.planetTile, required this.damageIncrease});
}
