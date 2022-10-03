import 'package:freezed_annotation/freezed_annotation.dart';

part 'townsfolk_definition.freezed.dart';

part 'townsfolk_definition.g.dart';

@freezed
class DefinitionId with _$DefinitionId {
  const DefinitionId._();

  // @With<ItemDefinitionIdActions>()
  const factory DefinitionId.item(String id) = ItemDefinitionId;

  const factory DefinitionId.townsfolk(String id) = TownsfolkDefinitionId;

  const factory DefinitionId.quest(String id) = QuestDefinitionId;

  const factory DefinitionId.shop(String id) = ShopDefinitionId;

  @override
  String toString() => id;

  factory DefinitionId.fromJson(Map<String, dynamic> json) =>
      _$DefinitionIdFromJson(json);
}

@freezed
class Townsfolk with _$Townsfolk {
  const factory Townsfolk({
    required TownsfolkDefinitionId id,
    required String name,
    required String image,
  }) = _Townsfolk;
}
