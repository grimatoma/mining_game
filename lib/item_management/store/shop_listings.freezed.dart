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
class _$ItemProtoShopListingTearOff {
  const _$ItemProtoShopListingTearOff();

  _ItemProtoShopListing call(
      {required ItemId itemId, required ResourceContainer cost}) {
    return _ItemProtoShopListing(
      itemId: itemId,
      cost: cost,
    );
  }
}

/// @nodoc
const $ItemProtoShopListing = _$ItemProtoShopListingTearOff();

/// @nodoc
mixin _$ItemProtoShopListing {
  ItemId get itemId => throw _privateConstructorUsedError;
  ResourceContainer get cost => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemProtoShopListingCopyWith<ItemProtoShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemProtoShopListingCopyWith<$Res> {
  factory $ItemProtoShopListingCopyWith(ItemProtoShopListing value,
          $Res Function(ItemProtoShopListing) then) =
      _$ItemProtoShopListingCopyWithImpl<$Res>;
  $Res call({ItemId itemId, ResourceContainer cost});

  $ItemIdCopyWith<$Res> get itemId;
  $ResourceContainerCopyWith<$Res> get cost;
}

/// @nodoc
class _$ItemProtoShopListingCopyWithImpl<$Res>
    implements $ItemProtoShopListingCopyWith<$Res> {
  _$ItemProtoShopListingCopyWithImpl(this._value, this._then);

  final ItemProtoShopListing _value;
  // ignore: unused_field
  final $Res Function(ItemProtoShopListing) _then;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? cost = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemId,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ResourceContainer,
    ));
  }

  @override
  $ItemIdCopyWith<$Res> get itemId {
    return $ItemIdCopyWith<$Res>(_value.itemId, (value) {
      return _then(_value.copyWith(itemId: value));
    });
  }

  @override
  $ResourceContainerCopyWith<$Res> get cost {
    return $ResourceContainerCopyWith<$Res>(_value.cost, (value) {
      return _then(_value.copyWith(cost: value));
    });
  }
}

/// @nodoc
abstract class _$ItemProtoShopListingCopyWith<$Res>
    implements $ItemProtoShopListingCopyWith<$Res> {
  factory _$ItemProtoShopListingCopyWith(_ItemProtoShopListing value,
          $Res Function(_ItemProtoShopListing) then) =
      __$ItemProtoShopListingCopyWithImpl<$Res>;
  @override
  $Res call({ItemId itemId, ResourceContainer cost});

  @override
  $ItemIdCopyWith<$Res> get itemId;
  @override
  $ResourceContainerCopyWith<$Res> get cost;
}

/// @nodoc
class __$ItemProtoShopListingCopyWithImpl<$Res>
    extends _$ItemProtoShopListingCopyWithImpl<$Res>
    implements _$ItemProtoShopListingCopyWith<$Res> {
  __$ItemProtoShopListingCopyWithImpl(
      _ItemProtoShopListing _value, $Res Function(_ItemProtoShopListing) _then)
      : super(_value, (v) => _then(v as _ItemProtoShopListing));

  @override
  _ItemProtoShopListing get _value => super._value as _ItemProtoShopListing;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? cost = freezed,
  }) {
    return _then(_ItemProtoShopListing(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemId,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ResourceContainer,
    ));
  }
}

/// @nodoc

class _$_ItemProtoShopListing extends _ItemProtoShopListing {
  const _$_ItemProtoShopListing({required this.itemId, required this.cost})
      : super._();

  @override
  final ItemId itemId;
  @override
  final ResourceContainer cost;

  @override
  String toString() {
    return 'ItemProtoShopListing(itemId: $itemId, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemProtoShopListing &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.cost, cost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(cost));

  @JsonKey(ignore: true)
  @override
  _$ItemProtoShopListingCopyWith<_ItemProtoShopListing> get copyWith =>
      __$ItemProtoShopListingCopyWithImpl<_ItemProtoShopListing>(
          this, _$identity);
}

abstract class _ItemProtoShopListing extends ItemProtoShopListing {
  const factory _ItemProtoShopListing(
      {required ItemId itemId,
      required ResourceContainer cost}) = _$_ItemProtoShopListing;
  const _ItemProtoShopListing._() : super._();

  @override
  ItemId get itemId;
  @override
  ResourceContainer get cost;
  @override
  @JsonKey(ignore: true)
  _$ItemProtoShopListingCopyWith<_ItemProtoShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ItemStackShopListingTearOff {
  const _$ItemStackShopListingTearOff();

  _ItemStackShopListing call(
      {required StackableItemDefinition item,
      required int quantity,
      required ResourceContainer cost}) {
    return _ItemStackShopListing(
      item: item,
      quantity: quantity,
      cost: cost,
    );
  }
}

/// @nodoc
const $ItemStackShopListing = _$ItemStackShopListingTearOff();

/// @nodoc
mixin _$ItemStackShopListing {
  StackableItemDefinition get item => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  ResourceContainer get cost => throw _privateConstructorUsedError;

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
      {StackableItemDefinition item, int quantity, ResourceContainer cost});

  $ResourceContainerCopyWith<$Res> get cost;
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
    Object? item = freezed,
    Object? quantity = freezed,
    Object? cost = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as StackableItemDefinition,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ResourceContainer,
    ));
  }

  @override
  $ResourceContainerCopyWith<$Res> get cost {
    return $ResourceContainerCopyWith<$Res>(_value.cost, (value) {
      return _then(_value.copyWith(cost: value));
    });
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
      {StackableItemDefinition item, int quantity, ResourceContainer cost});

  @override
  $ResourceContainerCopyWith<$Res> get cost;
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
    Object? item = freezed,
    Object? quantity = freezed,
    Object? cost = freezed,
  }) {
    return _then(_ItemStackShopListing(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as StackableItemDefinition,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ResourceContainer,
    ));
  }
}

/// @nodoc

class _$_ItemStackShopListing extends _ItemStackShopListing {
  const _$_ItemStackShopListing(
      {required this.item, required this.quantity, required this.cost})
      : super._();

  @override
  final StackableItemDefinition item;
  @override
  final int quantity;
  @override
  final ResourceContainer cost;

  @override
  String toString() {
    return 'ItemStackShopListing(item: $item, quantity: $quantity, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemStackShopListing &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.cost, cost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(cost));

  @JsonKey(ignore: true)
  @override
  _$ItemStackShopListingCopyWith<_ItemStackShopListing> get copyWith =>
      __$ItemStackShopListingCopyWithImpl<_ItemStackShopListing>(
          this, _$identity);
}

abstract class _ItemStackShopListing extends ItemStackShopListing {
  const factory _ItemStackShopListing(
      {required StackableItemDefinition item,
      required int quantity,
      required ResourceContainer cost}) = _$_ItemStackShopListing;
  const _ItemStackShopListing._() : super._();

  @override
  StackableItemDefinition get item;
  @override
  int get quantity;
  @override
  ResourceContainer get cost;
  @override
  @JsonKey(ignore: true)
  _$ItemStackShopListingCopyWith<_ItemStackShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}
