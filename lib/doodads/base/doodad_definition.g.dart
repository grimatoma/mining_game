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
      userCanBuild: json['userCanBuild'] as bool? ?? true,
      supportedLocations: (json['supportedLocations'] as List<dynamic>)
          .map((e) => $enumDecode(_$TileTypeEnumMap, e))
          .toSet(),
      ticksRequired: json['ticksRequired'] as int,
      ticksName: json['ticksName'] as String,
      itemMined: ((json['itemMined'] as List).map(
              (e) => ItemInstanceGenerator.fromJson(e as Map<String, dynamic>)))
          .toBuiltList(),
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
      'userCanBuild': instance.userCanBuild,
      'supportedLocations': instance.supportedLocations
          .map((e) => _$TileTypeEnumMap[e]!)
          .toList(),
      'ticksRequired': instance.ticksRequired,
      'ticksName': instance.ticksName,
      'itemMined': instance.itemMined.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

const _$TileTypeEnumMap = {
  TileType.EMPTY: 'EMPTY',
  TileType.MOUNTAIN: 'MOUNTAIN',
  TileType.GRASS: 'GRASS',
  TileType.IRON_DEPOSIT: 'IRON_DEPOSIT',
  TileType.TREE: 'TREE',
  TileType.WATER: 'WATER',
  TileType.COASTAL: 'COASTAL',
};

_$RegenerativeHarvestableDoodadDefinition
    _$$RegenerativeHarvestableDoodadDefinitionFromJson(
            Map<String, dynamic> json) =>
        _$RegenerativeHarvestableDoodadDefinition(
          id: DoodadId.fromJson(json['id'] as Map<String, dynamic>),
          name: json['name'] as String,
          description: json['description'] as String,
          imageAsset: json['imageAsset'] as String,
          storeImageAsset: json['storeImageAsset'] as String,
          userCanBuild: json['userCanBuild'] as bool? ?? true,
          supportedLocations: (json['supportedLocations'] as List<dynamic>)
              .map((e) => $enumDecode(_$TileTypeEnumMap, e))
              .toSet(),
          ticksRequired: json['ticksRequired'] as int,
          ticksName: json['ticksName'] as String,
          resourceRequiredToHarvestOne:
              (json['resourceRequiredToHarvestOne'] as num).toDouble(),
          resourceMax: (json['resourceMax'] as num).toDouble(),
          resourceIncreasePerTick:
              (json['resourceIncreasePerTick'] as num).toDouble(),
          resourceGenerated: ((json['resourceGenerated'] as List).map((e) =>
                  ItemInstanceGenerator.fromJson(e as Map<String, dynamic>)))
              .toBuiltList(),
          manualEffortToHarvest: json['manualEffortToHarvest'] as int?,
          dynamicImageAssets:
              (json['dynamicImageAssets'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as String),
          ),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$RegenerativeHarvestableDoodadDefinitionToJson(
        _$RegenerativeHarvestableDoodadDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'imageAsset': instance.imageAsset,
      'storeImageAsset': instance.storeImageAsset,
      'userCanBuild': instance.userCanBuild,
      'supportedLocations': instance.supportedLocations
          .map((e) => _$TileTypeEnumMap[e]!)
          .toList(),
      'ticksRequired': instance.ticksRequired,
      'ticksName': instance.ticksName,
      'resourceRequiredToHarvestOne': instance.resourceRequiredToHarvestOne,
      'resourceMax': instance.resourceMax,
      'resourceIncreasePerTick': instance.resourceIncreasePerTick,
      'resourceGenerated':
          instance.resourceGenerated.map((e) => e.toJson()).toList(),
      'manualEffortToHarvest': instance.manualEffortToHarvest,
      'dynamicImageAssets':
          instance.dynamicImageAssets?.map((k, e) => MapEntry(k.toString(), e)),
      'runtimeType': instance.$type,
    };

_$AreaHarvestableDoodadDefinition _$$AreaHarvestableDoodadDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$AreaHarvestableDoodadDefinition(
      id: DoodadId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      imageAsset: json['imageAsset'] as String,
      storeImageAsset: json['storeImageAsset'] as String,
      userCanBuild: json['userCanBuild'] as bool? ?? true,
      supportedLocations: (json['supportedLocations'] as List<dynamic>)
          .map((e) => $enumDecode(_$TileTypeEnumMap, e))
          .toSet(),
      ticksRequired: json['ticksRequired'] as int,
      ticksName: json['ticksName'] as String,
      range: json['range'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AreaHarvestableDoodadDefinitionToJson(
        _$AreaHarvestableDoodadDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'imageAsset': instance.imageAsset,
      'storeImageAsset': instance.storeImageAsset,
      'userCanBuild': instance.userCanBuild,
      'supportedLocations': instance.supportedLocations
          .map((e) => _$TileTypeEnumMap[e]!)
          .toList(),
      'ticksRequired': instance.ticksRequired,
      'ticksName': instance.ticksName,
      'range': instance.range,
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
          userCanBuild: json['userCanBuild'] as bool? ?? true,
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
      'userCanBuild': instance.userCanBuild,
      'supportedLocations': instance.supportedLocations
          .map((e) => _$TileTypeEnumMap[e]!)
          .toList(),
      'ticksRequired': instance.ticksRequired,
      'ticksName': instance.ticksName,
      'consumedMaterials': instance.consumedMaterials.toJson(),
      'itemsProduced': instance.itemsProduced.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$HouseDoodadDefinition _$$HouseDoodadDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$HouseDoodadDefinition(
      id: DoodadId.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String,
      imageAsset: json['imageAsset'] as String,
      storeImageAsset: json['storeImageAsset'] as String,
      userCanBuild: json['userCanBuild'] as bool? ?? true,
      supportedLocations: (json['supportedLocations'] as List<dynamic>)
          .map((e) => $enumDecode(_$TileTypeEnumMap, e))
          .toSet(),
      populationLimit: json['populationLimit'] as int,
      peopleType: $enumDecode(_$PersonTypeEnumMap, json['peopleType']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$HouseDoodadDefinitionToJson(
        _$HouseDoodadDefinition instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'description': instance.description,
      'imageAsset': instance.imageAsset,
      'storeImageAsset': instance.storeImageAsset,
      'userCanBuild': instance.userCanBuild,
      'supportedLocations': instance.supportedLocations
          .map((e) => _$TileTypeEnumMap[e]!)
          .toList(),
      'populationLimit': instance.populationLimit,
      'peopleType': _$PersonTypeEnumMap[instance.peopleType]!,
      'runtimeType': instance.$type,
    };

const _$PersonTypeEnumMap = {
  PersonType.peasant: 'peasant',
  PersonType.worker: 'worker',
  PersonType.middleClass: 'middleClass',
};
