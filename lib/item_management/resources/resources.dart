import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resources.freezed.dart';

// final resourceTypes = {
//   const Resource(
//       name: 'Iron',
//       description: "Iron-cha sad that you didn't start with digging gold?"),
//   const Resource(name: 'Copper', description: 'Is that a Penny?'),
// }.build();

enum Resources {
  iron,
  copper,
}

// @freezed
// class Resource with _$Resource {
//   const Resource._();
//
//   const factory Resource({
//     required String name,
//     required String description,
//   }) = _Resource;
// }

@freezed
class ResourceContainer with _$ResourceContainer {
  const ResourceContainer._();

  const factory ResourceContainer(BuiltMap<Resources, int> resources) =
      _ResourceContainer;

  // static ResourceContainer create(Map<Resources, int> resources) =>
  //     ResourceContainer(resources.build());

  bool get hasNegative => resources.values.any((element) => element < 0);

  int get(Resources resource) => resources[resource] ?? 0;

  ResourceContainer operator -(ResourceContainer other) =>
      ResourceContainer(resources.rebuild((builder) {
        for (final resourceType in Resources.values) {
          builder[resourceType] = get(resourceType) - other.get(resourceType);
        }
        return builder;
      }));

  ResourceContainer operator +(ResourceContainer other) =>
      ResourceContainer(resources.rebuild((builder) {
        for (final resourceType in Resources.values) {
          builder[resourceType] = get(resourceType) + other.get(resourceType);
        }
        return builder;
      }));
  ResourceContainer maxCanBeRemoved(ResourceContainer other) =>
      ResourceContainer(BuiltMap<Resources, int>.build((builder) {
        for (final resourceType in Resources.values) {
          builder[resourceType] =
              min(get(resourceType), other.get(resourceType));
        }
      }));
}
