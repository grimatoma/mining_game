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
  switch (json['runtimeType']) {
    case 'itemListing':
      return ItemShopListing.fromJson(json);
    case 'doodadListing':
      return DoodadShopListing.fromJson(json);
    case 'featureListing':
      return FeatureShopListing.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ShopListing',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ShopListing {
  int get id => throw _privateConstructorUsedError;
  ItemContainer get cost => throw _privateConstructorUsedError;
  bool get consumable => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ItemContainer cost, ItemDefinitionId item,
            bool consumable, int quantity)
        itemListing,
    required TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures, bool consumable)
        doodadListing,
    required TResult Function(int id, ItemContainer cost, Feature feature,
            Set<Feature>? requiredFeatures, bool consumable)
        featureListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemDefinitionId item,
            bool consumable, int quantity)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures, bool consumable)?
        doodadListing,
    TResult Function(int id, ItemContainer cost, Feature feature,
            Set<Feature>? requiredFeatures, bool consumable)?
        featureListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemDefinitionId item,
            bool consumable, int quantity)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures, bool consumable)?
        doodadListing,
    TResult Function(int id, ItemContainer cost, Feature feature,
            Set<Feature>? requiredFeatures, bool consumable)?
        featureListing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemShopListing value) itemListing,
    required TResult Function(DoodadShopListing value) doodadListing,
    required TResult Function(FeatureShopListing value) featureListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemShopListing value)? itemListing,
    TResult Function(DoodadShopListing value)? doodadListing,
    TResult Function(FeatureShopListing value)? featureListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemShopListing value)? itemListing,
    TResult Function(DoodadShopListing value)? doodadListing,
    TResult Function(FeatureShopListing value)? featureListing,
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
  $Res call({int id, ItemContainer cost, bool consumable});

  $ItemContainerCopyWith<$Res> get cost;
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
              as ItemContainer,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ItemContainerCopyWith<$Res> get cost {
    return $ItemContainerCopyWith<$Res>(_value.cost, (value) {
      return _then(_value.copyWith(cost: value));
    });
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
      ItemContainer cost,
      ItemDefinitionId item,
      bool consumable,
      int quantity});

  @override
  $ItemContainerCopyWith<$Res> get cost;
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
    Object? quantity = freezed,
  }) {
    return _then(_$ItemShopListing(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
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
      this.consumable = true,
      this.quantity = 1,
      final String? $type})
      : $type = $type ?? 'itemListing';

  factory _$ItemShopListing.fromJson(Map<String, dynamic> json) =>
      _$$ItemShopListingFromJson(json);

  @override
  final int id;
  @override
  final ItemContainer cost;
  @override
  final ItemDefinitionId item;
  @override
  @JsonKey()
  final bool consumable;
  @override
  @JsonKey()
  final int quantity;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShopListing.itemListing(id: $id, cost: $cost, item: $item, consumable: $consumable, quantity: $quantity)';
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
                .equals(other.consumable, consumable) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(consumable),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$ItemShopListingCopyWith<_$ItemShopListing> get copyWith =>
      __$$ItemShopListingCopyWithImpl<_$ItemShopListing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ItemContainer cost, ItemDefinitionId item,
            bool consumable, int quantity)
        itemListing,
    required TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures, bool consumable)
        doodadListing,
    required TResult Function(int id, ItemContainer cost, Feature feature,
            Set<Feature>? requiredFeatures, bool consumable)
        featureListing,
  }) {
    return itemListing(id, cost, item, consumable, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemDefinitionId item,
            bool consumable, int quantity)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures, bool consumable)?
        doodadListing,
    TResult Function(int id, ItemContainer cost, Feature feature,
            Set<Feature>? requiredFeatures, bool consumable)?
        featureListing,
  }) {
    return itemListing?.call(id, cost, item, consumable, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemDefinitionId item,
            bool consumable, int quantity)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures, bool consumable)?
        doodadListing,
    TResult Function(int id, ItemContainer cost, Feature feature,
            Set<Feature>? requiredFeatures, bool consumable)?
        featureListing,
    required TResult orElse(),
  }) {
    if (itemListing != null) {
      return itemListing(id, cost, item, consumable, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemShopListing value) itemListing,
    required TResult Function(DoodadShopListing value) doodadListing,
    required TResult Function(FeatureShopListing value) featureListing,
  }) {
    return itemListing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemShopListing value)? itemListing,
    TResult Function(DoodadShopListing value)? doodadListing,
    TResult Function(FeatureShopListing value)? featureListing,
  }) {
    return itemListing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemShopListing value)? itemListing,
    TResult Function(DoodadShopListing value)? doodadListing,
    TResult Function(FeatureShopListing value)? featureListing,
    required TResult orElse(),
  }) {
    if (itemListing != null) {
      return itemListing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemShopListingToJson(
      this,
    );
  }
}

