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

ShopListing _$ShopListingFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'buyItem':
      return BuyItemShopListing.fromJson(json);
    case 'sellItems':
      return SellItemsShopListing.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ShopListing',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ShopListingTearOff {
  const _$ShopListingTearOff();

  BuyItemShopListing buyItem(
      {required int id,
      required ItemRequirement price,
      bool consumable = true,
      required ItemInstanceGenerator generator}) {
    return BuyItemShopListing(
      id: id,
      price: price,
      consumable: consumable,
      generator: generator,
    );
  }

  SellItemsShopListing sellItems(
      {required int id,
      bool consumable = true,
      required ItemInstanceGenerator sellPrice,
      required ItemRequirement items}) {
    return SellItemsShopListing(
      id: id,
      consumable: consumable,
      sellPrice: sellPrice,
      items: items,
    );
  }

  ShopListing fromJson(Map<String, Object?> json) {
    return ShopListing.fromJson(json);
  }
}

/// @nodoc
const $ShopListing = _$ShopListingTearOff();

/// @nodoc
mixin _$ShopListing {
  int get id => throw _privateConstructorUsedError;
  bool get consumable => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ItemRequirement price, bool consumable,
            ItemInstanceGenerator generator)
        buyItem,
    required TResult Function(int id, bool consumable,
            ItemInstanceGenerator sellPrice, ItemRequirement items)
        sellItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, ItemRequirement price, bool consumable,
            ItemInstanceGenerator generator)?
        buyItem,
    TResult Function(int id, bool consumable, ItemInstanceGenerator sellPrice,
            ItemRequirement items)?
        sellItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ItemRequirement price, bool consumable,
            ItemInstanceGenerator generator)?
        buyItem,
    TResult Function(int id, bool consumable, ItemInstanceGenerator sellPrice,
            ItemRequirement items)?
        sellItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuyItemShopListing value) buyItem,
    required TResult Function(SellItemsShopListing value) sellItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BuyItemShopListing value)? buyItem,
    TResult Function(SellItemsShopListing value)? sellItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuyItemShopListing value)? buyItem,
    TResult Function(SellItemsShopListing value)? sellItems,
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
  $Res call({int id, bool consumable});
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
    Object? consumable = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $BuyItemShopListingCopyWith<$Res>
    implements $ShopListingCopyWith<$Res> {
  factory $BuyItemShopListingCopyWith(
          BuyItemShopListing value, $Res Function(BuyItemShopListing) then) =
      _$BuyItemShopListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      ItemRequirement price,
      bool consumable,
      ItemInstanceGenerator generator});
}

/// @nodoc
class _$BuyItemShopListingCopyWithImpl<$Res>
    extends _$ShopListingCopyWithImpl<$Res>
    implements $BuyItemShopListingCopyWith<$Res> {
  _$BuyItemShopListingCopyWithImpl(
      BuyItemShopListing _value, $Res Function(BuyItemShopListing) _then)
      : super(_value, (v) => _then(v as BuyItemShopListing));

  @override
  BuyItemShopListing get _value => super._value as BuyItemShopListing;

  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? consumable = freezed,
    Object? generator = freezed,
  }) {
    return _then(BuyItemShopListing(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as ItemRequirement,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
      generator: generator == freezed
          ? _value.generator
          : generator // ignore: cast_nullable_to_non_nullable
              as ItemInstanceGenerator,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<BuyShopListing>()
class _$BuyItemShopListing implements BuyItemShopListing {
  const _$BuyItemShopListing(
      {required this.id,
      required this.price,
      this.consumable = true,
      required this.generator,
      String? $type})
      : $type = $type ?? 'buyItem';

  factory _$BuyItemShopListing.fromJson(Map<String, dynamic> json) =>
      _$$BuyItemShopListingFromJson(json);

  @override
  final int id;
  @override
  final ItemRequirement price;
  @JsonKey()
  @override
  final bool consumable;
  @override
  final ItemInstanceGenerator generator;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShopListing.buyItem(id: $id, price: $price, consumable: $consumable, generator: $generator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BuyItemShopListing &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.consumable, consumable) &&
            const DeepCollectionEquality().equals(other.generator, generator));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(consumable),
      const DeepCollectionEquality().hash(generator));

  @JsonKey(ignore: true)
  @override
  $BuyItemShopListingCopyWith<BuyItemShopListing> get copyWith =>
      _$BuyItemShopListingCopyWithImpl<BuyItemShopListing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ItemRequirement price, bool consumable,
            ItemInstanceGenerator generator)
        buyItem,
    required TResult Function(int id, bool consumable,
            ItemInstanceGenerator sellPrice, ItemRequirement items)
        sellItems,
  }) {
    return buyItem(id, price, consumable, generator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, ItemRequirement price, bool consumable,
            ItemInstanceGenerator generator)?
        buyItem,
    TResult Function(int id, bool consumable, ItemInstanceGenerator sellPrice,
            ItemRequirement items)?
        sellItems,
  }) {
    return buyItem?.call(id, price, consumable, generator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ItemRequirement price, bool consumable,
            ItemInstanceGenerator generator)?
        buyItem,
    TResult Function(int id, bool consumable, ItemInstanceGenerator sellPrice,
            ItemRequirement items)?
        sellItems,
    required TResult orElse(),
  }) {
    if (buyItem != null) {
      return buyItem(id, price, consumable, generator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuyItemShopListing value) buyItem,
    required TResult Function(SellItemsShopListing value) sellItems,
  }) {
    return buyItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BuyItemShopListing value)? buyItem,
    TResult Function(SellItemsShopListing value)? sellItems,
  }) {
    return buyItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuyItemShopListing value)? buyItem,
    TResult Function(SellItemsShopListing value)? sellItems,
    required TResult orElse(),
  }) {
    if (buyItem != null) {
      return buyItem(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BuyItemShopListingToJson(this);
  }
}

abstract class BuyItemShopListing implements ShopListing, BuyShopListing {
  const factory BuyItemShopListing(
      {required int id,
      required ItemRequirement price,
      bool consumable,
      required ItemInstanceGenerator generator}) = _$BuyItemShopListing;

  factory BuyItemShopListing.fromJson(Map<String, dynamic> json) =
      _$BuyItemShopListing.fromJson;

  @override
  int get id;
  ItemRequirement get price;
  @override
  bool get consumable;
  ItemInstanceGenerator get generator;
  @override
  @JsonKey(ignore: true)
  $BuyItemShopListingCopyWith<BuyItemShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellItemsShopListingCopyWith<$Res>
    implements $ShopListingCopyWith<$Res> {
  factory $SellItemsShopListingCopyWith(SellItemsShopListing value,
          $Res Function(SellItemsShopListing) then) =
      _$SellItemsShopListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      bool consumable,
      ItemInstanceGenerator sellPrice,
      ItemRequirement items});
}

