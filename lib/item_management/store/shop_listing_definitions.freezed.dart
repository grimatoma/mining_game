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
    case 'buyItemStack':
      return BuyItemStackShopListing.fromJson(json);
    case 'buyMiner':
      return BuyMinerShopListing.fromJson(json);
    case 'sell':
      return SellItemShopListing.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ShopListing',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ShopListingTearOff {
  const _$ShopListingTearOff();

  BuyItemStackShopListing buyItemStack(
      {required int id,
      BuyingShopListingType type = BuyingShopListingType.ITEM_STACK,
      required ItemContainer price,
      bool consumable = true,
      required ItemId itemId,
      required int quantity}) {
    return BuyItemStackShopListing(
      id: id,
      type: type,
      price: price,
      consumable: consumable,
      itemId: itemId,
      quantity: quantity,
    );
  }

  BuyMinerShopListing buyMiner(
      {required int id,
      BuyingShopListingType type = BuyingShopListingType.MINER,
      required ItemContainer price,
      bool consumable = true,
      required MinerDefinitionId minerId}) {
    return BuyMinerShopListing(
      id: id,
      type: type,
      price: price,
      consumable: consumable,
      minerId: minerId,
    );
  }

  SellItemShopListing sell(
      {required int id,
      bool consumable = true,
      required ItemContainer sellPrice,
      required ItemContainer items}) {
    return SellItemShopListing(
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
    required TResult Function(int id, BuyingShopListingType type,
            ItemContainer price, bool consumable, ItemId itemId, int quantity)
        buyItemStack,
    required TResult Function(int id, BuyingShopListingType type,
            ItemContainer price, bool consumable, MinerDefinitionId minerId)
        buyMiner,
    required TResult Function(int id, bool consumable, ItemContainer sellPrice,
            ItemContainer items)
        sell,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, ItemId itemId, int quantity)?
        buyItemStack,
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, MinerDefinitionId minerId)?
        buyMiner,
    TResult Function(int id, bool consumable, ItemContainer sellPrice,
            ItemContainer items)?
        sell,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, ItemId itemId, int quantity)?
        buyItemStack,
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, MinerDefinitionId minerId)?
        buyMiner,
    TResult Function(int id, bool consumable, ItemContainer sellPrice,
            ItemContainer items)?
        sell,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuyItemStackShopListing value) buyItemStack,
    required TResult Function(BuyMinerShopListing value) buyMiner,
    required TResult Function(SellItemShopListing value) sell,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BuyItemStackShopListing value)? buyItemStack,
    TResult Function(BuyMinerShopListing value)? buyMiner,
    TResult Function(SellItemShopListing value)? sell,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuyItemStackShopListing value)? buyItemStack,
    TResult Function(BuyMinerShopListing value)? buyMiner,
    TResult Function(SellItemShopListing value)? sell,
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
abstract class $BuyItemStackShopListingCopyWith<$Res>
    implements $ShopListingCopyWith<$Res> {
  factory $BuyItemStackShopListingCopyWith(BuyItemStackShopListing value,
          $Res Function(BuyItemStackShopListing) then) =
      _$BuyItemStackShopListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      BuyingShopListingType type,
      ItemContainer price,
      bool consumable,
      ItemId itemId,
      int quantity});

  $ItemIdCopyWith<$Res> get itemId;
}

