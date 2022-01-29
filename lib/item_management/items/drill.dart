import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/inventory/item_definitions.dart';
import 'package:mining_game/inventory/item_directory.dart';

part 'drill.freezed.dart';

@freezed
class DrillDefinition extends BaseItemForDirectory with _$DrillDefinition {
  const factory DrillDefinition(
      {required ItemKey itemKey,
      required String name,
      required String description,
      required int damage}) = _DrillDefinition;
}
