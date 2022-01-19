import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

mixin VoidChangeStreamAndStreamProvider {
  final StreamController<void> _updateController = StreamController.broadcast();
  Stream<void> get stream$ => _updateController.stream;

  StreamProvider<void>? _streamProvider;
  StreamProvider<void> get streamProvider => _streamProvider ??= StreamProvider((ref) {
    return stream$;
  });

  @protected
  @nonVirtual
  void notifyUpdate() => _updateController.add(null);
}