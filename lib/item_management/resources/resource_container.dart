import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'resources.dart';

part 'resource_container.freezed.dart';
part 'resource_container.g.dart';

@freezed
class ResourceContainer with _$ResourceContainer {
  const ResourceContainer._();

  @HiveType(typeId: 12, adapterName: 'ResourceContainerAdapter')
  const factory ResourceContainer(
      @HiveField(1) BuiltMap<Resource, int> resources) = _ResourceContainer;

  static ResourceContainer create(Map<Resource, int> resources) =>
      ResourceContainer(resources.build());

  bool get hasNegative => resources.values.any((element) => element < 0);

  int get(Resource resource) => resources[resource] ?? 0;

  ResourceContainer operator -(ResourceContainer other) =>
      ResourceContainer(resources.rebuild((builder) {
        for (final resourceType in Resource.values) {
          builder[resourceType] = get(resourceType) - other.get(resourceType);
        }
        return builder;
      }));

  ResourceContainer operator +(ResourceContainer other) =>
      ResourceContainer(resources.rebuild((builder) {
        for (final resourceType in Resource.values) {
          builder[resourceType] = get(resourceType) + other.get(resourceType);
        }
        return builder;
      }));
  ResourceContainer maxCanBeRemoved(ResourceContainer other) =>
      ResourceContainer(BuiltMap<Resource, int>.build((builder) {
        for (final resourceType in Resource.values) {
          builder[resourceType] =
              min(get(resourceType), other.get(resourceType));
        }
      }));

  @override
  String toString() {
    var s = <String>[];
    resources.forEach((resource, amount) {
      s.add('${resource.name}: $amount');
    });
    return s.join('\n');
  }
}
