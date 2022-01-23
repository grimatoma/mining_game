// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DrillProtoTearOff {
  const _$DrillProtoTearOff();

  _DrillProto call(
      {required ItemId itemId,
      required String name,
      required String description,
      required int baseDamage}) {
    return _DrillProto(
      itemId: itemId,
      name: name,
      description: description,
      baseDamage: baseDamage,
    );
  }
}

/// @nodoc
const $DrillProto = _$DrillProtoTearOff();

/// @nodoc
mixin _$DrillProto {
  ItemId get itemId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get baseDamage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrillProtoCopyWith<DrillProto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrillProtoCopyWith<$Res> {
  factory $DrillProtoCopyWith(
          DrillProto value, $Res Function(DrillProto) then) =
      _$DrillProtoCopyWithImpl<$Res>;
  $Res call({ItemId itemId, String name, String description, int baseDamage});

  $ItemIdCopyWith<$Res> get itemId;
}

/// @nodoc
class _$DrillProtoCopyWithImpl<$Res> implements $DrillProtoCopyWith<$Res> {
  _$DrillProtoCopyWithImpl(this._value, this._then);

  final DrillProto _value;
  // ignore: unused_field
  final $Res Function(DrillProto) _then;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? baseDamage = freezed,
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
      baseDamage: baseDamage == freezed
          ? _value.baseDamage
          : baseDamage // ignore: cast_nullable_to_non_nullable
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
abstract class _$DrillProtoCopyWith<$Res> implements $DrillProtoCopyWith<$Res> {
  factory _$DrillProtoCopyWith(
          _DrillProto value, $Res Function(_DrillProto) then) =
      __$DrillProtoCopyWithImpl<$Res>;
  @override
  $Res call({ItemId itemId, String name, String description, int baseDamage});

  @override
  $ItemIdCopyWith<$Res> get itemId;
}

/// @nodoc
class __$DrillProtoCopyWithImpl<$Res> extends _$DrillProtoCopyWithImpl<$Res>
    implements _$DrillProtoCopyWith<$Res> {
  __$DrillProtoCopyWithImpl(
      _DrillProto _value, $Res Function(_DrillProto) _then)
      : super(_value, (v) => _then(v as _DrillProto));

  @override
  _DrillProto get _value => super._value as _DrillProto;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? baseDamage = freezed,
  }) {
    return _then(_DrillProto(
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
      baseDamage: baseDamage == freezed
          ? _value.baseDamage
          : baseDamage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DrillProto extends _DrillProto {
  const _$_DrillProto(
      {required this.itemId,
      required this.name,
      required this.description,
      required this.baseDamage})
      : super._();

  @override
  final ItemId itemId;
  @override
  final String name;
  @override
  final String description;
  @override
  final int baseDamage;

  @override
  String toString() {
    return 'DrillProto(itemId: $itemId, name: $name, description: $description, baseDamage: $baseDamage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DrillProto &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.baseDamage, baseDamage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(baseDamage));

  @JsonKey(ignore: true)
  @override
  _$DrillProtoCopyWith<_DrillProto> get copyWith =>
      __$DrillProtoCopyWithImpl<_DrillProto>(this, _$identity);
}

abstract class _DrillProto extends DrillProto {
  const factory _DrillProto(
      {required ItemId itemId,
      required String name,
      required String description,
      required int baseDamage}) = _$_DrillProto;
  const _DrillProto._() : super._();

  @override
  ItemId get itemId;
  @override
  String get name;
  @override
  String get description;
  @override
  int get baseDamage;
  @override
  @JsonKey(ignore: true)
  _$DrillProtoCopyWith<_DrillProto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DrillInstanceTearOff {
  const _$DrillInstanceTearOff();

  _DrillInstance call(
      {required DrillProto proto,
      @HiveField(1) required InstanceId instanceId}) {
    return _DrillInstance(
      proto: proto,
      instanceId: instanceId,
    );
  }
}

/// @nodoc
const $DrillInstance = _$DrillInstanceTearOff();

/// @nodoc
mixin _$DrillInstance {
  DrillProto get proto => throw _privateConstructorUsedError;
  @HiveField(1)
  InstanceId get instanceId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrillInstanceCopyWith<DrillInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrillInstanceCopyWith<$Res> {
  factory $DrillInstanceCopyWith(
          DrillInstance value, $Res Function(DrillInstance) then) =
      _$DrillInstanceCopyWithImpl<$Res>;
  $Res call({DrillProto proto, @HiveField(1) InstanceId instanceId});

  $DrillProtoCopyWith<$Res> get proto;
  $InstanceIdCopyWith<$Res> get instanceId;
}

/// @nodoc
class _$DrillInstanceCopyWithImpl<$Res>
    implements $DrillInstanceCopyWith<$Res> {
  _$DrillInstanceCopyWithImpl(this._value, this._then);

  final DrillInstance _value;
  // ignore: unused_field
  final $Res Function(DrillInstance) _then;

  @override
  $Res call({
    Object? proto = freezed,
    Object? instanceId = freezed,
  }) {
    return _then(_value.copyWith(
      proto: proto == freezed
          ? _value.proto
          : proto // ignore: cast_nullable_to_non_nullable
              as DrillProto,
      instanceId: instanceId == freezed
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as InstanceId,
    ));
  }

  @override
  $DrillProtoCopyWith<$Res> get proto {
    return $DrillProtoCopyWith<$Res>(_value.proto, (value) {
      return _then(_value.copyWith(proto: value));
    });
  }

  @override
  $InstanceIdCopyWith<$Res> get instanceId {
    return $InstanceIdCopyWith<$Res>(_value.instanceId, (value) {
      return _then(_value.copyWith(instanceId: value));
    });
  }
}

/// @nodoc
abstract class _$DrillInstanceCopyWith<$Res>
    implements $DrillInstanceCopyWith<$Res> {
  factory _$DrillInstanceCopyWith(
          _DrillInstance value, $Res Function(_DrillInstance) then) =
      __$DrillInstanceCopyWithImpl<$Res>;
  @override
  $Res call({DrillProto proto, @HiveField(1) InstanceId instanceId});

  @override
  $DrillProtoCopyWith<$Res> get proto;
  @override
  $InstanceIdCopyWith<$Res> get instanceId;
}

/// @nodoc
class __$DrillInstanceCopyWithImpl<$Res>
    extends _$DrillInstanceCopyWithImpl<$Res>
    implements _$DrillInstanceCopyWith<$Res> {
  __$DrillInstanceCopyWithImpl(
      _DrillInstance _value, $Res Function(_DrillInstance) _then)
      : super(_value, (v) => _then(v as _DrillInstance));

  @override
  _DrillInstance get _value => super._value as _DrillInstance;

  @override
  $Res call({
    Object? proto = freezed,
    Object? instanceId = freezed,
  }) {
    return _then(_DrillInstance(
      proto: proto == freezed
          ? _value.proto
          : proto // ignore: cast_nullable_to_non_nullable
              as DrillProto,
      instanceId: instanceId == freezed
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as InstanceId,
    ));
  }
}

/// @nodoc

class _$_DrillInstance implements _DrillInstance {
  const _$_DrillInstance(
      {required this.proto, @HiveField(1) required this.instanceId});

  @override
  final DrillProto proto;
  @override
  @HiveField(1)
  final InstanceId instanceId;

  @override
  String toString() {
    return 'DrillInstance(proto: $proto, instanceId: $instanceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DrillInstance &&
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
  _$DrillInstanceCopyWith<_DrillInstance> get copyWith =>
      __$DrillInstanceCopyWithImpl<_DrillInstance>(this, _$identity);
}

abstract class _DrillInstance implements DrillInstance {
  const factory _DrillInstance(
      {required DrillProto proto,
      @HiveField(1) required InstanceId instanceId}) = _$_DrillInstance;

  @override
  DrillProto get proto;
  @override
  @HiveField(1)
  InstanceId get instanceId;
  @override
  @JsonKey(ignore: true)
  _$DrillInstanceCopyWith<_DrillInstance> get copyWith =>
      throw _privateConstructorUsedError;
}
