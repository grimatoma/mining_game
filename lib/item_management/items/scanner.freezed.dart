// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scanner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScannerProtoTearOff {
  const _$ScannerProtoTearOff();

  _Scanner call(
      {required ItemId itemId,
      required String name,
      required String description,
      required int radius,
      required int depth}) {
    return _Scanner(
      itemId: itemId,
      name: name,
      description: description,
      radius: radius,
      depth: depth,
    );
  }
}

/// @nodoc
const $ScannerProto = _$ScannerProtoTearOff();

/// @nodoc
mixin _$ScannerProto {
  ItemId get itemId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get radius => throw _privateConstructorUsedError;
  int get depth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScannerProtoCopyWith<ScannerProto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannerProtoCopyWith<$Res> {
  factory $ScannerProtoCopyWith(
          ScannerProto value, $Res Function(ScannerProto) then) =
      _$ScannerProtoCopyWithImpl<$Res>;
  $Res call(
      {ItemId itemId, String name, String description, int radius, int depth});

  $ItemIdCopyWith<$Res> get itemId;
}

/// @nodoc
class _$ScannerProtoCopyWithImpl<$Res> implements $ScannerProtoCopyWith<$Res> {
  _$ScannerProtoCopyWithImpl(this._value, this._then);

  final ScannerProto _value;
  // ignore: unused_field
  final $Res Function(ScannerProto) _then;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? radius = freezed,
    Object? depth = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      depth: depth == freezed
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ItemIdCopyWith<$Res> get itemId {
    return $ItemIdCopyWith<$Res>(_value.itemId, (value) {
      return _then(_value.copyWith(itemId: value));
    });
  }
}

/// @nodoc
abstract class _$ScannerCopyWith<$Res> implements $ScannerProtoCopyWith<$Res> {
  factory _$ScannerCopyWith(_Scanner value, $Res Function(_Scanner) then) =
      __$ScannerCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemId itemId, String name, String description, int radius, int depth});

  @override
  $ItemIdCopyWith<$Res> get itemId;
}

