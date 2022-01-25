import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiver/collection.dart';

final gameClockProvider = Provider<GameClock>((ref) => GameClock());

class GameClock {
  final _scheduledActions = SetMultimap<int, void Function()>();
  static const _microseconds = 1000000;

  Timer? _timer;
  int _gameTick = 0;

  GameClock() {
    _regenerateTimer();
  }

  double _timeScale = 1;
  double get timeScale => _timeScale;
  set timeScale(double newScale) {
    _timeScale = newScale;
    _regenerateTimer();
  }

  int get timeScaleMicroseconds => (_microseconds * _timeScale).toInt();

  void scaleTime(double scaleFactor) {
    _timeScale *= scaleFactor;
  }

  void scheduleAction(int delayInGameTick, void Function() action) {
    _scheduledActions.add(_gameTick + delayInGameTick, action);
  }

  void schedulePeriodicAction(
      int repeatAfterGameTicks, void Function() action) {
    void Function() self = () {};
    void periodicAction() {
      action.call();
      scheduleAction(repeatAfterGameTicks, self);
    }

    self = periodicAction;
    scheduleAction(repeatAfterGameTicks, self);
  }

  void _tick(Timer timer) {
    for (final action in _scheduledActions[_gameTick]) {
      action.call();
    }
    _scheduledActions.removeAll(_gameTick);
    _gameTick++;
  }

  void _regenerateTimer() {
    _timer?.cancel();
    _timer =
        Timer.periodic(Duration(microseconds: timeScaleMicroseconds), _tick);
  }
}
