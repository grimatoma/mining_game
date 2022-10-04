import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/quests/townsfolk_definition.dart';

class Townsfolk {
  static const anna = TownsfolkDefinitionId('anna');
  static const hero = TownsfolkDefinitionId('hero');
  static const kat = TownsfolkDefinitionId('kat');
  static const okka = TownsfolkDefinitionId('okka');
}

extension GetDef on TownsfolkDefinitionId {
  TownsfolkDefinition get definition => ItemDirectory.townsfolk[this]!;
}
