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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopListing _$ShopListingFromJson(Map<String, dynamic> json) {
  return ItemShopListing.fromJson(json);
}

/// @nodoc
mixin _$ShopListing {
  int get id => throw _privateConstructorUsedError;
  ItemRequirement get cost => throw _privateConstructorUsedError;
  ItemInstanceGenerator get item => throw _privateConstructorUsedError;
  bool get consumable => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ItemRequirement cost,
            ItemInstanceGenerator item, bool consumable)
        itemListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, ItemRequirement cost, ItemInstanceGenerator item,
            bool consumable)?
        itemListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ItemRequirement cost, ItemInstanceGenerator item,
            bool consumable)?
        itemListing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemShopListing value) itemListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemShopListing value)? itemListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemShopListing value)? itemListing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopListingCopyWith<ShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopListingCopyWith<$Res> {
  factory $ShopListingCopyWith(
          ShopListing value, $Res Function(ShopListing) then) =
      _$ShopListingCopyWithImpl<$Res>;
  $Res call(
      {int id,
      ItemRequirement cost,
      ItemInstanceGenerator item,
      bool consumable});
}

/// @nodoc
class _$ShopListingCopyWithImpl<$Res> implements $ShopListingCopyWith<$Res> {
  _$ShopListingCopyWithImpl(this._value, this._then);

  final ShopListing _value;
  // ignore: unused_field
  final $Res Function(ShopListing) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cost = freezed,
    Object? item = freezed,
    Object? consumable = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemRequirement,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemInstanceGenerator,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$ItemShopListingCopyWith<$Res>
    implements $ShopListingCopyWith<$Res> {
  factory _$$ItemShopListingCopyWith(
          _$ItemShopListing value, $Res Function(_$ItemShopListing) then) =
      __$$ItemShopListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      ItemRequirement cost,
      ItemInstanceGenerator item,
      bool consumable});
}

/// @nodoc
class __$$ItemShopListingCopyWithImpl<$Res>
    extends _$ShopListingCopyWithImpl<$Res>
    implements _$$ItemShopListingCopyWith<$Res> {
  __$$ItemShopListingCopyWithImpl(
      _$ItemShopListing _value, $Res Function(_$ItemShopListing) _then)
      : super(_value, (v) => _then(v as _$ItemShopListing));

  @override
  _$ItemShopListing get _value => super._value as _$ItemShopListing;

  @override
  $Res call({
    Object? id = freezed,
    Object? cost = freezed,
    Object? item = freezed,
    Object? consumable = freezed,
  }) {
    return _then(_$ItemShopListing(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemRequirement,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemInstanceGenerator,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemShopListing implements ItemShopListing {
  const _$ItemShopListing(
      {required this.id,
      required this.cost,
      required this.item,
      this.consumable = true});

  factory _$ItemShopListing.fromJson(Map<String, dynamic> json) =>
      _$$ItemShopListingFromJson(json);

  @override
  final int id;
  @override
  final ItemRequirement cost;
  @override
  final ItemInstanceGenerator item;
  @override
  @JsonKey()
  final bool consumable;

  @override
  String toString() {
    return 'ShopListing.itemListing(id: $id, cost: $cost, item: $item, consumable: $consumable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemShopListing &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality()
                .equals(other.consumable, consumable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(consumable));

  @JsonKey(ignore: true)
  @override
  _$$ItemShopListingCopyWith<_$ItemShopListing> get copyWith =>
      __$$ItemShopListingCopyWithImpl<_$ItemShopListing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ItemRequirement cost,
            ItemInstanceGenerator item, bool consumable)
        itemListing,
  }) {
    return itemListing(id, cost, item, consumable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, ItemRequirement cost, ItemInstanceGenerator item,
            bool consumable)?
        itemListing,
  }) {
    return itemListing?.call(id, cost, item, consumable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ItemRequirement cost, ItemInstanceGenerator item,
            bool consumable)?
        itemListing,
    required TResult orElse(),
  }) {
    if (itemListing != null) {
      return itemListing(id, cost, item, consumable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemShopListing value) itemListing,
  }) {
    return itemListing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemShopListing value)? itemListing,
  }) {
    return itemListing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemShopListing value)? itemListing,
    required TResult orElse(),
  }) {
    if (itemListing != null) {
      return itemListing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemShopListingToJson(this);
  }
}

abstract class ItemShopListing implements ShopListing {
  const factory ItemShopListing(
      {required final int id,
      required final ItemRequirement cost,
      required final ItemInstanceGenerator item,
      final bool consumable}) = _$ItemShopListing;

  factory ItemShopListing.fromJson(Map<String, dynamic> json) =
      _$ItemShopListing.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  ItemRequirement get cost => throw _privateConstructorUsedError;
  @override
  ItemInstanceGenerator get item => throw _privateConstructorUsedError;
  @override
  bool get consumable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ItemShopListingCopyWith<_$ItemShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}
