// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_attributes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StackInstanceTearOff {
  const _$StackInstanceTearOff();

  _StackInstance<StackTypeDefinition>
      call<StackTypeDefinition extends ItemProto>(
          {@HiveField(0) required StackTypeDefinition proto,
          @HiveField(1) required InstanceId instanceId,
          @HiveField(2) required int quantity}) {
    return _StackInstance<StackTypeDefinition>(
      proto: proto,
      instanceId: instanceId,
      quantity: quantity,
    );
  }
}

/// @nodoc
const $StackInstance = _$StackInstanceTearOff();

/// @nodoc
mixin _$StackInstance<StackTypeDefinition extends ItemProto> {
  @HiveField(0)
  StackTypeDefinition get proto => throw _privateConstructorUsedError;
  @HiveField(1)
  InstanceId get instanceId => throw _privateConstructorUsedError;
  @HiveField(2)
  int get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StackInstanceCopyWith<StackTypeDefinition,
          StackInstance<StackTypeDefinition>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StackInstanceCopyWith<StackTypeDefinition extends ItemProto,
    $Res> {
  factory $StackInstanceCopyWith(StackInstance<StackTypeDefinition> value,
          $Res Function(StackInstance<StackTypeDefinition>) then) =
      _$StackInstanceCopyWithImpl<StackTypeDefinition, $Res>;
  $Res call(
      {@HiveField(0) StackTypeDefinition proto,
      @HiveField(1) InstanceId instanceId,
      @HiveField(2) int quantity});
}

/// @nodoc
class _$StackInstanceCopyWithImpl<StackTypeDefinition extends ItemProto, $Res>
    implements $StackInstanceCopyWith<StackTypeDefinition, $Res> {
  _$StackInstanceCopyWithImpl(this._value, this._then);

  final StackInstance<StackTypeDefinition> _value;
  // ignore: unused_field
  final $Res Function(StackInstance<StackTypeDefinition>) _then;

  @override
  $Res call({
    Object? proto = freezed,
    Object? instanceId = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      proto: proto == freezed
          ? _value.proto
          : proto // ignore: cast_nullable_to_non_nullable
              as StackTypeDefinition,
      instanceId: instanceId == freezed
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as InstanceId,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$StackInstanceCopyWith<StackTypeDefinition extends ItemProto,
    $Res> implements $StackInstanceCopyWith<StackTypeDefinition, $Res> {
  factory _$StackInstanceCopyWith(_StackInstance<StackTypeDefinition> value,
          $Res Function(_StackInstance<StackTypeDefinition>) then) =
      __$StackInstanceCopyWithImpl<StackTypeDefinition, $Res>;
  @override
  $Res call(
      {@HiveField(0) StackTypeDefinition proto,
      @HiveField(1) InstanceId instanceId,
      @HiveField(2) int quantity});
}

/// @nodoc
class __$StackInstanceCopyWithImpl<StackTypeDefinition extends ItemProto, $Res>
    extends _$StackInstanceCopyWithImpl<StackTypeDefinition, $Res>
    implements _$StackInstanceCopyWith<StackTypeDefinition, $Res> {
  __$StackInstanceCopyWithImpl(_StackInstance<StackTypeDefinition> _value,
      $Res Function(_StackInstance<StackTypeDefinition>) _then)
      : super(_value, (v) => _then(v as _StackInstance<StackTypeDefinition>));

  @override
  _StackInstance<StackTypeDefinition> get _value =>
      super._value as _StackInstance<StackTypeDefinition>;

  @override
  $Res call({
    Object? proto = freezed,
    Object? instanceId = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_StackInstance<StackTypeDefinition>(
      proto: proto == freezed
          ? _value.proto
          : proto // ignore: cast_nullable_to_non_nullable
              as StackTypeDefinition,
      instanceId: instanceId == freezed
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as InstanceId,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 32, adapterName: 'MinerInstanceAdapter')
class _$_StackInstance<StackTypeDefinition extends ItemProto>
    extends _StackInstance<StackTypeDefinition> {
  const _$_StackInstance(
      {@HiveField(0) required this.proto,
      @HiveField(1) required this.instanceId,
      @HiveField(2) required this.quantity})
      : super._();

  @override
  @HiveField(0)
  final StackTypeDefinition proto;
  @override
  @HiveField(1)
  final InstanceId instanceId;
  @override
  @HiveField(2)
  final int quantity;

  @override
  String toString() {
    return 'StackInstance<$StackTypeDefinition>(proto: $proto, instanceId: $instanceId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StackInstance<StackTypeDefinition> &&
            const DeepCollectionEquality().equals(other.proto, proto) &&
            const DeepCollectionEquality()
                .equals(other.instanceId, instanceId) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(proto),
      const DeepCollectionEquality().hash(instanceId),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$StackInstanceCopyWith<StackTypeDefinition,
          _StackInstance<StackTypeDefinition>>
      get copyWith => __$StackInstanceCopyWithImpl<StackTypeDefinition,
          _StackInstance<StackTypeDefinition>>(this, _$identity);
}

abstract class _StackInstance<StackTypeDefinition extends ItemProto>
    extends StackInstance<StackTypeDefinition> {
  const factory _StackInstance(
          {@HiveField(0) required StackTypeDefinition proto,
          @HiveField(1) required InstanceId instanceId,
          @HiveField(2) required int quantity}) =
      _$_StackInstance<StackTypeDefinition>;
  const _StackInstance._() : super._();

  @override
  @HiveField(0)
  StackTypeDefinition get proto;
  @override
  @HiveField(1)
  InstanceId get instanceId;
  @override
  @HiveField(2)
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$StackInstanceCopyWith<StackTypeDefinition,
          _StackInstance<StackTypeDefinition>>
      get copyWith => throw _privateConstructorUsedError;
}
