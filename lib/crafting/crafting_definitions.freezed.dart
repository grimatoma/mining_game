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
  return ItemCraftingRecipe.fromJson(json);
}

/// @nodoc
mixin _$CraftingRecipe {
  CraftingRecipeDefinitionId get id => throw _privateConstructorUsedError;
  ItemContainer get input => throw _privateConstructorUsedError;
  ItemDefinitionId get output => throw _privateConstructorUsedError;
  int get craftingDuration => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CraftingRecipeDefinitionId id,
            ItemContainer input, ItemDefinitionId output, int craftingDuration)
        itemListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CraftingRecipeDefinitionId id, ItemContainer input,
            ItemDefinitionId output, int craftingDuration)?
        itemListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CraftingRecipeDefinitionId id, ItemContainer input,
            ItemDefinitionId output, int craftingDuration)?
        itemListing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemCraftingRecipe value) itemListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemCraftingRecipe value)? itemListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemCraftingRecipe value)? itemListing,
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
      _$CraftingRecipeCopyWithImpl<$Res, CraftingRecipe>;
  @useResult
  $Res call(
      {CraftingRecipeDefinitionId id,
      ItemContainer input,
      ItemDefinitionId output,
      int craftingDuration});

  $ItemContainerCopyWith<$Res> get input;
}

/// @nodoc
class _$CraftingRecipeCopyWithImpl<$Res, $Val extends CraftingRecipe>
    implements $CraftingRecipeCopyWith<$Res> {
  _$CraftingRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? input = null,
    Object? output = null,
    Object? craftingDuration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CraftingRecipeDefinitionId,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      craftingDuration: null == craftingDuration
          ? _value.craftingDuration
          : craftingDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemContainerCopyWith<$Res> get input {
    return $ItemContainerCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value) as $Val);
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
  @useResult
  $Res call(
      {CraftingRecipeDefinitionId id,
      ItemContainer input,
      ItemDefinitionId output,
      int craftingDuration});

  @override
  $ItemContainerCopyWith<$Res> get input;
}

/// @nodoc
class __$$ItemCraftingRecipeCopyWithImpl<$Res>
    extends _$CraftingRecipeCopyWithImpl<$Res, _$ItemCraftingRecipe>
    implements _$$ItemCraftingRecipeCopyWith<$Res> {
  __$$ItemCraftingRecipeCopyWithImpl(
      _$ItemCraftingRecipe _value, $Res Function(_$ItemCraftingRecipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? input = null,
    Object? output = null,
    Object? craftingDuration = null,
  }) {
    return _then(_$ItemCraftingRecipe(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CraftingRecipeDefinitionId,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      craftingDuration: null == craftingDuration
          ? _value.craftingDuration
          : craftingDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemCraftingRecipe implements ItemCraftingRecipe {
  const _$ItemCraftingRecipe(
      {required this.id,
      required this.input,
      required this.output,
      required this.craftingDuration});

  factory _$ItemCraftingRecipe.fromJson(Map<String, dynamic> json) =>
      _$$ItemCraftingRecipeFromJson(json);

  @override
  final CraftingRecipeDefinitionId id;
  @override
  final ItemContainer input;
  @override
  final ItemDefinitionId output;
  @override
  final int craftingDuration;

  @override
  String toString() {
    return 'CraftingRecipe.itemListing(id: $id, input: $input, output: $output, craftingDuration: $craftingDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemCraftingRecipe &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.output, output) || other.output == output) &&
            (identical(other.craftingDuration, craftingDuration) ||
                other.craftingDuration == craftingDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, input, output, craftingDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemCraftingRecipeCopyWith<_$ItemCraftingRecipe> get copyWith =>
      __$$ItemCraftingRecipeCopyWithImpl<_$ItemCraftingRecipe>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CraftingRecipeDefinitionId id,
            ItemContainer input, ItemDefinitionId output, int craftingDuration)
        itemListing,
  }) {
    return itemListing(id, input, output, craftingDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CraftingRecipeDefinitionId id, ItemContainer input,
            ItemDefinitionId output, int craftingDuration)?
        itemListing,
  }) {
    return itemListing?.call(id, input, output, craftingDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CraftingRecipeDefinitionId id, ItemContainer input,
            ItemDefinitionId output, int craftingDuration)?
        itemListing,
    required TResult orElse(),
  }) {
    if (itemListing != null) {
      return itemListing(id, input, output, craftingDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemCraftingRecipe value) itemListing,
  }) {
    return itemListing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ItemCraftingRecipe value)? itemListing,
  }) {
    return itemListing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemCraftingRecipe value)? itemListing,
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
      {required final CraftingRecipeDefinitionId id,
      required final ItemContainer input,
      required final ItemDefinitionId output,
      required final int craftingDuration}) = _$ItemCraftingRecipe;

  factory ItemCraftingRecipe.fromJson(Map<String, dynamic> json) =
      _$ItemCraftingRecipe.fromJson;

  @override
  CraftingRecipeDefinitionId get id;
  @override
  ItemContainer get input;
  @override
  ItemDefinitionId get output;
  @override
  int get craftingDuration;
  @override
  @JsonKey(ignore: true)
  _$$ItemCraftingRecipeCopyWith<_$ItemCraftingRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}
