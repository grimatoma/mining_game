
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/mining/models/event_manager/event_manager.dart';



final gameEventManagerProvider = Provider<GameEventManager>((ref) {
    return GameEventManager();
});

/// Base [Event] class for all game based events within the app.
abstract class GameEvent<EventTypeT extends Enum> extends Event {
    EventTypeT get type;
}

/// The main [EventStreamManager] for the game to manage global events.
class GameEventManager extends EventStreamManager<GameEvent> {

}


