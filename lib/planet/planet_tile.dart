import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:mining_game/item_management/wallet.dart';
import 'package:mining_game/mining/auto_miner.dart';
import 'package:mining_game/mixins/void_stream_provider_mixin.dart';

import 'planet.dart';
import 'point.dart';

class PlanetTile with VoidChangeStreamAndStreamProvider {
  AutoMiner? _autoMiner;
  bool get hasAutoMiner => _autoMiner != null;
  final Planet _planet;
  final PlanetPoint point;
  int iron;
  bool _visible = false;
  set visible(bool newVal) {
    _visible = newVal;
    notifyUpdate();
  }

  bool get visible => _visible;
  final StreamController<void> _updateController =
      StreamController<void>.broadcast();
  Stream<void> get stream => _updateController.stream;

  PlanetTile(this.point, this._planet, [this.iron = 0]);

  Resources dig(int strength) {
    notifyUpdate();
    return Resources(iron: _planet.dig(point, strength));
  }

  void scanForResources(int radius) {
    notifyUpdate();
    _planet.scanForResources(point, radius);
  }

  void addAutoMiner(AutoMiner autoMiner) {
    notifyUpdate();
    _autoMiner = autoMiner;
  }

  Color get color => _planet.tileColor(this);
}
