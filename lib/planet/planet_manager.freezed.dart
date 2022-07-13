// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'planet_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Tile {
  int get x => throw _privateConstructorUsedError;

  int get y => throw _privateConstructorUsedError;

  TileType get tileType => throw _privateConstructorUsedError;

  Doodad? get doodad => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x, int y, TileType tileType, Doodad? doodad)
        empty,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x, int y, TileType tileType, Doodad? doodad)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x, int y, TileType tileType, Doodad? doodad)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TileCopyWith<Tile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TileCopyWith<$Res> {
  factory $TileCopyWith(Tile value, $Res Function(Tile) then) =
      _$TileCopyWithImpl<$Res>;

  $Res call({int x, int y, TileType tileType, Doodad? doodad});
}

/// @nodoc
class _$TileCopyWithImpl<$Res> implements $TileCopyWith<$Res> {
  _$TileCopyWithImpl(this._value, this._then);

  final Tile _value;

  // ignore: unused_field
  final $Res Function(Tile) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? tileType = freezed,
    Object? doodad = freezed,
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
      tileType: tileType == freezed
          ? _value.tileType
          : tileType // ignore: cast_nullable_to_non_nullable
              as TileType,
      doodad: doodad == freezed
          ? _value.doodad
          : doodad // ignore: cast_nullable_to_non_nullable
              as Doodad?,
    ));
  }
}

/// @nodoc
abstract class _$$EmptyCopyWith<$Res> implements $TileCopyWith<$Res> {
  factory _$$EmptyCopyWith(_$Empty value, $Res Function(_$Empty) then) =
      __$$EmptyCopyWithImpl<$Res>;

  @override
  $Res call({int x, int y, TileType tileType, Doodad? doodad});
}

/// @nodoc
class __$$EmptyCopyWithImpl<$Res> extends _$TileCopyWithImpl<$Res>
    implements _$$EmptyCopyWith<$Res> {
  __$$EmptyCopyWithImpl(_$Empty _value, $Res Function(_$Empty) _then)
      : super(_value, (v) => _then(v as _$Empty));

  @override
  _$Empty get _value => super._value as _$Empty;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? tileType = freezed,
    Object? doodad = freezed,
  }) {
    return _then(_$Empty(
      x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      tileType == freezed
          ? _value.tileType
          : tileType // ignore: cast_nullable_to_non_nullable
              as TileType,
      doodad: doodad == freezed
          ? _value.doodad
          : doodad // ignore: cast_nullable_to_non_nullable
              as Doodad?,
    ));
  }
}

/// @nodoc

class _$Empty extends Empty {
  _$Empty(this.x, this.y, this.tileType, {this.doodad}) : super._();

  @override
  final int x;
  @override
  final int y;
  @override
  final TileType tileType;
  @override
  final Doodad? doodad;

  @override
  String toString() {
    return 'Tile.empty(x: $x, y: $y, tileType: $tileType, doodad: $doodad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y) &&
            const DeepCollectionEquality().equals(other.tileType, tileType) &&
            const DeepCollectionEquality().equals(other.doodad, doodad));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y),
      const DeepCollectionEquality().hash(tileType),
      const DeepCollectionEquality().hash(doodad));

  @JsonKey(ignore: true)
  @override
  _$$EmptyCopyWith<_$Empty> get copyWith =>
      __$$EmptyCopyWithImpl<_$Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int x, int y, TileType tileType, Doodad? doodad)
        empty,
  }) {
    return empty(x, y, tileType, doodad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int x, int y, TileType tileType, Doodad? doodad)? empty,
  }) {
    return empty?.call(x, y, tileType, doodad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int x, int y, TileType tileType, Doodad? doodad)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(x, y, tileType, doodad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty extends Tile {
  factory Empty(final int x, final int y, final TileType tileType,
      {final Doodad? doodad}) = _$Empty;

  Empty._() : super._();

  @override
  int get x => throw _privateConstructorUsedError;

  @override
  int get y => throw _privateConstructorUsedError;

  @override
  TileType get tileType => throw _privateConstructorUsedError;

  @override
  Doodad? get doodad => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<_$Empty> get copyWith => throw _privateConstructorUsedError;
}
