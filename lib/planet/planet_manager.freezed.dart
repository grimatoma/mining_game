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

Hexagon _$HexagonFromJson(Map<String, dynamic> json) {
  return _Hexagon.fromJson(json);
}

/// @nodoc
mixin _$Hexagon {
  int get q => throw _privateConstructorUsedError;

  int get r => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
@JsonSerializable()
class _$_Hexagon extends _Hexagon {
  const _$_Hexagon(this.q, this.r) : super._();

  factory _$_Hexagon.fromJson(Map<String, dynamic> json) =>
      _$$_HexagonFromJson(json);

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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(q),
      const DeepCollectionEquality().hash(r));

  @JsonKey(ignore: true)
  @override
  _$$_HexagonCopyWith<_$_Hexagon> get copyWith =>
      __$$_HexagonCopyWithImpl<_$_Hexagon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HexagonToJson(this);
  }
}

abstract class _Hexagon extends Hexagon {
  const factory _Hexagon(final int q, final int r) = _$_Hexagon;

  const _Hexagon._() : super._();

  factory _Hexagon.fromJson(Map<String, dynamic> json) = _$_Hexagon.fromJson;

  @override
  int get q => throw _privateConstructorUsedError;

  @override
  int get r => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_HexagonCopyWith<_$_Hexagon> get copyWith =>
      throw _privateConstructorUsedError;
}
