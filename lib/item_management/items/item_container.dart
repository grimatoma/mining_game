// import 'dart:math';
//
// import 'package:built_collection/built_collection.dart';
// import 'package:hive/hive.dart';
// import 'package:mining_game/item_management/item_definition.dart';
//
// part 'item_container.g.dart';
//
// @HiveType(typeId: 35)
// class ItemContainerOld {
//   @HiveField(0)
//   final BuiltMap<ItemDefinitionId, int> items;
//
//   ItemContainerOld(this.items);
//
//   factory ItemContainerOld.single(ItemDefinitionId key, int quantity) =>
//       ItemContainerOld({key: quantity}.build());
//
//   ItemContainerOld.empty() : items = BuiltMap();
//
//   ItemContainerOld rebuild(
//       Function(MapBuilder<ItemDefinitionId, int>) itemInstancesUpdates) {
//     return ItemContainerOld(items.rebuild(itemInstancesUpdates));
//   }
//
//   bool get hasNegative => items.values.any((element) => element < 0);
//
//   int get(ItemDefinitionId itemKey) => items[itemKey] ?? 0;
//
//   bool get empty => items.values.every((element) => element <= 0);
//
//   ItemContainerOld operator -(ItemContainerOld other) =>
//       ItemContainerOld(items.rebuild((builder) {
//         for (final entry in other.items.entries) {
//           builder[entry.key] = get(entry.key) - entry.value;
//         }
//         return builder;
//       }));
//
//   ItemContainerOld operator +(ItemContainerOld other) =>
//       ItemContainerOld(items.rebuild((builder) {
//         for (final entry in other.items.entries) {
//           builder[entry.key] = get(entry.key) + entry.value;
//         }
//         return builder;
//       }));
//
//   ItemContainerOld maxCanBeRemoved(ItemRequirement attemptedRemoveAmount) =>
//       ItemContainerOld(BuiltMap.build((builder) {
//         for (final entries in attemptedRemoveAmount.requiredItems.entries) {
//           builder[entries.key] = min(get(entries.key), entries.value);
//         }
//       }));
//
//   bool canSubtract(ItemContainerOld other) {
//     return !(this - other).hasNegative;
//   }
//
//   @override
//   String toString() {
//     var s = <String>[];
//     for (var entry in items.entries) {
//       s.add('${entry.key}: ${entry.value}');
//     }
//     return s.join('\n');
//   }
//
//   factory ItemContainerOld.fromJson(Map<String, dynamic> json) =>
//       ItemContainerOld({
//         for (final item in json.entries)
//           ItemDefinitionId(item.key): item.value as int,
//       }.build());
//
//   Map<String, dynamic> toJson() => {
//         for (final item in items.entries) item.key.toString(): item.value,
//       };
// }
