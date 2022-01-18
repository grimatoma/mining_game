// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_configs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameConfigsTearOff {
  const _$GameConfigsTearOff();

  _GameConfigs call(int width, int height, int depth, int seed) {
    return _GameConfigs(
      width,
      height,
      depth,
      seed,
    );
  }
}

/// @nodoc
const $GameConfigs = _$GameConfigsTearOff();

/// @nodoc
mixin _$GameConfigs {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get depth => throw _privateConstructorUsedError;
  int get seed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameConfigsCopyWith<GameConfigs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameConfigsCopyWith<$Res> {
  factory $GameConfigsCopyWith(
          GameConfigs value, $Res Function(GameConfigs) then) =
      _$GameConfigsCopyWithImpl<$Res>;
  $Res call({int width, int height, int depth, int seed});
}

/// @nodoc
class _$GameConfigsCopyWithImpl<$Res> implements $GameConfigsCopyWith<$Res> {
  _$GameConfigsCopyWithImpl(this._value, this._then);

  final GameConfigs _value;
  // ignore: unused_field
  final $Res Function(GameConfigs) _then;

  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? depth = freezed,
    Object? seed = freezed,
  }) {
    return _then(_value.copyWith(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      depth: depth == freezed
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
      seed: seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GameConfigsCopyWith<$Res>
    implements $GameConfigsCopyWith<$Res> {
  factory _$GameConfigsCopyWith(
          _GameConfigs value, $Res Function(_GameConfigs) then) =
      __$GameConfigsCopyWithImpl<$Res>;
  @override
  $Res call({int width, int height, int depth, int seed});
}

/// @nodoc
class __$GameConfigsCopyWithImpl<$Res> extends _$GameConfigsCopyWithImpl<$Res>
    implements _$GameConfigsCopyWith<$Res> {
  __$GameConfigsCopyWithImpl(
      _GameConfigs _value, $Res Function(_GameConfigs) _then)
      : super(_value, (v) => _then(v as _GameConfigs));

  @override
  _GameConfigs get _value => super._value as _GameConfigs;

  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? depth = freezed,
    Object? seed = freezed,
  }) {
    return _then(_GameConfigs(
      width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      depth == freezed
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
      seed == freezed
          ? _value.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GameConfigs implements _GameConfigs {
  const _$_GameConfigs(this.width, this.height, this.depth, this.seed);

  @override
  final int width;
  @override
  final int height;
  @override
  final int depth;
  @override
  final int seed;

  @override
  String toString() {
    return 'GameConfigs(width: $width, height: $height, depth: $depth, seed: $seed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameConfigs &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.depth, depth) &&
            const DeepCollectionEquality().equals(other.seed, seed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(depth),
      const DeepCollectionEquality().hash(seed));

  @JsonKey(ignore: true)
  @override
  _$GameConfigsCopyWith<_GameConfigs> get copyWith =>
      __$GameConfigsCopyWithImpl<_GameConfigs>(this, _$identity);
}

abstract class _GameConfigs implements GameConfigs {
  const factory _GameConfigs(int width, int height, int depth, int seed) =
      _$_GameConfigs;

  @override
  int get width;
  @override
  int get height;
  @override
  int get depth;
  @override
  int get seed;
  @override
  @JsonKey(ignore: true)
  _$GameConfigsCopyWith<_GameConfigs> get copyWith =>
      throw _privateConstructorUsedError;
}
