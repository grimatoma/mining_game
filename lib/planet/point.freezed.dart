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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanetPoint _$PlanetPointFromJson(Map<String, dynamic> json) {
  return _PlanetPoint.fromJson(json);
}

/// @nodoc
mixin _$PlanetPoint {
  @HiveField(0)
  int get x => throw _privateConstructorUsedError;
  @HiveField(1)
  int get y => throw _privateConstructorUsedError;
  @HiveField(2)
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
      _$PlanetPointCopyWithImpl<$Res, PlanetPoint>;
  @useResult
  $Res call({@HiveField(0) int x, @HiveField(1) int y, @HiveField(2) int z});
}

/// @nodoc
class _$PlanetPointCopyWithImpl<$Res, $Val extends PlanetPoint>
    implements $PlanetPointCopyWith<$Res> {
  _$PlanetPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlanetPointCopyWith<$Res>
    implements $PlanetPointCopyWith<$Res> {
  factory _$$_PlanetPointCopyWith(
          _$_PlanetPoint value, $Res Function(_$_PlanetPoint) then) =
      __$$_PlanetPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) int x, @HiveField(1) int y, @HiveField(2) int z});
}

/// @nodoc
class __$$_PlanetPointCopyWithImpl<$Res>
    extends _$PlanetPointCopyWithImpl<$Res, _$_PlanetPoint>
    implements _$$_PlanetPointCopyWith<$Res> {
  __$$_PlanetPointCopyWithImpl(
      _$_PlanetPoint _value, $Res Function(_$_PlanetPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_$_PlanetPoint(
      null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 18, adapterName: 'PlanetPointAdapter')
class _$_PlanetPoint extends _PlanetPoint {
  const _$_PlanetPoint(
      @HiveField(0) this.x, @HiveField(1) this.y, @HiveField(2) this.z)
      : super._();

  factory _$_PlanetPoint.fromJson(Map<String, dynamic> json) =>
      _$$_PlanetPointFromJson(json);

  @override
  @HiveField(0)
  final int x;
  @override
  @HiveField(1)
  final int y;
  @override
  @HiveField(2)
  final int z;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanetPoint &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.z, z) || other.z == z));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, z);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlanetPointCopyWith<_$_PlanetPoint> get copyWith =>
      __$$_PlanetPointCopyWithImpl<_$_PlanetPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanetPointToJson(
      this,
    );
  }
}

abstract class _PlanetPoint extends PlanetPoint {
  const factory _PlanetPoint(@HiveField(0) final int x,
      @HiveField(1) final int y, @HiveField(2) final int z) = _$_PlanetPoint;
  const _PlanetPoint._() : super._();

  factory _PlanetPoint.fromJson(Map<String, dynamic> json) =
      _$_PlanetPoint.fromJson;

  @override
  @HiveField(0)
  int get x;
  @override
  @HiveField(1)
  int get y;
  @override
  @HiveField(2)
  int get z;
  @override
  @JsonKey(ignore: true)
  _$$_PlanetPointCopyWith<_$_PlanetPoint> get copyWith =>
      throw _privateConstructorUsedError;
}