/// @nodoc
class _$SellItemsShopListingCopyWithImpl<$Res>
    extends _$ShopListingCopyWithImpl<$Res>
    implements $SellItemsShopListingCopyWith<$Res> {
  _$SellItemsShopListingCopyWithImpl(
      SellItemsShopListing _value, $Res Function(SellItemsShopListing) _then)
      : super(_value, (v) => _then(v as SellItemsShopListing));

  @override
  SellItemsShopListing get _value => super._value as SellItemsShopListing;

  @override
  $Res call({
    Object? id = freezed,
    Object? consumable = freezed,
    Object? sellPrice = freezed,
    Object? items = freezed,
  }) {
    return _then(SellItemsShopListing(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
      sellPrice: sellPrice == freezed
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as ItemInstanceGenerator,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ItemRequirement,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<SellShopListing>()
class _$SellItemsShopListing implements SellItemsShopListing {
  const _$SellItemsShopListing(
      {required this.id,
      this.consumable = true,
      required this.sellPrice,
      required this.items,
      String? $type})
      : $type = $type ?? 'sellItems';

  factory _$SellItemsShopListing.fromJson(Map<String, dynamic> json) =>
      _$$SellItemsShopListingFromJson(json);

  @override
  final int id;
  @JsonKey()
  @override
  final bool consumable;
  @override
  final ItemInstanceGenerator sellPrice;
  @override
  final ItemRequirement items;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShopListing.sellItems(id: $id, consumable: $consumable, sellPrice: $sellPrice, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SellItemsShopListing &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.consumable, consumable) &&
            const DeepCollectionEquality().equals(other.sellPrice, sellPrice) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(consumable),
      const DeepCollectionEquality().hash(sellPrice),
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  $SellItemsShopListingCopyWith<SellItemsShopListing> get copyWith =>
      _$SellItemsShopListingCopyWithImpl<SellItemsShopListing>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ItemRequirement price, bool consumable,
            ItemInstanceGenerator generator)
        buyItem,
    required TResult Function(int id, bool consumable,
            ItemInstanceGenerator sellPrice, ItemRequirement items)
        sellItems,
  }) {
    return sellItems(id, consumable, sellPrice, items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, ItemRequirement price, bool consumable,
            ItemInstanceGenerator generator)?
        buyItem,
    TResult Function(int id, bool consumable, ItemInstanceGenerator sellPrice,
            ItemRequirement items)?
        sellItems,
  }) {
    return sellItems?.call(id, consumable, sellPrice, items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ItemRequirement price, bool consumable,
            ItemInstanceGenerator generator)?
        buyItem,
    TResult Function(int id, bool consumable, ItemInstanceGenerator sellPrice,
            ItemRequirement items)?
        sellItems,
    required TResult orElse(),
  }) {
    if (sellItems != null) {
      return sellItems(id, consumable, sellPrice, items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuyItemShopListing value) buyItem,
    required TResult Function(SellItemsShopListing value) sellItems,
  }) {
    return sellItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BuyItemShopListing value)? buyItem,
    TResult Function(SellItemsShopListing value)? sellItems,
  }) {
    return sellItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuyItemShopListing value)? buyItem,
    TResult Function(SellItemsShopListing value)? sellItems,
    required TResult orElse(),
  }) {
    if (sellItems != null) {
      return sellItems(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SellItemsShopListingToJson(this);
  }
}

abstract class SellItemsShopListing implements ShopListing, SellShopListing {
  const factory SellItemsShopListing(
      {required int id,
      bool consumable,
      required ItemInstanceGenerator sellPrice,
      required ItemRequirement items}) = _$SellItemsShopListing;

  factory SellItemsShopListing.fromJson(Map<String, dynamic> json) =
      _$SellItemsShopListing.fromJson;

  @override
  int get id;
  @override
  bool get consumable;
  ItemInstanceGenerator get sellPrice;
  ItemRequirement get items;
  @override
  @JsonKey(ignore: true)
  $SellItemsShopListingCopyWith<SellItemsShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}
