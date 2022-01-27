import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'resources.freezed.dart';
part 'resources.g.dart';

final resourceTypes = {
  Resource.iron: const ResourceDetails(
      name: 'Iron',
      description: "Iron-cha sad that you didn't start with digging gold?"),
  Resource.copper:
      const ResourceDetails(name: 'Copper', description: 'Is that a Penny?'),
}.build();

@HiveType(typeId: 13)
enum Resource {
  @HiveField(0)
  iron,
  @HiveField(1)
  copper,
}

Resource getType(String s) {
  switch (s) {
    case 'iron':
      return Resource.iron;
    case 'copper':
      return Resource.copper;
  }
  throw Exception('Need to define the type for enum');
}

@freezed
class ResourceDetails with _$ResourceDetails {
  const ResourceDetails._();

  const factory ResourceDetails({
    required String name,
    required String description,
  }) = _ResourceDetails;
}