/// @nodoc
class __$ScannerCopyWithImpl<$Res> extends _$ScannerProtoCopyWithImpl<$Res>
    implements _$ScannerCopyWith<$Res> {
  __$ScannerCopyWithImpl(_Scanner _value, $Res Function(_Scanner) _then)
      : super(_value, (v) => _then(v as _Scanner));

  @override
  _Scanner get _value => super._value as _Scanner;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? radius = freezed,
    Object? depth = freezed,
  }) {
    return _then(_Scanner(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      depth: depth == freezed
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Scanner extends _Scanner {
  const _$_Scanner(
      {required this.itemId,
      required this.name,
      required this.description,
      required this.radius,
      required this.depth})
      : super._();

  @override
  final ItemId itemId;
  @override
  final String name;
  @override
  final String description;
  @override
  final int radius;
  @override
  final int depth;

  @override
  String toString() {
    return 'ScannerProto(itemId: $itemId, name: $name, description: $description, radius: $radius, depth: $depth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Scanner &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.radius, radius) &&
            const DeepCollectionEquality().equals(other.depth, depth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(radius),
      const DeepCollectionEquality().hash(depth));

  @JsonKey(ignore: true)
  @override
  _$ScannerCopyWith<_Scanner> get copyWith =>
      __$ScannerCopyWithImpl<_Scanner>(this, _$identity);
}

abstract class _Scanner extends ScannerProto {
  const factory _Scanner(
      {required ItemId itemId,
      required String name,
      required String description,
      required int radius,
      required int depth}) = _$_Scanner;
  const _Scanner._() : super._();

  @override
  ItemId get itemId;
  @override
  String get name;
  @override
  String get description;
  @override
  int get radius;
  @override
  int get depth;
  @override
  @JsonKey(ignore: true)
  _$ScannerCopyWith<_Scanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ScannerInstanceTearOff {
  const _$ScannerInstanceTearOff();

  _ScannerInstance call(
      {required ScannerProto proto,
      @HiveField(1) required InstanceId instanceId}) {
    return _ScannerInstance(
      proto: proto,
      instanceId: instanceId,
    );
  }
}

/// @nodoc
const $ScannerInstance = _$ScannerInstanceTearOff();

/// @nodoc
mixin _$ScannerInstance {
  ScannerProto get proto => throw _privateConstructorUsedError;
  @HiveField(1)
  InstanceId get instanceId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScannerInstanceCopyWith<ScannerInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannerInstanceCopyWith<$Res> {
  factory $ScannerInstanceCopyWith(
          ScannerInstance value, $Res Function(ScannerInstance) then) =
      _$ScannerInstanceCopyWithImpl<$Res>;
  $Res call({ScannerProto proto, @HiveField(1) InstanceId instanceId});

  $ScannerProtoCopyWith<$Res> get proto;
}

/// @nodoc
class _$ScannerInstanceCopyWithImpl<$Res>
    implements $ScannerInstanceCopyWith<$Res> {
  _$ScannerInstanceCopyWithImpl(this._value, this._then);

  final ScannerInstance _value;
  // ignore: unused_field
  final $Res Function(ScannerInstance) _then;

  @override
  $Res call({
    Object? proto = freezed,
    Object? instanceId = freezed,
  }) {
    return _then(_value.copyWith(
      proto: proto == freezed
          ? _value.proto
          : proto // ignore: cast_nullable_to_non_nullable
              as ScannerProto,
      instanceId: instanceId == freezed
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as InstanceId,
    ));
  }

  @override
  $ScannerProtoCopyWith<$Res> get proto {
    return $ScannerProtoCopyWith<$Res>(_value.proto, (value) {
      return _then(_value.copyWith(proto: value));
    });
  }
}

/// @nodoc
abstract class _$ScannerInstanceCopyWith<$Res>
    implements $ScannerInstanceCopyWith<$Res> {
  factory _$ScannerInstanceCopyWith(
          _ScannerInstance value, $Res Function(_ScannerInstance) then) =
      __$ScannerInstanceCopyWithImpl<$Res>;
  @override
  $Res call({ScannerProto proto, @HiveField(1) InstanceId instanceId});

  @override
  $ScannerProtoCopyWith<$Res> get proto;
}

/// @nodoc
class __$ScannerInstanceCopyWithImpl<$Res>
    extends _$ScannerInstanceCopyWithImpl<$Res>
    implements _$ScannerInstanceCopyWith<$Res> {
  __$ScannerInstanceCopyWithImpl(
      _ScannerInstance _value, $Res Function(_ScannerInstance) _then)
      : super(_value, (v) => _then(v as _ScannerInstance));

  @override
  _ScannerInstance get _value => super._value as _ScannerInstance;

  @override
  $Res call({
    Object? proto = freezed,
    Object? instanceId = freezed,
  }) {
    return _then(_ScannerInstance(
      proto: proto == freezed
          ? _value.proto
          : proto // ignore: cast_nullable_to_non_nullable
              as ScannerProto,
      instanceId: instanceId == freezed
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as InstanceId,
    ));
  }
}

/// @nodoc

class _$_ScannerInstance implements _ScannerInstance {
  const _$_ScannerInstance(
      {required this.proto, @HiveField(1) required this.instanceId});

  @override
  final ScannerProto proto;
  @override
  @HiveField(1)
  final InstanceId instanceId;

  @override
  String toString() {
    return 'ScannerInstance(proto: $proto, instanceId: $instanceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScannerInstance &&
            const DeepCollectionEquality().equals(other.proto, proto) &&
            const DeepCollectionEquality()
                .equals(other.instanceId, instanceId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(proto),
      const DeepCollectionEquality().hash(instanceId));

  @JsonKey(ignore: true)
  @override
  _$ScannerInstanceCopyWith<_ScannerInstance> get copyWith =>
      __$ScannerInstanceCopyWithImpl<_ScannerInstance>(this, _$identity);
}

abstract class _ScannerInstance implements ScannerInstance {
  const factory _ScannerInstance(
      {required ScannerProto proto,
      @HiveField(1) required InstanceId instanceId}) = _$_ScannerInstance;

  @override
  ScannerProto get proto;
  @override
  @HiveField(1)
  InstanceId get instanceId;
  @override
  @JsonKey(ignore: true)
  _$ScannerInstanceCopyWith<_ScannerInstance> get copyWith =>
      throw _privateConstructorUsedError;
}
