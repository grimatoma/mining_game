import 'package:freezed_annotation/freezed_annotation.dart';

part 'doodad_id.freezed.dart';

part 'doodad_id.g.dart';

@freezed
class DoodadId with _$DoodadId {
  const DoodadId._();

  const factory DoodadId(String id) = _DoodadId;

  static const DoodadId ironDigger = DoodadId('IRON_DIGGER');
  static const DoodadId tree = DoodadId('TREE');
  static const DoodadId treeCutterHut = DoodadId('TREE_CUTTER_HUT');
  static const DoodadId ironSmelter = DoodadId('TREE_CUTTER_HUT');

  factory DoodadId.fromJson(Map<String, dynamic> json) =>
      _$DoodadIdFromJson(json);
}