/// @nodoc
class _$BuyItemStackShopListingCopyWithImpl<$Res>
    extends _$ShopListingCopyWithImpl<$Res>
    implements $BuyItemStackShopListingCopyWith<$Res> {
  _$BuyItemStackShopListingCopyWithImpl(BuyItemStackShopListing _value,
      $Res Function(BuyItemStackShopListing) _then)
      : super(_value, (v) => _then(v as BuyItemStackShopListing));

  @override
  BuyItemStackShopListing get _value => super._value as BuyItemStackShopListing;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? price = freezed,
    Object? consumable = freezed,
    Object? itemId = freezed,
    Object? quantity = freezed,
  }) {
    return _then(BuyItemStackShopListing(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BuyingShopListingType,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemId,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
@Implements<BuyShopListing>()
class _$BuyItemStackShopListing implements BuyItemStackShopListing {
  const _$BuyItemStackShopListing(
      {required this.id,
      this.type = BuyingShopListingType.ITEM_STACK,
      required this.price,
      this.consumable = true,
      required this.itemId,
      required this.quantity,
      String? $type})
      : $type = $type ?? 'buyItemStack';

  factory _$BuyItemStackShopListing.fromJson(Map<String, dynamic> json) =>
      _$$BuyItemStackShopListingFromJson(json);

  @override
  final int id;
  @JsonKey()
  @override
  final BuyingShopListingType type;
  @override
  final ItemContainer price;
  @JsonKey()
  @override
  final bool consumable;
  @override
  final ItemId itemId;
  @override
  final int quantity;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShopListing.buyItemStack(id: $id, type: $type, price: $price, consumable: $consumable, itemId: $itemId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BuyItemStackShopListing &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.consumable, consumable) &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(consumable),
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  $BuyItemStackShopListingCopyWith<BuyItemStackShopListing> get copyWith =>
      _$BuyItemStackShopListingCopyWithImpl<BuyItemStackShopListing>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, BuyingShopListingType type,
            ItemContainer price, bool consumable, ItemId itemId, int quantity)
        buyItemStack,
    required TResult Function(int id, BuyingShopListingType type,
            ItemContainer price, bool consumable, MinerDefinitionId minerId)
        buyMiner,
    required TResult Function(int id, bool consumable, ItemContainer sellPrice,
            ItemContainer items)
        sell,
  }) {
    return buyItemStack(id, type, price, consumable, itemId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, ItemId itemId, int quantity)?
        buyItemStack,
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, MinerDefinitionId minerId)?
        buyMiner,
    TResult Function(int id, bool consumable, ItemContainer sellPrice,
            ItemContainer items)?
        sell,
  }) {
    return buyItemStack?.call(id, type, price, consumable, itemId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, ItemId itemId, int quantity)?
        buyItemStack,
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, MinerDefinitionId minerId)?
        buyMiner,
    TResult Function(int id, bool consumable, ItemContainer sellPrice,
            ItemContainer items)?
        sell,
    required TResult orElse(),
  }) {
    if (buyItemStack != null) {
      return buyItemStack(id, type, price, consumable, itemId, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuyItemStackShopListing value) buyItemStack,
    required TResult Function(BuyMinerShopListing value) buyMiner,
    required TResult Function(SellItemShopListing value) sell,
  }) {
    return buyItemStack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BuyItemStackShopListing value)? buyItemStack,
    TResult Function(BuyMinerShopListing value)? buyMiner,
    TResult Function(SellItemShopListing value)? sell,
  }) {
    return buyItemStack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuyItemStackShopListing value)? buyItemStack,
    TResult Function(BuyMinerShopListing value)? buyMiner,
    TResult Function(SellItemShopListing value)? sell,
    required TResult orElse(),
  }) {
    if (buyItemStack != null) {
      return buyItemStack(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BuyItemStackShopListingToJson(this);
  }
}

abstract class BuyItemStackShopListing implements ShopListing, BuyShopListing {
  const factory BuyItemStackShopListing(
      {required int id,
      BuyingShopListingType type,
      required ItemContainer price,
      bool consumable,
      required ItemId itemId,
      required int quantity}) = _$BuyItemStackShopListing;

  factory BuyItemStackShopListing.fromJson(Map<String, dynamic> json) =
      _$BuyItemStackShopListing.fromJson;

  @override
  int get id;
  BuyingShopListingType get type;
  ItemContainer get price;
  @override
  bool get consumable;
  ItemId get itemId;
  int get quantity;
  @override
  @JsonKey(ignore: true)
  $BuyItemStackShopListingCopyWith<BuyItemStackShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyMinerShopListingCopyWith<$Res>
    implements $ShopListingCopyWith<$Res> {
  factory $BuyMinerShopListingCopyWith(
          BuyMinerShopListing value, $Res Function(BuyMinerShopListing) then) =
      _$BuyMinerShopListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      BuyingShopListingType type,
      ItemContainer price,
      bool consumable,
      MinerDefinitionId minerId});

  $MinerDefinitionIdCopyWith<$Res> get minerId;
}

