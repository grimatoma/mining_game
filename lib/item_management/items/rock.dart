import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/items/metadata/item_attributes.dart';

import 'metadata/item_proto.dart';

part 'rock.freezed.dart';

@freezed
class RockProto extends ItemProto
    with _$RockProto
    implements StackableItemDefinition {
  const RockProto._();

  const factory RockProto(
      {required ItemId itemId,
      required String name,
      required String description,
      required int maxStackSize}) = _RockProto;
}

// @freezed
// class RockInstance with _$RockInstance {
//   const factory RockInstance({
//     required RockProto proto,
//   }) = _RockInstancee;
// }
