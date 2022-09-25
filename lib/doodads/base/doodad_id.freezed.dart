// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'doodad_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoodadId _$DoodadIdFromJson(Map<String, dynamic> json) {
  return _DoodadId.fromJson(json);
}

/// @nodoc
mixin _$DoodadId {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoodadIdCopyWith<DoodadId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoodadIdCopyWith<$Res> {
  factory $DoodadIdCopyWith(DoodadId value, $Res Function(DoodadId) then) =
      _$DoodadIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$DoodadIdCopyWithImpl<$Res> implements $DoodadIdCopyWith<$Res> {
  _$DoodadIdCopyWithImpl(this._value, this._then);

  final DoodadId _value;
  // ignore: unused_field
  final $Res Function(DoodadId) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DoodadIdCopyWith<$Res> implements $DoodadIdCopyWith<$Res> {
  factory _$$_DoodadIdCopyWith(
          _$_DoodadId value, $Res Function(_$_DoodadId) then) =
      __$$_DoodadIdCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$_DoodadIdCopyWithImpl<$Res> extends _$DoodadIdCopyWithImpl<$Res>
    implements _$$_DoodadIdCopyWith<$Res> {
  __$$_DoodadIdCopyWithImpl(
      _$_DoodadId _value, $Res Function(_$_DoodadId) _then)
      : super(_value, (v) => _then(v as _$_DoodadId));

  @override
  _$_DoodadId get _value => super._value as _$_DoodadId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_DoodadId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DoodadId extends _DoodadId {
  const _$_DoodadId(this.id) : super._();

  factory _$_DoodadId.fromJson(Map<String, dynamic> json) =>
      _$$_DoodadIdFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'DoodadId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoodadId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_DoodadIdCopyWith<_$_DoodadId> get copyWith =>
      __$$_DoodadIdCopyWithImpl<_$_DoodadId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoodadIdToJson(
      this,
    );
  }
}

abstract class _DoodadId extends DoodadId {
  const factory _DoodadId(final String id) = _$_DoodadId;
  const _DoodadId._() : super._();

  factory _DoodadId.fromJson(Map<String, dynamic> json) = _$_DoodadId.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_DoodadIdCopyWith<_$_DoodadId> get copyWith =>
      throw _privateConstructorUsedError;
}