/// @nodoc
class _$BuyMinerShopListingCopyWithImpl<$Res>
    extends _$ShopListingCopyWithImpl<$Res>
    implements $BuyMinerShopListingCopyWith<$Res> {
  _$BuyMinerShopListingCopyWithImpl(
      BuyMinerShopListing _value, $Res Function(BuyMinerShopListing) _then)
      : super(_value, (v) => _then(v as BuyMinerShopListing));

  @override
  BuyMinerShopListing get _value => super._value as BuyMinerShopListing;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? price = freezed,
    Object? consumable = freezed,
    Object? minerId = freezed,
  }) {
    return _then(BuyMinerShopListing(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BuyingShopListingType,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
      minerId: minerId == freezed
          ? _value.minerId
          : minerId // ignore: cast_nullable_to_non_nullable
              as MinerDefinitionId,
    ));
  }

  @override
  $MinerDefinitionIdCopyWith<$Res> get minerId {
    return $MinerDefinitionIdCopyWith<$Res>(_value.minerId, (value) {
      return _then(_value.copyWith(minerId: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@Implements<BuyShopListing>()
class _$BuyMinerShopListing implements BuyMinerShopListing {
  const _$BuyMinerShopListing(
      {required this.id,
      this.type = BuyingShopListingType.MINER,
      required this.price,
      this.consumable = true,
      required this.minerId,
      String? $type})
      : $type = $type ?? 'buyMiner';

  factory _$BuyMinerShopListing.fromJson(Map<String, dynamic> json) =>
      _$$BuyMinerShopListingFromJson(json);

  @override
  final int id;
  @JsonKey()
  @override
  final BuyingShopListingType type;
  @override
  final ItemContainer price;
  @JsonKey()
  @override
  final bool consumable;
  @override
  final MinerDefinitionId minerId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShopListing.buyMiner(id: $id, type: $type, price: $price, consumable: $consumable, minerId: $minerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BuyMinerShopListing &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.consumable, consumable) &&
            const DeepCollectionEquality().equals(other.minerId, minerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(consumable),
      const DeepCollectionEquality().hash(minerId));

  @JsonKey(ignore: true)
  @override
  $BuyMinerShopListingCopyWith<BuyMinerShopListing> get copyWith =>
      _$BuyMinerShopListingCopyWithImpl<BuyMinerShopListing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, BuyingShopListingType type,
            ItemContainer price, bool consumable, ItemId itemId, int quantity)
        buyItemStack,
    required TResult Function(int id, BuyingShopListingType type,
            ItemContainer price, bool consumable, MinerDefinitionId minerId)
        buyMiner,
    required TResult Function(int id, bool consumable, ItemContainer sellPrice,
            ItemContainer items)
        sell,
  }) {
    return buyMiner(id, type, price, consumable, minerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, ItemId itemId, int quantity)?
        buyItemStack,
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, MinerDefinitionId minerId)?
        buyMiner,
    TResult Function(int id, bool consumable, ItemContainer sellPrice,
            ItemContainer items)?
        sell,
  }) {
    return buyMiner?.call(id, type, price, consumable, minerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, ItemId itemId, int quantity)?
        buyItemStack,
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, MinerDefinitionId minerId)?
        buyMiner,
    TResult Function(int id, bool consumable, ItemContainer sellPrice,
            ItemContainer items)?
        sell,
    required TResult orElse(),
  }) {
    if (buyMiner != null) {
      return buyMiner(id, type, price, consumable, minerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuyItemStackShopListing value) buyItemStack,
    required TResult Function(BuyMinerShopListing value) buyMiner,
    required TResult Function(SellItemShopListing value) sell,
  }) {
    return buyMiner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BuyItemStackShopListing value)? buyItemStack,
    TResult Function(BuyMinerShopListing value)? buyMiner,
    TResult Function(SellItemShopListing value)? sell,
  }) {
    return buyMiner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuyItemStackShopListing value)? buyItemStack,
    TResult Function(BuyMinerShopListing value)? buyMiner,
    TResult Function(SellItemShopListing value)? sell,
    required TResult orElse(),
  }) {
    if (buyMiner != null) {
      return buyMiner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BuyMinerShopListingToJson(this);
  }
}

abstract class BuyMinerShopListing implements ShopListing, BuyShopListing {
  const factory BuyMinerShopListing(
      {required int id,
      BuyingShopListingType type,
      required ItemContainer price,
      bool consumable,
      required MinerDefinitionId minerId}) = _$BuyMinerShopListing;

  factory BuyMinerShopListing.fromJson(Map<String, dynamic> json) =
      _$BuyMinerShopListing.fromJson;