abstract class ItemShopListing implements ShopListing {
  const factory ItemShopListing(
      {required final int id,
      required final ItemContainer cost,
      required final ItemDefinitionId item,
      final bool consumable,
      final int quantity}) = _$ItemShopListing;

  factory ItemShopListing.fromJson(Map<String, dynamic> json) =
      _$ItemShopListing.fromJson;

  @override
  int get id;
  @override
  ItemContainer get cost;
  ItemDefinitionId get item;
  @override
  bool get consumable;
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$ItemShopListingCopyWith<_$ItemShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoodadShopListingCopyWith<$Res>
    implements $ShopListingCopyWith<$Res> {
  factory _$$DoodadShopListingCopyWith(
          _$DoodadShopListing value, $Res Function(_$DoodadShopListing) then) =
      __$$DoodadShopListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      ItemContainer cost,
      DoodadId doodadId,
      Set<Feature>? requiredFeatures,
      bool consumable});

  @override
  $ItemContainerCopyWith<$Res> get cost;
  $DoodadIdCopyWith<$Res> get doodadId;
}

/// @nodoc
class __$$DoodadShopListingCopyWithImpl<$Res>
    extends _$ShopListingCopyWithImpl<$Res>
    implements _$$DoodadShopListingCopyWith<$Res> {
  __$$DoodadShopListingCopyWithImpl(
      _$DoodadShopListing _value, $Res Function(_$DoodadShopListing) _then)
      : super(_value, (v) => _then(v as _$DoodadShopListing));

  @override
  _$DoodadShopListing get _value => super._value as _$DoodadShopListing;

  @override
  $Res call({
    Object? id = freezed,
    Object? cost = freezed,
    Object? doodadId = freezed,
    Object? requiredFeatures = freezed,
    Object? consumable = freezed,
  }) {
    return _then(_$DoodadShopListing(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      doodadId: doodadId == freezed
          ? _value.doodadId
          : doodadId // ignore: cast_nullable_to_non_nullable
              as DoodadId,
      requiredFeatures: requiredFeatures == freezed
          ? _value._requiredFeatures
          : requiredFeatures // ignore: cast_nullable_to_non_nullable
              as Set<Feature>?,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $DoodadIdCopyWith<$Res> get doodadId {
    return $DoodadIdCopyWith<$Res>(_value.doodadId, (value) {
      return _then(_value.copyWith(doodadId: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DoodadShopListing implements DoodadShopListing {
  const _$DoodadShopListing(
      {required this.id,
      required this.cost,
      required this.doodadId,
      final Set<Feature>? requiredFeatures,
      this.consumable = true,
      final String? $type})
      : _requiredFeatures = requiredFeatures,
        $type = $type ?? 'doodadListing';

  factory _$DoodadShopListing.fromJson(Map<String, dynamic> json) =>
      _$$DoodadShopListingFromJson(json);

  @override
  final int id;
  @override
  final ItemContainer cost;
  @override
  final DoodadId doodadId;
  final Set<Feature>? _requiredFeatures;
  @override
  Set<Feature>? get requiredFeatures {
    final value = _requiredFeatures;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  @JsonKey()
  final bool consumable;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShopListing.doodadListing(id: $id, cost: $cost, doodadId: $doodadId, requiredFeatures: $requiredFeatures, consumable: $consumable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoodadShopListing &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.doodadId, doodadId) &&
            const DeepCollectionEquality()
                .equals(other._requiredFeatures, _requiredFeatures) &&
            const DeepCollectionEquality()
                .equals(other.consumable, consumable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(doodadId),
      const DeepCollectionEquality().hash(_requiredFeatures),
      const DeepCollectionEquality().hash(consumable));

  @JsonKey(ignore: true)
  @override
  _$$DoodadShopListingCopyWith<_$DoodadShopListing> get copyWith =>
      __$$DoodadShopListingCopyWithImpl<_$DoodadShopListing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ItemContainer cost, ItemDefinitionId item,
            bool consumable, int quantity)
        itemListing,
    required TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures, bool consumable)
        doodadListing,
    required TResult Function(int id, ItemContainer cost, Feature feature,
            Set<Feature>? requiredFeatures, bool consumable)
        featureListing,
  }) {
    return doodadListing(id, cost, doodadId, requiredFeatures, consumable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemDefinitionId item,
            bool consumable, int quantity)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures, bool consumable)?
        doodadListing,
    TResult Function(int id, ItemContainer cost, Feature feature,
            Set<Feature>? requiredFeatures, bool consumable)?
        featureListing,
  }) {
    return doodadListing?.call(
        id, cost, doodadId, requiredFeatures, consumable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemDefinitionId item,
            bool consumable, int quantity)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures, bool consumable)?
        doodadListing,
    TResult Function(int id, ItemContainer cost, Feature feature,
            Set<Feature>? requiredFeatures, bool consumable)?
        featureListing,
    required TResult orElse(),
  }) {
    if (doodadListing != null) {
      return doodadListing(id, cost, doodadId, requiredFeatures, consumable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemShopListing value) itemListing,
    required TResult Function(DoodadShopListing value) doodadListing,
    required TResult Function(FeatureShopListing value) featureListing,
  }) {
    return doodadListing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemShopListing value)? itemListing,
    TResult Function(DoodadShopListing value)? doodadListing,
    TResult Function(FeatureShopListing value)? featureListing,
  }) {
    return doodadListing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemShopListing value)? itemListing,
    TResult Function(DoodadShopListing value)? doodadListing,
    TResult Function(FeatureShopListing value)? featureListing,
    required TResult orElse(),
  }) {
    if (doodadListing != null) {
      return doodadListing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DoodadShopListingToJson(
      this,
    );
  }
}

