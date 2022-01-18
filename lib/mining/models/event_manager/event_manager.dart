import 'dart:async';

abstract class Event {}

// class EventEmitter<EventTypeT extends Event> {
//   final EventStreamManager _eventStreamManager;
//
//   EventEmitter(this._eventStreamManager);
//
//   void add(EventTypeT event) => _eventStreamManager._addEvent(event);
// }

class EventStreamManager<EventTypeT extends Event> {
  final StreamController<EventTypeT> _streamController =
  StreamController.broadcast();
  // TODO: Change this to be both a sync and non sync stream to allow certain events to fully resolve. and return a future in the event.

  EventStreamManager() {
    print('created');
  }

  // EventEmitter<SubEventTypeT>
  // createEmitter<SubEventTypeT extends EventTypeT>() {
  //   return EventEmitter<SubEventTypeT>(this);
  // }

  void addForEventType<SubEventTypeT extends EventTypeT>(SubEventTypeT event) {
    _streamController.add(event);
  }

  Stream<EventTypeT> get stream => _streamController.stream;
  Stream<SubEventTypeT> streamForEventType<SubEventTypeT>() => _streamController.stream
      .where((event) => event is SubEventTypeT)
      .cast<SubEventTypeT>();

  // void _addEvent(EventTypeT event) {
  //   _streamController.add(event);
  // }
}
