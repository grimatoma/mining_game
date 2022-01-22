// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_database.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TestIdTearOff {
  const _$TestIdTearOff();

  _TestId call(@HiveField(1) int id, @HiveField(2) TestInnerId name) {
    return _TestId(
      id,
      name,
    );
  }
}

/// @nodoc
const $TestId = _$TestIdTearOff();

/// @nodoc
mixin _$TestId {
  @HiveField(1)
  int get id => throw _privateConstructorUsedError;
  @HiveField(2)
  TestInnerId get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestIdCopyWith<TestId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestIdCopyWith<$Res> {
  factory $TestIdCopyWith(TestId value, $Res Function(TestId) then) =
      _$TestIdCopyWithImpl<$Res>;
  $Res call({@HiveField(1) int id, @HiveField(2) TestInnerId name});

  $TestInnerIdCopyWith<$Res> get name;
}

/// @nodoc
class _$TestIdCopyWithImpl<$Res> implements $TestIdCopyWith<$Res> {
  _$TestIdCopyWithImpl(this._value, this._then);

  final TestId _value;
  // ignore: unused_field
  final $Res Function(TestId) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TestInnerId,
    ));
  }

  @override
  $TestInnerIdCopyWith<$Res> get name {
    return $TestInnerIdCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc
abstract class _$TestIdCopyWith<$Res> implements $TestIdCopyWith<$Res> {
  factory _$TestIdCopyWith(_TestId value, $Res Function(_TestId) then) =
      __$TestIdCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(1) int id, @HiveField(2) TestInnerId name});

  @override
  $TestInnerIdCopyWith<$Res> get name;
}

/// @nodoc
class __$TestIdCopyWithImpl<$Res> extends _$TestIdCopyWithImpl<$Res>
    implements _$TestIdCopyWith<$Res> {
  __$TestIdCopyWithImpl(_TestId _value, $Res Function(_TestId) _then)
      : super(_value, (v) => _then(v as _TestId));

  @override
  _TestId get _value => super._value as _TestId;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_TestId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as TestInnerId,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 11, adapterName: 'TestIdAdapter')
class _$_TestId implements _TestId {
  const _$_TestId(@HiveField(1) this.id, @HiveField(2) this.name);

  @override
  @HiveField(1)
  final int id;
  @override
  @HiveField(2)
  final TestInnerId name;

  @override
  String toString() {
    return 'TestId(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestId &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$TestIdCopyWith<_TestId> get copyWith =>
      __$TestIdCopyWithImpl<_TestId>(this, _$identity);
}

abstract class _TestId implements TestId {
  const factory _TestId(@HiveField(1) int id, @HiveField(2) TestInnerId name) =
      _$_TestId;

  @override
  @HiveField(1)
  int get id;
  @override
  @HiveField(2)
  TestInnerId get name;
  @override
  @JsonKey(ignore: true)
  _$TestIdCopyWith<_TestId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TestInnerIdTearOff {
  const _$TestInnerIdTearOff();

  _TestInnerId call(@HiveField(1) String name) {
    return _TestInnerId(
      name,
    );
  }
}

/// @nodoc
const $TestInnerId = _$TestInnerIdTearOff();

/// @nodoc
mixin _$TestInnerId {
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestInnerIdCopyWith<TestInnerId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestInnerIdCopyWith<$Res> {
  factory $TestInnerIdCopyWith(
          TestInnerId value, $Res Function(TestInnerId) then) =
      _$TestInnerIdCopyWithImpl<$Res>;
  $Res call({@HiveField(1) String name});
}

/// @nodoc
class _$TestInnerIdCopyWithImpl<$Res> implements $TestInnerIdCopyWith<$Res> {
  _$TestInnerIdCopyWithImpl(this._value, this._then);

  final TestInnerId _value;
  // ignore: unused_field
  final $Res Function(TestInnerId) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TestInnerIdCopyWith<$Res>
    implements $TestInnerIdCopyWith<$Res> {
  factory _$TestInnerIdCopyWith(
          _TestInnerId value, $Res Function(_TestInnerId) then) =
      __$TestInnerIdCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(1) String name});
}

/// @nodoc
class __$TestInnerIdCopyWithImpl<$Res> extends _$TestInnerIdCopyWithImpl<$Res>
    implements _$TestInnerIdCopyWith<$Res> {
  __$TestInnerIdCopyWithImpl(
      _TestInnerId _value, $Res Function(_TestInnerId) _then)
      : super(_value, (v) => _then(v as _TestInnerId));

  @override
  _TestInnerId get _value => super._value as _TestInnerId;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_TestInnerId(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 12, adapterName: 'TestInnerIdAdapter')
class _$_TestInnerId implements _TestInnerId {
  const _$_TestInnerId(@HiveField(1) this.name);

  @override
  @HiveField(1)
  final String name;

  @override
  String toString() {
    return 'TestInnerId(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TestInnerId &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$TestInnerIdCopyWith<_TestInnerId> get copyWith =>
      __$TestInnerIdCopyWithImpl<_TestInnerId>(this, _$identity);
}

abstract class _TestInnerId implements TestInnerId {
  const factory _TestInnerId(@HiveField(1) String name) = _$_TestInnerId;

  @override
  @HiveField(1)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$TestInnerIdCopyWith<_TestInnerId> get copyWith =>
      throw _privateConstructorUsedError;
}
