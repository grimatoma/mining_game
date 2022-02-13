import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/item_management/item_directory.dart';

part 'item_container.g.dart';

@HiveType(typeId: 35)
class ItemContainer {
  @HiveField(0)
  final BuiltMap<ItemKey, int> items;

  ItemContainer(this.items);
  factory ItemContainer.create(Map<ItemKey, int> items) =>
      ItemContainer(items.build());
  factory ItemContainer.single(ItemKey key, int quantity) =>
      ItemContainer({key: quantity}.build());
  ItemContainer.empty() : items = BuiltMap();

  ItemContainer rebuild(
      Function(MapBuilder<ItemKey, int>) itemInstancesUpdates) {
    return ItemContainer(items.rebuild(itemInstancesUpdates));
  }

  bool get hasNegative => items.values.any((element) => element < 0);

  int get(ItemKey itemKey) => items[itemKey] ?? 0;

  bool get empty => items.values.every((element) => element <= 0);

  ItemContainer operator -(ItemContainer other) =>
      ItemContainer(items.rebuild((builder) {
        for (final entry in other.items.entries) {
          builder[entry.key] = get(entry.key) - entry.value;
        }
        return builder;
      }));

  ItemContainer operator +(ItemContainer other) =>
      ItemContainer(items.rebuild((builder) {
        for (final entry in other.items.entries) {
          builder[entry.key] = get(entry.key) + entry.value;
        }
        return builder;
      }));

  ItemContainer maxCanBeRemoved(ItemContainer attemptedRemoveAmount) =>
      ItemContainer(BuiltMap.build((builder) {
        for (final entries in attemptedRemoveAmount.items.entries) {
          builder[entries.key] = min(get(entries.key), entries.value);
        }
      }));

  bool canSubtract(ItemContainer other) {
    return maxCanBeRemoved(other) == this;
  }

  @override
  String toString() {
    var s = <String>[];
    for (var entry in items.entries) {
      s.add('${entry.key.name}: ${entry.value}');
    }
    return s.join('\n');
  }
}
