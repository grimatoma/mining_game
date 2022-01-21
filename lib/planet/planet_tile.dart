import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/wallet.dart';

import 'planet.dart';
import 'point.dart';

part 'planet_tile.freezed.dart';

@freezed
class PlanetTile with _$PlanetTile {
  const PlanetTile._();

  factory PlanetTile(
      {required PlanetPoint point,
      required PlanetController controller,
      required Resources resources,
      required bool visible}) = _PlanetTile;

  bool get isValid => point.isNotNegative;

  Color get color => controller.tileColor(this);
}
