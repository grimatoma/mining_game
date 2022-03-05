// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_listing_definitions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BuyItemStackShopListingTearOff {
  const _$BuyItemStackShopListingTearOff();

  _BuyItemStackShopListing call(
      {required ItemKey itemKey,
      required int quantity,
      required ItemContainer price,
      bool consumable = true}) {
    return _BuyItemStackShopListing(
      itemKey: itemKey,
      quantity: quantity,
      price: price,
      consumable: consumable,
    );
  }
}

/// @nodoc
const $BuyItemStackShopListing = _$BuyItemStackShopListingTearOff();

/// @nodoc
mixin _$BuyItemStackShopListing {
  ItemKey get itemKey => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  ItemContainer get price => throw _privateConstructorUsedError;
  bool get consumable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuyItemStackShopListingCopyWith<BuyItemStackShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyItemStackShopListingCopyWith<$Res> {
  factory $BuyItemStackShopListingCopyWith(BuyItemStackShopListing value,
          $Res Function(BuyItemStackShopListing) then) =
      _$BuyItemStackShopListingCopyWithImpl<$Res>;
  $Res call(
      {ItemKey itemKey, int quantity, ItemContainer price, bool consumable});
}

/// @nodoc
class _$BuyItemStackShopListingCopyWithImpl<$Res>
    implements $BuyItemStackShopListingCopyWith<$Res> {
  _$BuyItemStackShopListingCopyWithImpl(this._value, this._then);

  final BuyItemStackShopListing _value;
  // ignore: unused_field
  final $Res Function(BuyItemStackShopListing) _then;

  @override
  $Res call({
    Object? itemKey = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$BuyItemStackShopListingCopyWith<$Res>
    implements $BuyItemStackShopListingCopyWith<$Res> {
  factory _$BuyItemStackShopListingCopyWith(_BuyItemStackShopListing value,
          $Res Function(_BuyItemStackShopListing) then) =
      __$BuyItemStackShopListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemKey itemKey, int quantity, ItemContainer price, bool consumable});
}

/// @nodoc
class __$BuyItemStackShopListingCopyWithImpl<$Res>
    extends _$BuyItemStackShopListingCopyWithImpl<$Res>
    implements _$BuyItemStackShopListingCopyWith<$Res> {
  __$BuyItemStackShopListingCopyWithImpl(_BuyItemStackShopListing _value,
      $Res Function(_BuyItemStackShopListing) _then)
      : super(_value, (v) => _then(v as _BuyItemStackShopListing));

  @override
  _BuyItemStackShopListing get _value =>
      super._value as _BuyItemStackShopListing;

  @override
  $Res call({
    Object? itemKey = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? consumable = freezed,
  }) {
    return _then(_BuyItemStackShopListing(
      itemKey: itemKey == freezed
          ? _value.itemKey
          : itemKey // ignore: cast_nullable_to_non_nullable
              as ItemKey,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BuyItemStackShopListing extends _BuyItemStackShopListing {
  const _$_BuyItemStackShopListing(
      {required this.itemKey,
      required this.quantity,
      required this.price,
      this.consumable = true})
      : super._();

  @override
  final ItemKey itemKey;
  @override
  final int quantity;
  @override
  final ItemContainer price;
  @JsonKey()
  @override
  final bool consumable;

  @override
  String toString() {
    return 'BuyItemStackShopListing(itemKey: $itemKey, quantity: $quantity, price: $price, consumable: $consumable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BuyItemStackShopListing &&
            const DeepCollectionEquality().equals(other.itemKey, itemKey) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.consumable, consumable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemKey),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(consumable));

  @JsonKey(ignore: true)
  @override
  _$BuyItemStackShopListingCopyWith<_BuyItemStackShopListing> get copyWith =>
      __$BuyItemStackShopListingCopyWithImpl<_BuyItemStackShopListing>(
          this, _$identity);
}

abstract class _BuyItemStackShopListing extends BuyItemStackShopListing {
  const factory _BuyItemStackShopListing(
      {required ItemKey itemKey,
      required int quantity,
      required ItemContainer price,
      bool consumable}) = _$_BuyItemStackShopListing;
  const _BuyItemStackShopListing._() : super._();

  @override
  ItemKey get itemKey;
  @override
  int get quantity;
  @override
  ItemContainer get price;
  @override
  bool get consumable;
  @override
  @JsonKey(ignore: true)
  _$BuyItemStackShopListingCopyWith<_BuyItemStackShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BuyMinerShopListingTearOff {
  const _$BuyMinerShopListingTearOff();

  _BuyMinerShopListing call(
      {required MinerDefinition definition,
      required ItemContainer price,
      bool consumable = true}) {
    return _BuyMinerShopListing(
      definition: definition,
      price: price,
      consumable: consumable,
    );
  }
}

/// @nodoc
const $BuyMinerShopListing = _$BuyMinerShopListingTearOff();

/// @nodoc
mixin _$BuyMinerShopListing {
  MinerDefinition get definition => throw _privateConstructorUsedError;
  ItemContainer get price => throw _privateConstructorUsedError;
  bool get consumable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuyMinerShopListingCopyWith<BuyMinerShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyMinerShopListingCopyWith<$Res> {
  factory $BuyMinerShopListingCopyWith(
          BuyMinerShopListing value, $Res Function(BuyMinerShopListing) then) =
      _$BuyMinerShopListingCopyWithImpl<$Res>;
  $Res call({MinerDefinition definition, ItemContainer price, bool consumable});

  $MinerDefinitionCopyWith<$Res> get definition;
}

/// @nodoc
class _$BuyMinerShopListingCopyWithImpl<$Res>
    implements $BuyMinerShopListingCopyWith<$Res> {
  _$BuyMinerShopListingCopyWithImpl(this._value, this._then);

  final BuyMinerShopListing _value;
  // ignore: unused_field
  final $Res Function(BuyMinerShopListing) _then;

  @override
  $Res call({
    Object? definition = freezed,
    Object? price = freezed,
    Object? consumable = freezed,
  }) {
    return _then(_value.copyWith(
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as MinerDefinition,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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
abstract class _$BuyMinerShopListingCopyWith<$Res>
    implements $BuyMinerShopListingCopyWith<$Res> {
  factory _$BuyMinerShopListingCopyWith(_BuyMinerShopListing value,
          $Res Function(_BuyMinerShopListing) then) =
      __$BuyMinerShopListingCopyWithImpl<$Res>;
  @override
  $Res call({MinerDefinition definition, ItemContainer price, bool consumable});

  @override
  $MinerDefinitionCopyWith<$Res> get definition;
}

/// @nodoc
class __$BuyMinerShopListingCopyWithImpl<$Res>
    extends _$BuyMinerShopListingCopyWithImpl<$Res>
    implements _$BuyMinerShopListingCopyWith<$Res> {
  __$BuyMinerShopListingCopyWithImpl(
      _BuyMinerShopListing _value, $Res Function(_BuyMinerShopListing) _then)
      : super(_value, (v) => _then(v as _BuyMinerShopListing));

  @override
  _BuyMinerShopListing get _value => super._value as _BuyMinerShopListing;

  @override
  $Res call({
    Object? definition = freezed,
    Object? price = freezed,
    Object? consumable = freezed,
  }) {
    return _then(_BuyMinerShopListing(
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as MinerDefinition,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BuyMinerShopListing extends _BuyMinerShopListing {
  const _$_BuyMinerShopListing(
      {required this.definition, required this.price, this.consumable = true})
      : super._();

  @override
  final MinerDefinition definition;
  @override
  final ItemContainer price;
  @JsonKey()
  @override
  final bool consumable;

  @override
  String toString() {
    return 'BuyMinerShopListing(definition: $definition, price: $price, consumable: $consumable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BuyMinerShopListing &&
            const DeepCollectionEquality()
                .equals(other.definition, definition) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.consumable, consumable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(definition),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(consumable));

  @JsonKey(ignore: true)
  @override
  _$BuyMinerShopListingCopyWith<_BuyMinerShopListing> get copyWith =>
      __$BuyMinerShopListingCopyWithImpl<_BuyMinerShopListing>(
          this, _$identity);
}

abstract class _BuyMinerShopListing extends BuyMinerShopListing {
  const factory _BuyMinerShopListing(
      {required MinerDefinition definition,
      required ItemContainer price,
      bool consumable}) = _$_BuyMinerShopListing;
  const _BuyMinerShopListing._() : super._();

  @override
  MinerDefinition get definition;
  @override
  ItemContainer get price;
  @override
  bool get consumable;
  @override
  @JsonKey(ignore: true)
  _$BuyMinerShopListingCopyWith<_BuyMinerShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}
