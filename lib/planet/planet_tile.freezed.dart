// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'planet_tile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlanetTile {
  @HiveField(0)
  PlanetPoint get point => throw _privateConstructorUsedError;
  @HiveField(1)
  ItemContainer get resources => throw _privateConstructorUsedError;
  @HiveField(2)
  bool get visible => throw _privateConstructorUsedError;
  @HiveField(3)
  TileType get tileType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlanetTileCopyWith<PlanetTile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetTileCopyWith<$Res> {
  factory $PlanetTileCopyWith(
          PlanetTile value, $Res Function(PlanetTile) then) =
      _$PlanetTileCopyWithImpl<$Res, PlanetTile>;
  @useResult
  $Res call(
      {@HiveField(0) PlanetPoint point,
      @HiveField(1) ItemContainer resources,
      @HiveField(2) bool visible,
      @HiveField(3) TileType tileType});

  $PlanetPointCopyWith<$Res> get point;
  $ItemContainerCopyWith<$Res> get resources;
}

/// @nodoc
class _$PlanetTileCopyWithImpl<$Res, $Val extends PlanetTile>
    implements $PlanetTileCopyWith<$Res> {
  _$PlanetTileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? resources = null,
    Object? visible = null,
    Object? tileType = null,
  }) {
    return _then(_value.copyWith(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as PlanetPoint,
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      tileType: null == tileType
          ? _value.tileType
          : tileType // ignore: cast_nullable_to_non_nullable
              as TileType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlanetPointCopyWith<$Res> get point {
    return $PlanetPointCopyWith<$Res>(_value.point, (value) {
      return _then(_value.copyWith(point: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemContainerCopyWith<$Res> get resources {
    return $ItemContainerCopyWith<$Res>(_value.resources, (value) {
      return _then(_value.copyWith(resources: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlanetTileCopyWith<$Res>
    implements $PlanetTileCopyWith<$Res> {
  factory _$$_PlanetTileCopyWith(
          _$_PlanetTile value, $Res Function(_$_PlanetTile) then) =
      __$$_PlanetTileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) PlanetPoint point,
      @HiveField(1) ItemContainer resources,
      @HiveField(2) bool visible,
      @HiveField(3) TileType tileType});

  @override
  $PlanetPointCopyWith<$Res> get point;
  @override
  $ItemContainerCopyWith<$Res> get resources;
}

/// @nodoc
class __$$_PlanetTileCopyWithImpl<$Res>
    extends _$PlanetTileCopyWithImpl<$Res, _$_PlanetTile>
    implements _$$_PlanetTileCopyWith<$Res> {
  __$$_PlanetTileCopyWithImpl(
      _$_PlanetTile _value, $Res Function(_$_PlanetTile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? resources = null,
    Object? visible = null,
    Object? tileType = null,
  }) {
    return _then(_$_PlanetTile(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as PlanetPoint,
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      tileType: null == tileType
          ? _value.tileType
          : tileType // ignore: cast_nullable_to_non_nullable
              as TileType,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 17, adapterName: 'PlanetTileAdapter')
class _$_PlanetTile extends _PlanetTile {
  _$_PlanetTile(
      {@HiveField(0) required this.point,
      @HiveField(1) required this.resources,
      @HiveField(2) required this.visible,
      @HiveField(3) this.tileType = TileType.Empty})
      : super._();

  @override
  @HiveField(0)
  final PlanetPoint point;
  @override
  @HiveField(1)
  final ItemContainer resources;
  @override
  @HiveField(2)
  final bool visible;
  @override
  @JsonKey()
  @HiveField(3)
  final TileType tileType;

  @override
  String toString() {
    return 'PlanetTile(point: $point, resources: $resources, visible: $visible, tileType: $tileType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanetTile &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.resources, resources) ||
                other.resources == resources) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.tileType, tileType) ||
                other.tileType == tileType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, point, resources, visible, tileType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlanetTileCopyWith<_$_PlanetTile> get copyWith =>
      __$$_PlanetTileCopyWithImpl<_$_PlanetTile>(this, _$identity);
}

abstract class _PlanetTile extends PlanetTile {
  factory _PlanetTile(
      {@HiveField(0) required final PlanetPoint point,
      @HiveField(1) required final ItemContainer resources,
      @HiveField(2) required final bool visible,
      @HiveField(3) final TileType tileType}) = _$_PlanetTile;
  _PlanetTile._() : super._();

  @override
  @HiveField(0)
  PlanetPoint get point;
  @override
  @HiveField(1)
  ItemContainer get resources;
  @override
  @HiveField(2)
  bool get visible;
  @override
  @HiveField(3)
  TileType get tileType;
  @override
  @JsonKey(ignore: true)
  _$$_PlanetTileCopyWith<_$_PlanetTile> get copyWith =>
      throw _privateConstructorUsedError;
}
