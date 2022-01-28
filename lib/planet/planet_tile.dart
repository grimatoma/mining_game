import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/inventory/item_container.dart';

import 'point.dart';

part 'planet_tile.freezed.dart';
part 'planet_tile.g.dart';

@freezed
class PlanetTile with _$PlanetTile {
  const PlanetTile._();

  @HiveType(typeId: 17, adapterName: 'PlanetTileAdapter')
  factory PlanetTile(
      {@HiveField(0) required PlanetPoint point,
      @HiveField(1) required ItemContainer resources,
      @HiveField(2) required bool visible}) = _PlanetTile;

  // factory PlanetTile.fromJson(Map<String, dynamic> json) =>
  //     _$PlanetTileFromJson(json);

  bool get isValid => point.isNotNegative;
}
