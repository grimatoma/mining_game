// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inventory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InventoryTearOff {
  const _$InventoryTearOff();

  _Inventory call(int iron) {
    return _Inventory(
      iron,
    );
  }
}

/// @nodoc
const $Inventory = _$InventoryTearOff();

/// @nodoc
mixin _$Inventory {
  int get iron => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventoryCopyWith<Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryCopyWith<$Res> {
  factory $InventoryCopyWith(Inventory value, $Res Function(Inventory) then) =
      _$InventoryCopyWithImpl<$Res>;
  $Res call({int iron});
}

/// @nodoc
class _$InventoryCopyWithImpl<$Res> implements $InventoryCopyWith<$Res> {
  _$InventoryCopyWithImpl(this._value, this._then);

  final Inventory _value;
  // ignore: unused_field
  final $Res Function(Inventory) _then;

  @override
  $Res call({
    Object? iron = freezed,
  }) {
    return _then(_value.copyWith(
      iron: iron == freezed
          ? _value.iron
          : iron // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InventoryCopyWith<$Res> implements $InventoryCopyWith<$Res> {
  factory _$InventoryCopyWith(
          _Inventory value, $Res Function(_Inventory) then) =
      __$InventoryCopyWithImpl<$Res>;
  @override
  $Res call({int iron});
}

/// @nodoc
class __$InventoryCopyWithImpl<$Res> extends _$InventoryCopyWithImpl<$Res>
    implements _$InventoryCopyWith<$Res> {
  __$InventoryCopyWithImpl(_Inventory _value, $Res Function(_Inventory) _then)
      : super(_value, (v) => _then(v as _Inventory));

  @override
  _Inventory get _value => super._value as _Inventory;

  @override
  $Res call({
    Object? iron = freezed,
  }) {
    return _then(_Inventory(
      iron == freezed
          ? _value.iron
          : iron // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Inventory extends _Inventory {
  const _$_Inventory(this.iron) : super._();

  @override
  final int iron;

  @override
  String toString() {
    return 'Inventory(iron: $iron)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Inventory &&
            const DeepCollectionEquality().equals(other.iron, iron));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(iron));

  @JsonKey(ignore: true)
  @override
  _$InventoryCopyWith<_Inventory> get copyWith =>
      __$InventoryCopyWithImpl<_Inventory>(this, _$identity);
}

abstract class _Inventory extends Inventory {
  const factory _Inventory(int iron) = _$_Inventory;
  const _Inventory._() : super._();

  @override
  int get iron;
  @override
  @JsonKey(ignore: true)
  _$InventoryCopyWith<_Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}
