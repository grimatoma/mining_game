import 'dart:async';

abstract class Event {
  const Event();
}

class EventStreamManager<EventTypeT extends Event> {
  final StreamController<EventTypeT> _streamController =
      StreamController.broadcast();

  void addEvent(EventTypeT event) => _streamController.add(event);

  Stream<SubEventTypeT> streamForEventType<SubEventTypeT>() =>
      _streamController.stream
          .where((event) => event is SubEventTypeT)
          .cast<SubEventTypeT>();
}

// class EventStreamManager<EventTypeT extends Event> {
//   final StreamController<EventTypeT> _streamController =
//       StreamController.broadcast();
//   final StreamController<EventTypeT> _syncStreamController =
//       StreamController.broadcast(sync: true);
//
//   EventStreamManager() {
//     _syncStreamController.stream.listen((event) {
//       _streamController.add(event);
//     });
//   }
//   void addEvent(EventTypeT event) => _syncStreamController.add(event);
//   Stream<EventTypeT> stream({sync = true}) =>
//       (sync ? _syncStreamController : _streamController).stream;
//   Stream<SubEventTypeT> streamForEventType<SubEventTypeT>() =>
//       _syncStreamController.stream
//           .where((event) => event is SubEventTypeT)
//           .cast<SubEventTypeT>();
// }
