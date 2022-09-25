// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crafting_definitions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CraftingRecipe _$CraftingRecipeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'itemListing':
      return ItemCraftingRecipe.fromJson(json);
    case 'doodadListing':
      return DoodadCraftingRecipe.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CraftingRecipe',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CraftingRecipe {
  int get id => throw _privateConstructorUsedError;
  ItemContainer get cost => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ItemContainer cost, ItemContainer item)
        itemListing,
    required TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures)
        doodadListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemContainer item)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures)?
        doodadListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemContainer item)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures)?
        doodadListing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemCraftingRecipe value) itemListing,
    required TResult Function(DoodadCraftingRecipe value) doodadListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemCraftingRecipe value)? itemListing,
    TResult Function(DoodadCraftingRecipe value)? doodadListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemCraftingRecipe value)? itemListing,
    TResult Function(DoodadCraftingRecipe value)? doodadListing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CraftingRecipeCopyWith<CraftingRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CraftingRecipeCopyWith<$Res> {
  factory $CraftingRecipeCopyWith(
          CraftingRecipe value, $Res Function(CraftingRecipe) then) =
      _$CraftingRecipeCopyWithImpl<$Res>;
  $Res call({int id, ItemContainer cost});

  $ItemContainerCopyWith<$Res> get cost;
}

/// @nodoc
class _$CraftingRecipeCopyWithImpl<$Res>
    implements $CraftingRecipeCopyWith<$Res> {
  _$CraftingRecipeCopyWithImpl(this._value, this._then);

  final CraftingRecipe _value;
  // ignore: unused_field
  final $Res Function(CraftingRecipe) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cost = freezed,
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
abstract class _$$ItemCraftingRecipeCopyWith<$Res>
    implements $CraftingRecipeCopyWith<$Res> {
  factory _$$ItemCraftingRecipeCopyWith(_$ItemCraftingRecipe value,
          $Res Function(_$ItemCraftingRecipe) then) =
      __$$ItemCraftingRecipeCopyWithImpl<$Res>;
  @override
  $Res call({int id, ItemContainer cost, ItemContainer item});

  @override
  $ItemContainerCopyWith<$Res> get cost;
  $ItemContainerCopyWith<$Res> get item;
}

/// @nodoc
class __$$ItemCraftingRecipeCopyWithImpl<$Res>
    extends _$CraftingRecipeCopyWithImpl<$Res>
    implements _$$ItemCraftingRecipeCopyWith<$Res> {
  __$$ItemCraftingRecipeCopyWithImpl(
      _$ItemCraftingRecipe _value, $Res Function(_$ItemCraftingRecipe) _then)
      : super(_value, (v) => _then(v as _$ItemCraftingRecipe));

  @override
  _$ItemCraftingRecipe get _value => super._value as _$ItemCraftingRecipe;

  @override
  $Res call({
    Object? id = freezed,
    Object? cost = freezed,
    Object? item = freezed,
  }) {
    return _then(_$ItemCraftingRecipe(
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
              as ItemContainer,
    ));
  }

  @override
  $ItemContainerCopyWith<$Res> get item {
    return $ItemContainerCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemCraftingRecipe implements ItemCraftingRecipe {
  const _$ItemCraftingRecipe(
      {required this.id,
      required this.cost,
      required this.item,
      final String? $type})
      : $type = $type ?? 'itemListing';

  factory _$ItemCraftingRecipe.fromJson(Map<String, dynamic> json) =>
      _$$ItemCraftingRecipeFromJson(json);

  @override
  final int id;
  @override
  final ItemContainer cost;
  @override
  final ItemContainer item;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CraftingRecipe.itemListing(id: $id, cost: $cost, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemCraftingRecipe &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$ItemCraftingRecipeCopyWith<_$ItemCraftingRecipe> get copyWith =>
      __$$ItemCraftingRecipeCopyWithImpl<_$ItemCraftingRecipe>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ItemContainer cost, ItemContainer item)
        itemListing,
    required TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures)
        doodadListing,
  }) {
    return itemListing(id, cost, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemContainer item)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures)?
        doodadListing,
  }) {
    return itemListing?.call(id, cost, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemContainer item)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures)?
        doodadListing,
    required TResult orElse(),
  }) {
    if (itemListing != null) {
      return itemListing(id, cost, item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemCraftingRecipe value) itemListing,
    required TResult Function(DoodadCraftingRecipe value) doodadListing,
  }) {
    return itemListing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemCraftingRecipe value)? itemListing,
    TResult Function(DoodadCraftingRecipe value)? doodadListing,
  }) {
    return itemListing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemCraftingRecipe value)? itemListing,
    TResult Function(DoodadCraftingRecipe value)? doodadListing,
    required TResult orElse(),
  }) {
    if (itemListing != null) {
      return itemListing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemCraftingRecipeToJson(
      this,
    );
  }
}

abstract class ItemCraftingRecipe implements CraftingRecipe {
  const factory ItemCraftingRecipe(
      {required final int id,
      required final ItemContainer cost,
      required final ItemContainer item}) = _$ItemCraftingRecipe;

