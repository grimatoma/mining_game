import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/item_directory.dart';

import 'doodad_definition.dart';

part 'doodad_id.freezed.dart';

part 'doodad_id.g.dart';

@freezed
class DoodadId with _$DoodadId {
  const DoodadId._();

  const factory DoodadId(String id) = _DoodadId;

  static const DoodadId ironDigger = DoodadId('IRON_DIGGER');
  static const DoodadId tree = DoodadId('TREE');
  static const DoodadId treeCutterHut = DoodadId('TREE_CUTTER_HUT');
  static const DoodadId ironSmelter = DoodadId('IRON_SMELTER');
  static const DoodadId rawFish = DoodadId('RAW_FISH');
  static const DoodadId houseLevel1 = DoodadId('HOUSE_LEVEL_1');
  static const DoodadId fisherman = DoodadId('FISHERMAN');

  DoodadDefinition get definition => ItemDirectory.doodadDefinitions[this]!;

  factory DoodadId.fromJson(Map<String, dynamic> json) =>
      _$DoodadIdFromJson(json);
}
