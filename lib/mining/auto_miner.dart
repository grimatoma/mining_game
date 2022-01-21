import 'package:mining_game/item_management/items.dart';
import 'package:mining_game/mixins/void_stream_provider_mixin.dart';
import 'package:mining_game/planet/planet_tile.dart';

/// An auto miner who can mine at a certain location;
class AutoMiner with VoidChangeStreamAndStreamProvider {
  final PlanetTile planetTile;
  final Miner miner;
  // int _damage = 0;
  int get damage => miner.damage;
  // set damage(int newVal) {
  //   _damage = newVal;
  //   notifyUpdate();
  // }

  AutoMiner.fromMinerItem(this.miner, this.planetTile);
}