  factory ItemCraftingRecipe.fromJson(Map<String, dynamic> json) =
      _$ItemCraftingRecipe.fromJson;

  @override
  int get id;
  @override
  ItemContainer get cost;
  ItemContainer get item;
  @override
  @JsonKey(ignore: true)
  _$$ItemCraftingRecipeCopyWith<_$ItemCraftingRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoodadCraftingRecipeCopyWith<$Res>
    implements $CraftingRecipeCopyWith<$Res> {
  factory _$$DoodadCraftingRecipeCopyWith(_$DoodadCraftingRecipe value,
          $Res Function(_$DoodadCraftingRecipe) then) =
      __$$DoodadCraftingRecipeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      ItemContainer cost,
      DoodadId doodadId,
      Set<Feature>? requiredFeatures});

  @override
  $ItemContainerCopyWith<$Res> get cost;
  $DoodadIdCopyWith<$Res> get doodadId;
}

/// @nodoc
class __$$DoodadCraftingRecipeCopyWithImpl<$Res>
    extends _$CraftingRecipeCopyWithImpl<$Res>
    implements _$$DoodadCraftingRecipeCopyWith<$Res> {
  __$$DoodadCraftingRecipeCopyWithImpl(_$DoodadCraftingRecipe _value,
      $Res Function(_$DoodadCraftingRecipe) _then)
      : super(_value, (v) => _then(v as _$DoodadCraftingRecipe));

  @override
  _$DoodadCraftingRecipe get _value => super._value as _$DoodadCraftingRecipe;

  @override
  $Res call({
    Object? id = freezed,
    Object? cost = freezed,
    Object? doodadId = freezed,
    Object? requiredFeatures = freezed,
  }) {
    return _then(_$DoodadCraftingRecipe(
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
class _$DoodadCraftingRecipe implements DoodadCraftingRecipe {
  const _$DoodadCraftingRecipe(
      {required this.id,
      required this.cost,
      required this.doodadId,
      final Set<Feature>? requiredFeatures,
      final String? $type})
      : _requiredFeatures = requiredFeatures,
        $type = $type ?? 'doodadListing';

  factory _$DoodadCraftingRecipe.fromJson(Map<String, dynamic> json) =>
      _$$DoodadCraftingRecipeFromJson(json);

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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CraftingRecipe.doodadListing(id: $id, cost: $cost, doodadId: $doodadId, requiredFeatures: $requiredFeatures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoodadCraftingRecipe &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.doodadId, doodadId) &&
            const DeepCollectionEquality()
                .equals(other._requiredFeatures, _requiredFeatures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(doodadId),
      const DeepCollectionEquality().hash(_requiredFeatures));

  @JsonKey(ignore: true)
  @override
  _$$DoodadCraftingRecipeCopyWith<_$DoodadCraftingRecipe> get copyWith =>
      __$$DoodadCraftingRecipeCopyWithImpl<_$DoodadCraftingRecipe>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, ItemContainer cost, ItemContainer item)
        itemListing,
    required TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures)
        doodadListing,
  }) {
    return doodadListing(id, cost, doodadId, requiredFeatures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemContainer item)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures)?
        doodadListing,
  }) {
    return doodadListing?.call(id, cost, doodadId, requiredFeatures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, ItemContainer cost, ItemContainer item)?
        itemListing,
    TResult Function(int id, ItemContainer cost, DoodadId doodadId,
            Set<Feature>? requiredFeatures)?
        doodadListing,
    required TResult orElse(),
  }) {
    if (doodadListing != null) {
      return doodadListing(id, cost, doodadId, requiredFeatures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemCraftingRecipe value) itemListing,
    required TResult Function(DoodadCraftingRecipe value) doodadListing,
  }) {
    return doodadListing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemCraftingRecipe value)? itemListing,
    TResult Function(DoodadCraftingRecipe value)? doodadListing,
  }) {
    return doodadListing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemCraftingRecipe value)? itemListing,
    TResult Function(DoodadCraftingRecipe value)? doodadListing,
    required TResult orElse(),
  }) {
    if (doodadListing != null) {
      return doodadListing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DoodadCraftingRecipeToJson(
      this,
    );
  }
}

abstract class DoodadCraftingRecipe implements CraftingRecipe {
  const factory DoodadCraftingRecipe(
      {required final int id,
      required final ItemContainer cost,
      required final DoodadId doodadId,
      final Set<Feature>? requiredFeatures}) = _$DoodadCraftingRecipe;

  factory DoodadCraftingRecipe.fromJson(Map<String, dynamic> json) =
      _$DoodadCraftingRecipe.fromJson;

  @override
  int get id;
  @override
  ItemContainer get cost;
  DoodadId get doodadId;
  Set<Feature>? get requiredFeatures;
  @override
  @JsonKey(ignore: true)
  _$$DoodadCraftingRecipeCopyWith<_$DoodadCraftingRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}
