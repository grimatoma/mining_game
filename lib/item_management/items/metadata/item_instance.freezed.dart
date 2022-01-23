// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_instance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InstanceIdTearOff {
  const _$InstanceIdTearOff();

  _InstanceId call(@HiveField(0) int id) {
    return _InstanceId(
      id,
    );
  }
}

/// @nodoc
const $InstanceId = _$InstanceIdTearOff();

/// @nodoc
mixin _$InstanceId {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InstanceIdCopyWith<InstanceId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstanceIdCopyWith<$Res> {
  factory $InstanceIdCopyWith(
          InstanceId value, $Res Function(InstanceId) then) =
      _$InstanceIdCopyWithImpl<$Res>;
  $Res call({@HiveField(0) int id});
}

/// @nodoc
class _$InstanceIdCopyWithImpl<$Res> implements $InstanceIdCopyWith<$Res> {
  _$InstanceIdCopyWithImpl(this._value, this._then);

  final InstanceId _value;
  // ignore: unused_field
  final $Res Function(InstanceId) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InstanceIdCopyWith<$Res> implements $InstanceIdCopyWith<$Res> {
  factory _$InstanceIdCopyWith(
          _InstanceId value, $Res Function(_InstanceId) then) =
      __$InstanceIdCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) int id});
}

/// @nodoc
class __$InstanceIdCopyWithImpl<$Res> extends _$InstanceIdCopyWithImpl<$Res>
    implements _$InstanceIdCopyWith<$Res> {
  __$InstanceIdCopyWithImpl(
      _InstanceId _value, $Res Function(_InstanceId) _then)
      : super(_value, (v) => _then(v as _InstanceId));

  @override
  _InstanceId get _value => super._value as _InstanceId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_InstanceId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 15, adapterName: 'InstanceIdAdapter')
class _$_InstanceId extends _InstanceId {
  const _$_InstanceId(@HiveField(0) this.id) : super._();

  @override
  @HiveField(0)
  final int id;

  @override
  String toString() {
    return 'InstanceId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InstanceId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$InstanceIdCopyWith<_InstanceId> get copyWith =>
      __$InstanceIdCopyWithImpl<_InstanceId>(this, _$identity);
}

abstract class _InstanceId extends InstanceId {
  const factory _InstanceId(@HiveField(0) int id) = _$_InstanceId;
  const _InstanceId._() : super._();

  @override
  @HiveField(0)
  int get id;
  @override
  @JsonKey(ignore: true)
  _$InstanceIdCopyWith<_InstanceId> get copyWith =>
      throw _privateConstructorUsedError;
}
