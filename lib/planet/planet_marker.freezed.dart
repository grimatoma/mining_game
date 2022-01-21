// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'planet_marker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlanetScreenInfoTearOff {
  const _$PlanetScreenInfoTearOff();

  _PlanetMarker call(
      {required int planetX,
      required int planetY,
      required double xScale,
      required double yScale}) {
    return _PlanetMarker(
      planetX: planetX,
      planetY: planetY,
      xScale: xScale,
      yScale: yScale,
    );
  }
}

/// @nodoc
const $PlanetScreenInfo = _$PlanetScreenInfoTearOff();

/// @nodoc
mixin _$PlanetScreenInfo {
  int get planetX => throw _privateConstructorUsedError;
  int get planetY => throw _privateConstructorUsedError;
  double get xScale => throw _privateConstructorUsedError;
  double get yScale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlanetScreenInfoCopyWith<PlanetScreenInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetScreenInfoCopyWith<$Res> {
  factory $PlanetScreenInfoCopyWith(
          PlanetScreenInfo value, $Res Function(PlanetScreenInfo) then) =
      _$PlanetScreenInfoCopyWithImpl<$Res>;
  $Res call({int planetX, int planetY, double xScale, double yScale});
}

/// @nodoc
class _$PlanetScreenInfoCopyWithImpl<$Res>
    implements $PlanetScreenInfoCopyWith<$Res> {
  _$PlanetScreenInfoCopyWithImpl(this._value, this._then);

  final PlanetScreenInfo _value;
  // ignore: unused_field
  final $Res Function(PlanetScreenInfo) _then;

  @override
  $Res call({
    Object? planetX = freezed,
    Object? planetY = freezed,
    Object? xScale = freezed,
    Object? yScale = freezed,
  }) {
    return _then(_value.copyWith(
      planetX: planetX == freezed
          ? _value.planetX
          : planetX // ignore: cast_nullable_to_non_nullable
              as int,
      planetY: planetY == freezed
          ? _value.planetY
          : planetY // ignore: cast_nullable_to_non_nullable
              as int,
      xScale: xScale == freezed
          ? _value.xScale
          : xScale // ignore: cast_nullable_to_non_nullable
              as double,
      yScale: yScale == freezed
          ? _value.yScale
          : yScale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$PlanetMarkerCopyWith<$Res>
    implements $PlanetScreenInfoCopyWith<$Res> {
  factory _$PlanetMarkerCopyWith(
          _PlanetMarker value, $Res Function(_PlanetMarker) then) =
      __$PlanetMarkerCopyWithImpl<$Res>;
  @override
  $Res call({int planetX, int planetY, double xScale, double yScale});
}

/// @nodoc
class __$PlanetMarkerCopyWithImpl<$Res>
    extends _$PlanetScreenInfoCopyWithImpl<$Res>
    implements _$PlanetMarkerCopyWith<$Res> {
  __$PlanetMarkerCopyWithImpl(
      _PlanetMarker _value, $Res Function(_PlanetMarker) _then)
      : super(_value, (v) => _then(v as _PlanetMarker));

  @override
  _PlanetMarker get _value => super._value as _PlanetMarker;

  @override
  $Res call({
    Object? planetX = freezed,
    Object? planetY = freezed,
    Object? xScale = freezed,
    Object? yScale = freezed,
  }) {
    return _then(_PlanetMarker(
      planetX: planetX == freezed
          ? _value.planetX
          : planetX // ignore: cast_nullable_to_non_nullable
              as int,
      planetY: planetY == freezed
          ? _value.planetY
          : planetY // ignore: cast_nullable_to_non_nullable
              as int,
      xScale: xScale == freezed
          ? _value.xScale
          : xScale // ignore: cast_nullable_to_non_nullable
              as double,
      yScale: yScale == freezed
          ? _value.yScale
          : yScale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_PlanetMarker extends _PlanetMarker {
  const _$_PlanetMarker(
      {required this.planetX,
      required this.planetY,
      required this.xScale,
      required this.yScale})
      : super._();

  @override
  final int planetX;
  @override
  final int planetY;
  @override
  final double xScale;
  @override
  final double yScale;

  @override
  String toString() {
    return 'PlanetScreenInfo(planetX: $planetX, planetY: $planetY, xScale: $xScale, yScale: $yScale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlanetMarker &&
            const DeepCollectionEquality().equals(other.planetX, planetX) &&
            const DeepCollectionEquality().equals(other.planetY, planetY) &&
            const DeepCollectionEquality().equals(other.xScale, xScale) &&
            const DeepCollectionEquality().equals(other.yScale, yScale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(planetX),
      const DeepCollectionEquality().hash(planetY),
      const DeepCollectionEquality().hash(xScale),
      const DeepCollectionEquality().hash(yScale));

  @JsonKey(ignore: true)
  @override
  _$PlanetMarkerCopyWith<_PlanetMarker> get copyWith =>
      __$PlanetMarkerCopyWithImpl<_PlanetMarker>(this, _$identity);
}

abstract class _PlanetMarker extends PlanetScreenInfo {
  const factory _PlanetMarker(
      {required int planetX,
      required int planetY,
      required double xScale,
      required double yScale}) = _$_PlanetMarker;
  const _PlanetMarker._() : super._();

  @override
  int get planetX;
  @override
  int get planetY;
  @override
  double get xScale;
  @override
  double get yScale;
  @override
  @JsonKey(ignore: true)
  _$PlanetMarkerCopyWith<_PlanetMarker> get copyWith =>
      throw _privateConstructorUsedError;
}
