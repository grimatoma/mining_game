// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet_manager.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$PlanetManagerToJson(PlanetManager instance) =>
    <String, dynamic>{
      'tiles': instance.tilesForExport.map((e) => e.toJson()).toList(),
      'width': instance.width,
      'height': instance.height,
    };

Map<String, dynamic> _$TileStateControllerToJson(
        TileStateController instance) =>
    <String, dynamic>{
      'hexagon': instance.hexagon.toJson(),
      'tileType': _$TileTypeEnumMap[instance.tileType]!,
      'doodadInstance': instance.doodadInstance?.toJson(),
    };

const _$TileTypeEnumMap = {
  TileType.Empty: 'Empty',
  TileType.Mountain: 'Mountain',
  TileType.Grass: 'Grass',
  TileType.IronDeposit: 'IronDeposit',
  TileType.Tree: 'Tree',
  TileType.Water: 'Water',
};

Map<String, dynamic> _$SimpleStateProviderToJson<T>(
  SimpleStateProvider<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'value': toJsonT(instance.read),
    };

_$_Hexagon _$$_HexagonFromJson(Map<String, dynamic> json) => _$_Hexagon(
      json['q'] as int,
      json['r'] as int,
    );

Map<String, dynamic> _$$_HexagonToJson(_$_Hexagon instance) =>
    <String, dynamic>{
      'q': instance.q,
      'r': instance.r,
    };
