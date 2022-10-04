import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../quests/townsfolk_definition.dart';

abstract class ObjectKeyedMapConverter<K, V>
    implements JsonConverter<Map<K, V>, Map<String, dynamic>> {
  const ObjectKeyedMapConverter();

  K genKey(String keyVal);

  @override
  Map<K, V> fromJson(Map<String, dynamic> json) => {
        for (final entry in json.entries) genKey(entry.key): entry.value as V,
      };

  @override
  Map<String, dynamic> toJson(Map<K, V> map) => {
        for (final entry in map.entries) jsonEncode(entry.key): entry.value,
      };
}

class ItemDefinitionIdKeyedMapConverter
    extends ObjectKeyedMapConverter<ItemDefinitionId, int> {
  const ItemDefinitionIdKeyedMapConverter();

  @override
  ItemDefinitionId genKey(String keyVal) =>
      ItemDefinitionId.fromJson(jsonDecode(keyVal));
}

class ItemDefinitionDoubleIdKeyedMapConverter
    extends ObjectKeyedMapConverter<ItemDefinitionId, double> {
  const ItemDefinitionDoubleIdKeyedMapConverter();

  @override
  ItemDefinitionId genKey(String keyVal) =>
      ItemDefinitionId.fromJson(jsonDecode(keyVal));
}

// class ItemDefinitionDoubleIdKeyedMapConverter
//     extends ObjectKeyedMapConverter<ItemDefinitionId, double> {
//   const ItemDefinitionDoubleIdKeyedMapConverter();
//
//   @override
//   ItemDefinitionId genKey(String keyVal) =>
//       ItemDefinitionId.fromJson(jsonDecode(keyVal));
// }
