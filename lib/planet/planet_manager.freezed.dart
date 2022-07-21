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
mixin _$Hexagon {
  int get q => throw _privateConstructorUsedError;
  int get r => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HexagonCopyWith<Hexagon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HexagonCopyWith<$Res> {
  factory $HexagonCopyWith(Hexagon value, $Res Function(Hexagon) then) =
      _$HexagonCopyWithImpl<$Res>;
  $Res call({int q, int r});
}

/// @nodoc
class _$HexagonCopyWithImpl<$Res> implements $HexagonCopyWith<$Res> {
  _$HexagonCopyWithImpl(this._value, this._then);

  final Hexagon _value;
  // ignore: unused_field
  final $Res Function(Hexagon) _then;

  @override
  $Res call({
    Object? q = freezed,
    Object? r = freezed,
  }) {
    return _then(_value.copyWith(
      q: q == freezed
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as int,
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_HexagonCopyWith<$Res> implements $HexagonCopyWith<$Res> {
  factory _$$_HexagonCopyWith(
          _$_Hexagon value, $Res Function(_$_Hexagon) then) =
      __$$_HexagonCopyWithImpl<$Res>;
  @override
  $Res call({int q, int r});
}

/// @nodoc
class __$$_HexagonCopyWithImpl<$Res> extends _$HexagonCopyWithImpl<$Res>
    implements _$$_HexagonCopyWith<$Res> {
  __$$_HexagonCopyWithImpl(_$_Hexagon _value, $Res Function(_$_Hexagon) _then)
      : super(_value, (v) => _then(v as _$_Hexagon));

  @override
  _$_Hexagon get _value => super._value as _$_Hexagon;

  @override
  $Res call({
    Object? q = freezed,
    Object? r = freezed,
  }) {
    return _then(_$_Hexagon(
      q == freezed
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as int,
      r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Hexagon extends _Hexagon {
  const _$_Hexagon(this.q, this.r) : super._();

  @override
  final int q;
  @override
  final int r;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hexagon &&
            const DeepCollectionEquality().equals(other.q, q) &&
            const DeepCollectionEquality().equals(other.r, r));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(q),
      const DeepCollectionEquality().hash(r));

  @JsonKey(ignore: true)
  @override
  _$$_HexagonCopyWith<_$_Hexagon> get copyWith =>
      __$$_HexagonCopyWithImpl<_$_Hexagon>(this, _$identity);
}

abstract class _Hexagon extends Hexagon {
  const factory _Hexagon(final int q, final int r) = _$_Hexagon;
  const _Hexagon._() : super._();

  @override
  int get q => throw _privateConstructorUsedError;
  @override
  int get r => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HexagonCopyWith<_$_Hexagon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Tile {
  Hexagon get hexagon => throw _privateConstructorUsedError;
  TileType get tileType => throw _privateConstructorUsedError;
  Doodad? get doodad => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Hexagon hexagon, TileType tileType, Doodad? doodad)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Hexagon hexagon, TileType tileType, Doodad? doodad)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Hexagon hexagon, TileType tileType, Doodad? doodad)? empty,
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
  $Res call({Hexagon hexagon, TileType tileType, Doodad? doodad});

  $HexagonCopyWith<$Res> get hexagon;
}

/// @nodoc
class _$TileCopyWithImpl<$Res> implements $TileCopyWith<$Res> {
  _$TileCopyWithImpl(this._value, this._then);

  final Tile _value;
  // ignore: unused_field
  final $Res Function(Tile) _then;

  @override
  $Res call({
    Object? hexagon = freezed,
    Object? tileType = freezed,
    Object? doodad = freezed,
  }) {
    return _then(_value.copyWith(
      hexagon: hexagon == freezed
          ? _value.hexagon
          : hexagon // ignore: cast_nullable_to_non_nullable
              as Hexagon,
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

  @override
  $HexagonCopyWith<$Res> get hexagon {
    return $HexagonCopyWith<$Res>(_value.hexagon, (value) {
      return _then(_value.copyWith(hexagon: value));
    });
  }
}

/// @nodoc
abstract class _$$EmptyCopyWith<$Res> implements $TileCopyWith<$Res> {
  factory _$$EmptyCopyWith(_$Empty value, $Res Function(_$Empty) then) =
      __$$EmptyCopyWithImpl<$Res>;
  @override
  $Res call({Hexagon hexagon, TileType tileType, Doodad? doodad});

  @override
  $HexagonCopyWith<$Res> get hexagon;
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
    Object? hexagon = freezed,
    Object? tileType = freezed,
    Object? doodad = freezed,
  }) {
    return _then(_$Empty(
      hexagon == freezed
          ? _value.hexagon
          : hexagon // ignore: cast_nullable_to_non_nullable
              as Hexagon,
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
  _$Empty(this.hexagon, this.tileType, {this.doodad}) : super._();

  @override
  final Hexagon hexagon;
  @override
  final TileType tileType;
  @override
  final Doodad? doodad;

  @override
  String toString() {
    return 'Tile.empty(hexagon: $hexagon, tileType: $tileType, doodad: $doodad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty &&
            const DeepCollectionEquality().equals(other.hexagon, hexagon) &&
            const DeepCollectionEquality().equals(other.tileType, tileType) &&
            const DeepCollectionEquality().equals(other.doodad, doodad));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hexagon),
      const DeepCollectionEquality().hash(tileType),
      const DeepCollectionEquality().hash(doodad));

  @JsonKey(ignore: true)
  @override
  _$$EmptyCopyWith<_$Empty> get copyWith =>
      __$$EmptyCopyWithImpl<_$Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Hexagon hexagon, TileType tileType, Doodad? doodad)
        empty,
  }) {
    return empty(hexagon, tileType, doodad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Hexagon hexagon, TileType tileType, Doodad? doodad)? empty,
  }) {
    return empty?.call(hexagon, tileType, doodad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Hexagon hexagon, TileType tileType, Doodad? doodad)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(hexagon, tileType, doodad);
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
  factory Empty(final Hexagon hexagon, final TileType tileType,
      {final Doodad? doodad}) = _$Empty;
  Empty._() : super._();

  @override
  Hexagon get hexagon => throw _privateConstructorUsedError;
  @override
  TileType get tileType => throw _privateConstructorUsedError;
  @override
  Doodad? get doodad => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<_$Empty> get copyWith => throw _privateConstructorUsedError;
}
