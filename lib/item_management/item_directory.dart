import 'package:built_collection/built_collection.dart';
import 'package:mining_game/doodads/base/doodad_definition.dart';
import 'package:mining_game/doodads/base/doodad_id.dart';
import 'package:mining_game/model_assets/doodad_models.dart';
import 'package:mining_game/model_assets/item_models.dart';
import 'package:mining_game/model_assets/quest_models.dart';
import 'package:mining_game/quests/quest_definition.dart';

import 'item_definition.dart';

class ItemDirectory {
  static final BuiltMap<ItemDefinitionId, ItemDefinition> items =
      {for (var i in itemModels) i.id: i}.build();

  // static BuiltMap<String, ItemDefinitionId>? _loadItemsFromDbMapping;
  static final BuiltMap<DoodadId, DoodadDefinition> doodadDefinitions =
      {for (var i in doodadDefinitionsExample) i.id: i}.build();
  static final BuiltMap<int, QuestDefinition> allQuests = {
    for (final quest in quests) quest.id: quest,
  }.build();

  static Future<void> init() async {
    // final miners = await parseJsonMap<ItemDefinitionId, ItemDefinition>(
    //     'assets/json/miners.json',
    //     ItemDefinition.fromJson,
    //     (miner) => miner.id);
    // final items = await parseJsonMap<ItemDefinitionId, ItemDefinition>(
    //     'assets/json/items.json', ItemDefinition.fromJson, (item) => item.id);
    // _allItems = _allItems.rebuild((p0) => p0
    //   ..addAll(miners.toMap())
    //   ..addAll(items.toMap()));
    // _loadItemsFromDbMapping = {
    //   for (final id in _allItems.keys) id.itemId: id,
    // }.build();
    // allQuests = parseJsonList<QuestDefinition>(
    //     'assets/json/quests.json', QuestDefinition.fromJson);
  }

  // static Future<BuiltList<T>> parseJsonList<T>(
  //     String path, T Function(Map<String, dynamic> json) fromJson) async {
  //   final json = await rootBundle.loadString(path);
  //   final jsonMapArray = jsonDecode(json) as Iterable;
  //   return jsonMapArray.map((e) {
  //     return fromJson(e);
  //   }).toBuiltList();
  // }
  //
  // static Future<BuiltMap<K, V>> parseJsonMap<K, V>(
  //     String path,
  //     V Function(Map<String, dynamic> json) fromJson,
  //     K Function(V) getKey) async {
  //   final json = await rootBundle.loadString(path);
  //   final jsonMapItems = jsonDecode(json) as Iterable;
  //   final m = <K, V>{};
  //   for (var element in jsonMapItems) {
  //     final item = fromJson(element);
  //     m[getKey(item)] = item;
  //   }
  //   return m.build();
  // }

  static ItemDefinition getItem(ItemDefinitionId id) => items[id]!;

// static ItemDefinitionId loadIdFromDb(String id) =>
//     _loadItemsFromDbMapping![id]!;
}
