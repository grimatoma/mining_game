import 'package:mining_game/mixins/void_stream_provider_mixin.dart';
import 'package:mining_game/planet/planet_tile.dart';

/// An auto miner who can mine at a certain location;
class AutoMiner with VoidChangeStreamAndStreamProvider {
  final PlanetTile planetTile;
  int _damage = 0;
  int get damage => _damage;
  set damage(int newVal) {
    _damage = newVal;
    notifyUpdate();
  }

  AutoMiner({required this.planetTile, required int damage}) : _damage = damage;
}