abstract class DoodadShopListing implements ShopListing {
  const factory DoodadShopListing(
      {required final int id,
      required final ItemContainer cost,
      required final DoodadId doodadId,
      final Set<Feature>? requiredFeatures,
      final bool consumable}) = _$DoodadShopListing;

  factory DoodadShopListing.fromJson(Map<String, dynamic> json) =
      _$DoodadShopListing.fromJson;

  @override
  int get id;
  @override
  ItemContainer get cost;
  DoodadId get doodadId;
  Set<Feature>? get requiredFeatures;
  @override
  bool get consumable;
  @override
  @JsonKey(ignore: true)
  _$$DoodadShopListingCopyWith<_$DoodadShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeatureShopListingCopyWith<$Res>
    implements $ShopListingCopyWith<$Res> {
  factory _$$FeatureShopListingCopyWith(_$FeatureShopListing value,
          $Res Function(_$FeatureShopListing) then) =
      __$$FeatureShopListingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      ItemContainer cost,
      Feature feature,
      Set<Feature>? requiredFeatures,
      bool consumable});

  @override
  $ItemContainerCopyWith<$Res> get cost;
}

/// @nodoc
class __$$FeatureShopListingCopyWithImpl<$Res>
    extends _$ShopListingCopyWithImpl<$Res>
    implements _$$FeatureShopListingCopyWith<$Res> {
  __$$FeatureShopListingCopyWithImpl(
      _$FeatureShopListing _value, $Res Function(_$FeatureShopListing) _then)
      : super(_value, (v) => _then(v as _$FeatureShopListing));

  @override
  _$FeatureShopListing get _value => super._value as _$FeatureShopListing;

  @override
  $Res call({
    Object? id = freezed,
    Object? cost = freezed,
    Object? feature = freezed,
    Object? requiredFeatures = freezed,
    Object? consumable = freezed,
  }) {
    return _then(_$FeatureShopListing(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      feature: feature == freezed
          ? _value.feature
          : feature // ignore: cast_nullable_to_non_nullable
              as Feature,
      requiredFeatures: requiredFeatures == freezed
          ? _value._requiredFeatures
          : requiredFeatures // ignore: cast_nullable_to_non_nullable
              as Set<Feature>?,
      consumable: consumable == freezed
          ? _value.consumable
          : consumable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeatureShopListing implements FeatureShopListing {
  const _$FeatureShopListing(
      {required this.id,
      required this.cost,
      required this.feature,
      final Set<Feature>? requiredFeatures,
      this.consumable = true,
      final String? $type})
      : _requiredFeatures = requiredFeatures,
        $type = $type ?? 'featureListing';

  factory _$FeatureShopListing.fromJson(Map<String, dynamic> json) =>
      _$$FeatureShopListingFromJson(json);

  @override
  final int id;
  @override
  final ItemContainer cost;
  @override
  final Feature feature;
  final Set<Feature>? _requiredFeatures;
  @override
  Set<Feature>? get requiredFeatures {
    final value = _requiredFeatures;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  @JsonKey()
  final bool consumable;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ShopListing.featureListing(id: $id, cost: $cost, feature: $feature, requiredFeatures: $requiredFeatures, consumable: $consumable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeatureShopListing &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.feature, feature) &&
            const DeepCollectionEquality()
                .equals(other._requiredFeatures, _requiredFeatures) &&
            const DeepCollectionEquality()
                .equals(other.consumable, consumable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(feature),
      const DeepCollectionEquality().hash(_requiredFeatures),
      const DeepCollectionEquality().hash(consumable));

  @JsonKey(ignore: true)
  @override
  _$$FeatureShopListingCopyWith<_$FeatureShopListing> get copyWith =>
      __$$FeatureShopListingCopyWithImpl<_$FeatureShopListing>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ItemContainer cost, ItemDefinitionId item,
            bool consumable, int quantity)
        itemListing,
    required TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures, bool consumable)
        doodadListing,
    required TResult Function(int id, ItemContainer cost, Feature feature,
            Set<Feature>? requiredFeatures, bool consumable)
        featureListing,
  }) {
    return featureListing(id, cost, feature, requiredFeatures, consumable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemDefinitionId item,
            bool consumable, int quantity)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures, bool consumable)?
        doodadListing,
    TResult Function(int id, ItemContainer cost, Feature feature,
            Set<Feature>? requiredFeatures, bool consumable)?
        featureListing,
  }) {
    return featureListing?.call(
        id, cost, feature, requiredFeatures, consumable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemDefinitionId item,
            bool consumable, int quantity)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures, bool consumable)?
        doodadListing,
    TResult Function(int id, ItemContainer cost, Feature feature,
            Set<Feature>? requiredFeatures, bool consumable)?
        featureListing,
    required TResult orElse(),
  }) {
    if (featureListing != null) {
      return featureListing(id, cost, feature, requiredFeatures, consumable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemShopListing value) itemListing,
    required TResult Function(DoodadShopListing value) doodadListing,
    required TResult Function(FeatureShopListing value) featureListing,
  }) {
    return featureListing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemShopListing value)? itemListing,
    TResult Function(DoodadShopListing value)? doodadListing,
    TResult Function(FeatureShopListing value)? featureListing,
  }) {
    return featureListing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemShopListing value)? itemListing,
    TResult Function(DoodadShopListing value)? doodadListing,
    TResult Function(FeatureShopListing value)? featureListing,
    required TResult orElse(),
  }) {
    if (featureListing != null) {
      return featureListing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FeatureShopListingToJson(
      this,
    );
  }
}

abstract class FeatureShopListing implements ShopListing {
  const factory FeatureShopListing(
      {required final int id,
      required final ItemContainer cost,
      required final Feature feature,
      final Set<Feature>? requiredFeatures,
      final bool consumable}) = _$FeatureShopListing;

  factory FeatureShopListing.fromJson(Map<String, dynamic> json) =
      _$FeatureShopListing.fromJson;

  @override
  int get id;
  @override
  ItemContainer get cost;
  Feature get feature;
  Set<Feature>? get requiredFeatures;
  @override
  bool get consumable;
  @override
  @JsonKey(ignore: true)
  _$$FeatureShopListingCopyWith<_$FeatureShopListing> get copyWith =>
      throw _privateConstructorUsedError;
}
