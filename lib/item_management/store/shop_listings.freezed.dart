// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_listings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ItemStackShopListingTearOff {
  const _$ItemStackShopListingTearOff();

  _ItemStackShopListing call(
      {required ItemKey itemKey,
      required int quantity,
      required ItemContainer cost,
      bool consumable = true}) {
    return _ItemStackShopListing(
      itemKey: itemKey,
      quantity: quantity,
      cost: cost,
      consumable: consumable,
    );
  }
}

/// @nodoc
const $ItemStackShopListing = _$ItemStackShopListingTearOff();

/// @nodoc
mixin _$ItemStackShopListing {
  ItemKey get itemKey => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  ItemContainer get cost => throw _privateConstructorUsedError;
  bool get consumable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemStackShopListingCopyWith<ItemStackShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStackShopListingCopyWith<$Res> {
  factory $ItemStackShopListingCopyWith(ItemStackShopListing value,
          $Res Function(ItemStackShopListing) then) =
      _$ItemStackShopListingCopyWithImpl<$Res>;
  $Res call(
      {ItemKey itemKey, int quantity, ItemContainer cost, bool consumable});
}

/// @nodoc
class _$ItemStackShopListingCopyWithImpl<$Res>
    implements $ItemStackShopListingCopyWith<$Res> {
  _$ItemStackShopListingCopyWithImpl(this._value, this._then);

  final ItemStackShopListing _value;
  // ignore: unused_field
  final $Res Function(ItemStackShopListing) _then;

  @override
  $Res call({
    Object? itemKey = freezed,
    Object? quantity = freezed,
    Object? cost = freezed,
    Object? consumable = freezed,
  }) {
    return _then(_value.copyWith(
      itemKey: itemKey == freezed
          ? _value.itemKey
          : itemKey // ignore: cast_nullable_to_non_nullable
              as ItemKey,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ItemStackShopListingCopyWith<$Res>
    implements $ItemStackShopListingCopyWith<$Res> {
  factory _$ItemStackShopListingCopyWith(_ItemStackShopListing value,
          $Res Function(_ItemStackShopListing) then) =
      __$ItemStackShopListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemKey itemKey, int quantity, ItemContainer cost, bool consumable});
}

/// @nodoc
class __$ItemStackShopListingCopyWithImpl<$Res>
    extends _$ItemStackShopListingCopyWithImpl<$Res>
    implements _$ItemStackShopListingCopyWith<$Res> {
  __$ItemStackShopListingCopyWithImpl(
      _ItemStackShopListing _value, $Res Function(_ItemStackShopListing) _then)
      : super(_value, (v) => _then(v as _ItemStackShopListing));

  @override
  _ItemStackShopListing get _value => super._value as _ItemStackShopListing;

  @override
  $Res call({
    Object? itemKey = freezed,
    Object? quantity = freezed,
    Object? cost = freezed,
    Object? consumable = freezed,
  }) {
    return _then(_ItemStackShopListing(
      itemKey: itemKey == freezed
          ? _value.itemKey
          : itemKey // ignore: cast_nullable_to_non_nullable
              as ItemKey,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ItemStackShopListing extends _ItemStackShopListing {
  const _$_ItemStackShopListing(
      {required this.itemKey,
      required this.quantity,
      required this.cost,
      this.consumable = true})
      : super._();

  @override
  final ItemKey itemKey;
  @override
  final int quantity;
  @override
  final ItemContainer cost;
  @JsonKey()
  @override
  final bool consumable;

  @override
  String toString() {
    return 'ItemStackShopListing(itemKey: $itemKey, quantity: $quantity, cost: $cost, consumable: $consumable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemStackShopListing &&
            const DeepCollectionEquality().equals(other.itemKey, itemKey) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality()
                .equals(other.consumable, consumable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemKey),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(consumable));

  @JsonKey(ignore: true)
  @override
  _$ItemStackShopListingCopyWith<_ItemStackShopListing> get copyWith =>
      __$ItemStackShopListingCopyWithImpl<_ItemStackShopListing>(
          this, _$identity);
}

abstract class _ItemStackShopListing extends ItemStackShopListing {
  const factory _ItemStackShopListing(
      {required ItemKey itemKey,
      required int quantity,
      required ItemContainer cost,
      bool consumable}) = _$_ItemStackShopListing;
  const _ItemStackShopListing._() : super._();

  @override
  ItemKey get itemKey;
  @override
  int get quantity;
  @override
  ItemContainer get cost;
  @override
  bool get consumable;
  @override
  @JsonKey(ignore: true)
  _$ItemStackShopListingCopyWith<_ItemStackShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MinerShopListingTearOff {
  const _$MinerShopListingTearOff();

  _MinerShopListing call(
      {required MinerDefinition definition,
      required ItemContainer cost,
      bool consumable = true}) {
    return _MinerShopListing(
      definition: definition,
      cost: cost,
      consumable: consumable,
    );
  }
}

/// @nodoc
const $MinerShopListing = _$MinerShopListingTearOff();

/// @nodoc
mixin _$MinerShopListing {
  MinerDefinition get definition => throw _privateConstructorUsedError;
  ItemContainer get cost => throw _privateConstructorUsedError;
  bool get consumable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MinerShopListingCopyWith<MinerShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinerShopListingCopyWith<$Res> {
  factory $MinerShopListingCopyWith(
          MinerShopListing value, $Res Function(MinerShopListing) then) =
      _$MinerShopListingCopyWithImpl<$Res>;
  $Res call({MinerDefinition definition, ItemContainer cost, bool consumable});

  $MinerDefinitionCopyWith<$Res> get definition;
}

/// @nodoc
class _$MinerShopListingCopyWithImpl<$Res>
    implements $MinerShopListingCopyWith<$Res> {
  _$MinerShopListingCopyWithImpl(this._value, this._then);

  final MinerShopListing _value;
  // ignore: unused_field
  final $Res Function(MinerShopListing) _then;

  @override
  $Res call({
    Object? definition = freezed,
    Object? cost = freezed,
    Object? consumable = freezed,
  }) {
    return _then(_value.copyWith(
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as MinerDefinition,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $MinerDefinitionCopyWith<$Res> get definition {
    return $MinerDefinitionCopyWith<$Res>(_value.definition, (value) {
      return _then(_value.copyWith(definition: value));
    });
  }
}

/// @nodoc
abstract class _$MinerShopListingCopyWith<$Res>
    implements $MinerShopListingCopyWith<$Res> {
  factory _$MinerShopListingCopyWith(
          _MinerShopListing value, $Res Function(_MinerShopListing) then) =
      __$MinerShopListingCopyWithImpl<$Res>;
  @override
  $Res call({MinerDefinition definition, ItemContainer cost, bool consumable});

  @override
  $MinerDefinitionCopyWith<$Res> get definition;
}

/// @nodoc
class __$MinerShopListingCopyWithImpl<$Res>
    extends _$MinerShopListingCopyWithImpl<$Res>
    implements _$MinerShopListingCopyWith<$Res> {
  __$MinerShopListingCopyWithImpl(
      _MinerShopListing _value, $Res Function(_MinerShopListing) _then)
      : super(_value, (v) => _then(v as _MinerShopListing));

  @override
  _MinerShopListing get _value => super._value as _MinerShopListing;

  @override
  $Res call({
    Object? definition = freezed,
    Object? cost = freezed,
    Object? consumable = freezed,
  }) {
    return _then(_MinerShopListing(
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as MinerDefinition,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MinerShopListing implements _MinerShopListing {
  const _$_MinerShopListing(
      {required this.definition, required this.cost, this.consumable = true});

  @override
  final MinerDefinition definition;
  @override
  final ItemContainer cost;
  @JsonKey()
  @override
  final bool consumable;

  @override
  String toString() {
    return 'MinerShopListing(definition: $definition, cost: $cost, consumable: $consumable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MinerShopListing &&
            const DeepCollectionEquality()
                .equals(other.definition, definition) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality()
                .equals(other.consumable, consumable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(definition),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(consumable));

  @JsonKey(ignore: true)
  @override
  _$MinerShopListingCopyWith<_MinerShopListing> get copyWith =>
      __$MinerShopListingCopyWithImpl<_MinerShopListing>(this, _$identity);
}

abstract class _MinerShopListing implements MinerShopListing {
  const factory _MinerShopListing(
      {required MinerDefinition definition,
      required ItemContainer cost,
      bool consumable}) = _$_MinerShopListing;

  @override
  MinerDefinition get definition;
  @override
  ItemContainer get cost;
  @override
  bool get consumable;
  @override
  @JsonKey(ignore: true)
  _$MinerShopListingCopyWith<_MinerShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}
