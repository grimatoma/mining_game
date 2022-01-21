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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlanetTileTearOff {
  const _$PlanetTileTearOff();

  _PlanetTile call(
      {required PlanetPoint point,
      required PlanetController controller,
      required Resources resources,
      required bool visible}) {
    return _PlanetTile(
      point: point,
      controller: controller,
      resources: resources,
      visible: visible,
    );
  }
}

/// @nodoc
const $PlanetTile = _$PlanetTileTearOff();

/// @nodoc
mixin _$PlanetTile {
  PlanetPoint get point => throw _privateConstructorUsedError;
  PlanetController get controller => throw _privateConstructorUsedError;
  Resources get resources => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlanetTileCopyWith<PlanetTile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetTileCopyWith<$Res> {
  factory $PlanetTileCopyWith(
          PlanetTile value, $Res Function(PlanetTile) then) =
      _$PlanetTileCopyWithImpl<$Res>;
  $Res call(
      {PlanetPoint point,
      PlanetController controller,
      Resources resources,
      bool visible});

  $PlanetPointCopyWith<$Res> get point;
  $ResourcesCopyWith<$Res> get resources;
}

/// @nodoc
class _$PlanetTileCopyWithImpl<$Res> implements $PlanetTileCopyWith<$Res> {
  _$PlanetTileCopyWithImpl(this._value, this._then);

  final PlanetTile _value;
  // ignore: unused_field
  final $Res Function(PlanetTile) _then;

  @override
  $Res call({
    Object? point = freezed,
    Object? controller = freezed,
    Object? resources = freezed,
    Object? visible = freezed,
  }) {
    return _then(_value.copyWith(
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as PlanetPoint,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as PlanetController,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as Resources,
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $PlanetPointCopyWith<$Res> get point {
    return $PlanetPointCopyWith<$Res>(_value.point, (value) {
      return _then(_value.copyWith(point: value));
    });
  }

  @override
  $ResourcesCopyWith<$Res> get resources {
    return $ResourcesCopyWith<$Res>(_value.resources, (value) {
      return _then(_value.copyWith(resources: value));
    });
  }
}

/// @nodoc
abstract class _$PlanetTileCopyWith<$Res> implements $PlanetTileCopyWith<$Res> {
  factory _$PlanetTileCopyWith(
          _PlanetTile value, $Res Function(_PlanetTile) then) =
      __$PlanetTileCopyWithImpl<$Res>;
  @override
  $Res call(
      {PlanetPoint point,
      PlanetController controller,
      Resources resources,
      bool visible});

  @override
  $PlanetPointCopyWith<$Res> get point;
  @override
  $ResourcesCopyWith<$Res> get resources;
}

/// @nodoc
class __$PlanetTileCopyWithImpl<$Res> extends _$PlanetTileCopyWithImpl<$Res>
    implements _$PlanetTileCopyWith<$Res> {
  __$PlanetTileCopyWithImpl(
      _PlanetTile _value, $Res Function(_PlanetTile) _then)
      : super(_value, (v) => _then(v as _PlanetTile));

  @override
  _PlanetTile get _value => super._value as _PlanetTile;

  @override
  $Res call({
    Object? point = freezed,
    Object? controller = freezed,
    Object? resources = freezed,
    Object? visible = freezed,
  }) {
    return _then(_PlanetTile(
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as PlanetPoint,
      controller: controller == freezed
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as PlanetController,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as Resources,
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PlanetTile extends _PlanetTile {
  _$_PlanetTile(
      {required this.point,
      required this.controller,
      required this.resources,
      required this.visible})
      : super._();

  @override
  final PlanetPoint point;
  @override
  final PlanetController controller;
  @override
  final Resources resources;
  @override
  final bool visible;

  @override
  String toString() {
    return 'PlanetTile(point: $point, controller: $controller, resources: $resources, visible: $visible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlanetTile &&
            const DeepCollectionEquality().equals(other.point, point) &&
            const DeepCollectionEquality()
                .equals(other.controller, controller) &&
            const DeepCollectionEquality().equals(other.resources, resources) &&
            const DeepCollectionEquality().equals(other.visible, visible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(point),
      const DeepCollectionEquality().hash(controller),
      const DeepCollectionEquality().hash(resources),
      const DeepCollectionEquality().hash(visible));

  @JsonKey(ignore: true)
  @override
  _$PlanetTileCopyWith<_PlanetTile> get copyWith =>
      __$PlanetTileCopyWithImpl<_PlanetTile>(this, _$identity);
}

abstract class _PlanetTile extends PlanetTile {
  factory _PlanetTile(
      {required PlanetPoint point,
      required PlanetController controller,
      required Resources resources,
      required bool visible}) = _$_PlanetTile;
  _PlanetTile._() : super._();

  @override
  PlanetPoint get point;
  @override
  PlanetController get controller;
  @override
  Resources get resources;
  @override
  bool get visible;
  @override
  @JsonKey(ignore: true)
  _$PlanetTileCopyWith<_PlanetTile> get copyWith =>
      throw _privateConstructorUsedError;
}
