// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanetPoint _$PlanetPointFromJson(Map<String, dynamic> json) {
  return _PlanetPoint.fromJson(json);
}

/// @nodoc
class _$PlanetPointTearOff {
  const _$PlanetPointTearOff();

  _PlanetPoint call(int x, int y, int z) {
    return _PlanetPoint(
      x,
      y,
      z,
    );
  }

  PlanetPoint fromJson(Map<String, Object?> json) {
    return PlanetPoint.fromJson(json);
  }
}

/// @nodoc
const $PlanetPoint = _$PlanetPointTearOff();

/// @nodoc
mixin _$PlanetPoint {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  int get z => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanetPointCopyWith<PlanetPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetPointCopyWith<$Res> {
  factory $PlanetPointCopyWith(
          PlanetPoint value, $Res Function(PlanetPoint) then) =
      _$PlanetPointCopyWithImpl<$Res>;
  $Res call({int x, int y, int z});
}

/// @nodoc
class _$PlanetPointCopyWithImpl<$Res> implements $PlanetPointCopyWith<$Res> {
  _$PlanetPointCopyWithImpl(this._value, this._then);

  final PlanetPoint _value;
  // ignore: unused_field
  final $Res Function(PlanetPoint) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? z = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      z: z == freezed
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PlanetPointCopyWith<$Res>
    implements $PlanetPointCopyWith<$Res> {
  factory _$PlanetPointCopyWith(
          _PlanetPoint value, $Res Function(_PlanetPoint) then) =
      __$PlanetPointCopyWithImpl<$Res>;
  @override
  $Res call({int x, int y, int z});
}

/// @nodoc
class __$PlanetPointCopyWithImpl<$Res> extends _$PlanetPointCopyWithImpl<$Res>
    implements _$PlanetPointCopyWith<$Res> {
  __$PlanetPointCopyWithImpl(
      _PlanetPoint _value, $Res Function(_PlanetPoint) _then)
      : super(_value, (v) => _then(v as _PlanetPoint));

  @override
  _PlanetPoint get _value => super._value as _PlanetPoint;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? z = freezed,
  }) {
    return _then(_PlanetPoint(
      x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      z == freezed
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlanetPoint extends _PlanetPoint {
  const _$_PlanetPoint(this.x, this.y, this.z) : super._();

  factory _$_PlanetPoint.fromJson(Map<String, dynamic> json) =>
      _$$_PlanetPointFromJson(json);

  @override
  final int x;
  @override
  final int y;
  @override
  final int z;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlanetPoint &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y) &&
            const DeepCollectionEquality().equals(other.z, z));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y),
      const DeepCollectionEquality().hash(z));

  @JsonKey(ignore: true)
  @override
  _$PlanetPointCopyWith<_PlanetPoint> get copyWith =>
      __$PlanetPointCopyWithImpl<_PlanetPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanetPointToJson(this);
  }
}

abstract class _PlanetPoint extends PlanetPoint {
  const factory _PlanetPoint(int x, int y, int z) = _$_PlanetPoint;
  const _PlanetPoint._() : super._();

  factory _PlanetPoint.fromJson(Map<String, dynamic> json) =
      _$_PlanetPoint.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  int get z;
  @override
  @JsonKey(ignore: true)
  _$PlanetPointCopyWith<_PlanetPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
