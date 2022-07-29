// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doodad_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiggerDoodadDefinition _$$DiggerDoodadDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$DiggerDoodadDefinition(
      id: DoodadId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      imageAsset: json['imageAsset'] as String,
      storeImageAsset: json['storeImageAsset'] as String,
      supportedLocations: (json['supportedLocations'] as List<dynamic>)
          .map((e) => $enumDecode(_$TileTypeEnumMap, e))
          .toSet(),
      ticksRequired: json['ticksRequired'] as int,
      ticksName: json['ticksName'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DiggerDoodadDefinitionToJson(
        _$DiggerDoodadDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'imageAsset': instance.imageAsset,
      'storeImageAsset': instance.storeImageAsset,
      'supportedLocations': instance.supportedLocations
          .map((e) => _$TileTypeEnumMap[e]!)
          .toList(),
      'ticksRequired': instance.ticksRequired,
      'ticksName': instance.ticksName,
      'runtimeType': instance.$type,
    };

const _$TileTypeEnumMap = {
  TileType.Empty: 'Empty',
  TileType.Mountain: 'Mountain',
  TileType.Grass: 'Grass',
  TileType.IronDeposit: 'IronDeposit',
  TileType.Tree: 'Tree',
  TileType.Water: 'Water',
};

_$TreeDoodadDefinition _$$TreeDoodadDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$TreeDoodadDefinition(
      id: DoodadId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      imageAsset: json['imageAsset'] as String,
      storeImageAsset: json['storeImageAsset'] as String,
      supportedLocations: (json['supportedLocations'] as List<dynamic>)
          .map((e) => $enumDecode(_$TileTypeEnumMap, e))
          .toSet(),
      ticksRequired: json['ticksRequired'] as int,
      ticksName: json['ticksName'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TreeDoodadDefinitionToJson(
        _$TreeDoodadDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'imageAsset': instance.imageAsset,
      'storeImageAsset': instance.storeImageAsset,
      'supportedLocations': instance.supportedLocations
          .map((e) => _$TileTypeEnumMap[e]!)
          .toList(),
      'ticksRequired': instance.ticksRequired,
      'ticksName': instance.ticksName,
      'runtimeType': instance.$type,
    };

_$TreeCutterHutDoodadDefinition _$$TreeCutterHutDoodadDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$TreeCutterHutDoodadDefinition(
      id: DoodadId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      imageAsset: json['imageAsset'] as String,
      storeImageAsset: json['storeImageAsset'] as String,
      supportedLocations: (json['supportedLocations'] as List<dynamic>)
          .map((e) => $enumDecode(_$TileTypeEnumMap, e))
          .toSet(),
      ticksRequired: json['ticksRequired'] as int,
      ticksName: json['ticksName'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TreeCutterHutDoodadDefinitionToJson(
        _$TreeCutterHutDoodadDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'imageAsset': instance.imageAsset,
      'storeImageAsset': instance.storeImageAsset,
      'supportedLocations': instance.supportedLocations
          .map((e) => _$TileTypeEnumMap[e]!)
          .toList(),
      'ticksRequired': instance.ticksRequired,
      'ticksName': instance.ticksName,
      'runtimeType': instance.$type,
    };

_$MaterialProcessorDoodadDefinition
    _$$MaterialProcessorDoodadDefinitionFromJson(Map<String, dynamic> json) =>
        _$MaterialProcessorDoodadDefinition(
          id: DoodadId.fromJson(json['id'] as Map<String, dynamic>),
          name: json['name'] as String,
          description: json['description'] as String,
          imageAsset: json['imageAsset'] as String,
          storeImageAsset: json['storeImageAsset'] as String,
          supportedLocations: (json['supportedLocations'] as List<dynamic>)
              .map((e) => $enumDecode(_$TileTypeEnumMap, e))
              .toSet(),
          ticksRequired: json['ticksRequired'] as int,
          ticksName: json['ticksName'] as String,
          consumedMaterials: ItemRequirement.fromJson(
              json['consumedMaterials'] as Map<String, dynamic>),
          itemsProduced: ((json['itemsProduced'] as List)
                  .map((e) => ItemInstance.fromJson(e as Map<String, dynamic>)))
              .toBuiltList(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$MaterialProcessorDoodadDefinitionToJson(
        _$MaterialProcessorDoodadDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'imageAsset': instance.imageAsset,
      'storeImageAsset': instance.storeImageAsset,
      'supportedLocations': instance.supportedLocations
          .map((e) => _$TileTypeEnumMap[e]!)
          .toList(),
      'ticksRequired': instance.ticksRequired,
      'ticksName': instance.ticksName,
      'consumedMaterials': instance.consumedMaterials.toJson(),
      'itemsProduced': instance.itemsProduced.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };
