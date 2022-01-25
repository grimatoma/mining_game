import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'resources.freezed.dart';
part 'resources.g.dart';

// final resourceTypes = {
//   const Resource(
//       name: 'Iron',
//       description: "Iron-cha sad that you didn't start with digging gold?"),
//   const Resource(name: 'Copper', description: 'Is that a Penny?'),
// }.build();

@HiveType(typeId: 13)
enum Resources {
  @HiveField(0)
  // @JsonValue(0)
  iron,
  @HiveField(1)
  // @JsonValue(1)
  copper,
}

Resources getType(String s) {
  switch (s) {
    case 'iron':
      return Resources.iron;
    case 'copper':
      return Resources.copper;
  }
  throw Exception('Need to define the type for enum');
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

class ResourceContainerAdapter2 extends TypeAdapter<ResourceContainer> {
  @override
  final typeId = 0;

  @override
  ResourceContainer read(BinaryReader reader) {
    return ResourceContainer(BuiltMap.from(reader.read()));
  }

  @override
  void write(BinaryWriter writer, ResourceContainer obj) {
    writer.write(obj.resources.toMap());
  }
}

@freezed
class ResourceContainer with _$ResourceContainer {
  const ResourceContainer._();

  @HiveType(typeId: 12, adapterName: 'ResourceContainerAdapter')
  const factory ResourceContainer(
      @HiveField(1) BuiltMap<Resources, int> resources) = _ResourceContainer;

  // factory ResourceContainer.fromJson(Map<String, dynamic> json) =>
  //     _$ResourceContainerFromJson(json);

  static ResourceContainer create(Map<Resources, int> resources) =>
      ResourceContainer(resources.build());

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