  @override
  int get id;
  BuyingShopListingType get type;
  ItemContainer get price;
  @override
  bool get consumable;
  MinerDefinitionId get minerId;
  @override
  @JsonKey(ignore: true)
  $BuyMinerShopListingCopyWith<BuyMinerShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellItemShopListingCopyWith<$Res>
    implements $ShopListingCopyWith<$Res> {
  factory $SellItemShopListingCopyWith(
          SellItemShopListing value, $Res Function(SellItemShopListing) then) =
      _$SellItemShopListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, bool consumable, ItemContainer sellPrice, ItemContainer items});
}

/// @nodoc
class _$SellItemShopListingCopyWithImpl<$Res>
    extends _$ShopListingCopyWithImpl<$Res>
    implements $SellItemShopListingCopyWith<$Res> {
  _$SellItemShopListingCopyWithImpl(
      SellItemShopListing _value, $Res Function(SellItemShopListing) _then)
      : super(_value, (v) => _then(v as SellItemShopListing));

  @override
  SellItemShopListing get _value => super._value as SellItemShopListing;

  @override
  $Res call({
    Object? id = freezed,
    Object? consumable = freezed,
    Object? sellPrice = freezed,
    Object? items = freezed,
  }) {
    return _then(SellItemShopListing(
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
              as ItemContainer,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<SellShopListing>()
class _$SellItemShopListing implements SellItemShopListing {
  const _$SellItemShopListing(
      {required this.id,
      this.consumable = true,
      required this.sellPrice,
      required this.items,
      String? $type})
      : $type = $type ?? 'sell';

  factory _$SellItemShopListing.fromJson(Map<String, dynamic> json) =>
      _$$SellItemShopListingFromJson(json);

  @override
  final int id;
  @JsonKey()
  @override
  final bool consumable;
  @override
  final ItemContainer sellPrice;
  @override
  final ItemContainer items;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShopListing.sell(id: $id, consumable: $consumable, sellPrice: $sellPrice, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SellItemShopListing &&
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
  $SellItemShopListingCopyWith<SellItemShopListing> get copyWith =>
      _$SellItemShopListingCopyWithImpl<SellItemShopListing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, BuyingShopListingType type,
            ItemContainer price, bool consumable, ItemId itemId, int quantity)
        buyItemStack,
    required TResult Function(int id, BuyingShopListingType type,
            ItemContainer price, bool consumable, MinerDefinitionId minerId)
        buyMiner,
    required TResult Function(int id, bool consumable, ItemContainer sellPrice,
            ItemContainer items)
        sell,
  }) {
    return sell(id, consumable, sellPrice, items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, ItemId itemId, int quantity)?
        buyItemStack,
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, MinerDefinitionId minerId)?
        buyMiner,
    TResult Function(int id, bool consumable, ItemContainer sellPrice,
            ItemContainer items)?
        sell,
  }) {
    return sell?.call(id, consumable, sellPrice, items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, ItemId itemId, int quantity)?
        buyItemStack,
    TResult Function(int id, BuyingShopListingType type, ItemContainer price,
            bool consumable, MinerDefinitionId minerId)?
        buyMiner,
    TResult Function(int id, bool consumable, ItemContainer sellPrice,
            ItemContainer items)?
        sell,
    required TResult orElse(),
  }) {
    if (sell != null) {
      return sell(id, consumable, sellPrice, items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BuyItemStackShopListing value) buyItemStack,
    required TResult Function(BuyMinerShopListing value) buyMiner,
    required TResult Function(SellItemShopListing value) sell,
  }) {
    return sell(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BuyItemStackShopListing value)? buyItemStack,
    TResult Function(BuyMinerShopListing value)? buyMiner,
    TResult Function(SellItemShopListing value)? sell,
  }) {
    return sell?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BuyItemStackShopListing value)? buyItemStack,
    TResult Function(BuyMinerShopListing value)? buyMiner,
    TResult Function(SellItemShopListing value)? sell,
    required TResult orElse(),
  }) {
    if (sell != null) {
      return sell(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SellItemShopListingToJson(this);
  }
}

abstract class SellItemShopListing implements ShopListing, SellShopListing {
  const factory SellItemShopListing(
      {required int id,
      bool consumable,
      required ItemContainer sellPrice,
      required ItemContainer items}) = _$SellItemShopListing;

  factory SellItemShopListing.fromJson(Map<String, dynamic> json) =
      _$SellItemShopListing.fromJson;

  @override
  int get id;
  @override
  bool get consumable;
  ItemContainer get sellPrice;
  ItemContainer get items;
  @override
  @JsonKey(ignore: true)
  $SellItemShopListingCopyWith<SellItemShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}
