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
class _$PlanetMarkerTearOff {
  const _$PlanetMarkerTearOff();

  _PlanetMarker call(double x, double y) {
    return _PlanetMarker(
      x,
      y,
    );
  }
}

/// @nodoc
const $PlanetMarker = _$PlanetMarkerTearOff();

/// @nodoc
mixin _$PlanetMarker {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlanetMarkerCopyWith<PlanetMarker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetMarkerCopyWith<$Res> {
  factory $PlanetMarkerCopyWith(
          PlanetMarker value, $Res Function(PlanetMarker) then) =
      _$PlanetMarkerCopyWithImpl<$Res>;
  $Res call({double x, double y});
}

/// @nodoc
class _$PlanetMarkerCopyWithImpl<$Res> implements $PlanetMarkerCopyWith<$Res> {
  _$PlanetMarkerCopyWithImpl(this._value, this._then);

  final PlanetMarker _value;
  // ignore: unused_field
  final $Res Function(PlanetMarker) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$PlanetMarkerCopyWith<$Res>
    implements $PlanetMarkerCopyWith<$Res> {
  factory _$PlanetMarkerCopyWith(
          _PlanetMarker value, $Res Function(_PlanetMarker) then) =
      __$PlanetMarkerCopyWithImpl<$Res>;
  @override
  $Res call({double x, double y});
}

/// @nodoc
class __$PlanetMarkerCopyWithImpl<$Res> extends _$PlanetMarkerCopyWithImpl<$Res>
    implements _$PlanetMarkerCopyWith<$Res> {
  __$PlanetMarkerCopyWithImpl(
      _PlanetMarker _value, $Res Function(_PlanetMarker) _then)
      : super(_value, (v) => _then(v as _PlanetMarker));

  @override
  _PlanetMarker get _value => super._value as _PlanetMarker;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_PlanetMarker(
      x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_PlanetMarker extends _PlanetMarker {
  const _$_PlanetMarker(this.x, this.y) : super._();

  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'PlanetMarker(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlanetMarker &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y));

  @JsonKey(ignore: true)
  @override
  _$PlanetMarkerCopyWith<_PlanetMarker> get copyWith =>
      __$PlanetMarkerCopyWithImpl<_PlanetMarker>(this, _$identity);
}

abstract class _PlanetMarker extends PlanetMarker {
  const factory _PlanetMarker(double x, double y) = _$_PlanetMarker;
  const _PlanetMarker._() : super._();

  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$PlanetMarkerCopyWith<_PlanetMarker> get copyWith =>
      throw _privateConstructorUsedError;
}
