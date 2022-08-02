// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'instance_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemInstanceId _$ItemInstanceIdFromJson(Map<String, dynamic> json) {
  return _ItemInstanceId.fromJson(json);
}

/// @nodoc
mixin _$ItemInstanceId {
  String get guid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemInstanceIdCopyWith<ItemInstanceId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemInstanceIdCopyWith<$Res> {
  factory $ItemInstanceIdCopyWith(
          ItemInstanceId value, $Res Function(ItemInstanceId) then) =
      _$ItemInstanceIdCopyWithImpl<$Res>;
  $Res call({String guid});
}

/// @nodoc
class _$ItemInstanceIdCopyWithImpl<$Res>
    implements $ItemInstanceIdCopyWith<$Res> {
  _$ItemInstanceIdCopyWithImpl(this._value, this._then);

  final ItemInstanceId _value;
  // ignore: unused_field
  final $Res Function(ItemInstanceId) _then;

  @override
  $Res call({
    Object? guid = freezed,
  }) {
    return _then(_value.copyWith(
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemInstanceIdCopyWith<$Res>
    implements $ItemInstanceIdCopyWith<$Res> {
  factory _$$_ItemInstanceIdCopyWith(
          _$_ItemInstanceId value, $Res Function(_$_ItemInstanceId) then) =
      __$$_ItemInstanceIdCopyWithImpl<$Res>;
  @override
  $Res call({String guid});
}

/// @nodoc
class __$$_ItemInstanceIdCopyWithImpl<$Res>
    extends _$ItemInstanceIdCopyWithImpl<$Res>
    implements _$$_ItemInstanceIdCopyWith<$Res> {
  __$$_ItemInstanceIdCopyWithImpl(
      _$_ItemInstanceId _value, $Res Function(_$_ItemInstanceId) _then)
      : super(_value, (v) => _then(v as _$_ItemInstanceId));

  @override
  _$_ItemInstanceId get _value => super._value as _$_ItemInstanceId;

  @override
  $Res call({
    Object? guid = freezed,
  }) {
    return _then(_$_ItemInstanceId(
      guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemInstanceId implements _ItemInstanceId {
  _$_ItemInstanceId(this.guid);

  factory _$_ItemInstanceId.fromJson(Map<String, dynamic> json) =>
      _$$_ItemInstanceIdFromJson(json);

  @override
  final String guid;

  @override
  String toString() {
    return 'ItemInstanceId(guid: $guid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemInstanceId &&
            const DeepCollectionEquality().equals(other.guid, guid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(guid));

  @JsonKey(ignore: true)
  @override
  _$$_ItemInstanceIdCopyWith<_$_ItemInstanceId> get copyWith =>
      __$$_ItemInstanceIdCopyWithImpl<_$_ItemInstanceId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemInstanceIdToJson(this);
  }
}

abstract class _ItemInstanceId implements ItemInstanceId {
  factory _ItemInstanceId(final String guid) = _$_ItemInstanceId;

  factory _ItemInstanceId.fromJson(Map<String, dynamic> json) =
      _$_ItemInstanceId.fromJson;

  @override
  String get guid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ItemInstanceIdCopyWith<_$_ItemInstanceId> get copyWith =>
      throw _privateConstructorUsedError;
}
