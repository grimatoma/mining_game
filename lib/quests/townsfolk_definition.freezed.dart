// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'townsfolk_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DefinitionId _$DefinitionIdFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'item':
      return ItemDefinitionId.fromJson(json);
    case 'townsfolk':
      return TownsfolkDefinitionId.fromJson(json);
    case 'quest':
      return QuestDefinitionId.fromJson(json);
    case 'shop':
      return ShopListingDefinitionId.fromJson(json);
    case 'craftingRecipe':
      return CraftingRecipeDefinitionId.fromJson(json);
    case 'doodad':
      return DoodadDefinitionId.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DefinitionId',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DefinitionId {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) item,
    required TResult Function(String id) townsfolk,
    required TResult Function(String id) quest,
    required TResult Function(String id) shop,
    required TResult Function(String id) craftingRecipe,
    required TResult Function(String id) doodad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemDefinitionId value) item,
    required TResult Function(TownsfolkDefinitionId value) townsfolk,
    required TResult Function(QuestDefinitionId value) quest,
    required TResult Function(ShopListingDefinitionId value) shop,
    required TResult Function(CraftingRecipeDefinitionId value) craftingRecipe,
    required TResult Function(DoodadDefinitionId value) doodad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefinitionIdCopyWith<DefinitionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefinitionIdCopyWith<$Res> {
  factory $DefinitionIdCopyWith(
          DefinitionId value, $Res Function(DefinitionId) then) =
      _$DefinitionIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$DefinitionIdCopyWithImpl<$Res> implements $DefinitionIdCopyWith<$Res> {
  _$DefinitionIdCopyWithImpl(this._value, this._then);

  final DefinitionId _value;
  // ignore: unused_field
  final $Res Function(DefinitionId) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ItemDefinitionIdCopyWith<$Res>
    implements $DefinitionIdCopyWith<$Res> {
  factory _$$ItemDefinitionIdCopyWith(
          _$ItemDefinitionId value, $Res Function(_$ItemDefinitionId) then) =
      __$$ItemDefinitionIdCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$ItemDefinitionIdCopyWithImpl<$Res>
    extends _$DefinitionIdCopyWithImpl<$Res>
    implements _$$ItemDefinitionIdCopyWith<$Res> {
  __$$ItemDefinitionIdCopyWithImpl(
      _$ItemDefinitionId _value, $Res Function(_$ItemDefinitionId) _then)
      : super(_value, (v) => _then(v as _$ItemDefinitionId));

  @override
  _$ItemDefinitionId get _value => super._value as _$ItemDefinitionId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ItemDefinitionId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDefinitionId extends ItemDefinitionId {
  const _$ItemDefinitionId(this.id, {final String? $type})
      : $type = $type ?? 'item',
        super._();

  factory _$ItemDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$$ItemDefinitionIdFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDefinitionId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$ItemDefinitionIdCopyWith<_$ItemDefinitionId> get copyWith =>
      __$$ItemDefinitionIdCopyWithImpl<_$ItemDefinitionId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) item,
    required TResult Function(String id) townsfolk,
    required TResult Function(String id) quest,
    required TResult Function(String id) shop,
    required TResult Function(String id) craftingRecipe,
    required TResult Function(String id) doodad,
  }) {
    return item(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
  }) {
    return item?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemDefinitionId value) item,
    required TResult Function(TownsfolkDefinitionId value) townsfolk,
    required TResult Function(QuestDefinitionId value) quest,
    required TResult Function(ShopListingDefinitionId value) shop,
    required TResult Function(CraftingRecipeDefinitionId value) craftingRecipe,
    required TResult Function(DoodadDefinitionId value) doodad,
  }) {
    return item(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
  }) {
    return item?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDefinitionIdToJson(
      this,
    );
  }
}

abstract class ItemDefinitionId extends DefinitionId {
  const factory ItemDefinitionId(final String id) = _$ItemDefinitionId;
  const ItemDefinitionId._() : super._();

  factory ItemDefinitionId.fromJson(Map<String, dynamic> json) =
      _$ItemDefinitionId.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ItemDefinitionIdCopyWith<_$ItemDefinitionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TownsfolkDefinitionIdCopyWith<$Res>
    implements $DefinitionIdCopyWith<$Res> {
  factory _$$TownsfolkDefinitionIdCopyWith(_$TownsfolkDefinitionId value,
          $Res Function(_$TownsfolkDefinitionId) then) =
      __$$TownsfolkDefinitionIdCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$TownsfolkDefinitionIdCopyWithImpl<$Res>
    extends _$DefinitionIdCopyWithImpl<$Res>
    implements _$$TownsfolkDefinitionIdCopyWith<$Res> {
  __$$TownsfolkDefinitionIdCopyWithImpl(_$TownsfolkDefinitionId _value,
      $Res Function(_$TownsfolkDefinitionId) _then)
      : super(_value, (v) => _then(v as _$TownsfolkDefinitionId));

  @override
  _$TownsfolkDefinitionId get _value => super._value as _$TownsfolkDefinitionId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$TownsfolkDefinitionId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TownsfolkDefinitionId extends TownsfolkDefinitionId {
  const _$TownsfolkDefinitionId(this.id, {final String? $type})
      : $type = $type ?? 'townsfolk',
        super._();

  factory _$TownsfolkDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$$TownsfolkDefinitionIdFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TownsfolkDefinitionId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$TownsfolkDefinitionIdCopyWith<_$TownsfolkDefinitionId> get copyWith =>
      __$$TownsfolkDefinitionIdCopyWithImpl<_$TownsfolkDefinitionId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) item,
    required TResult Function(String id) townsfolk,
    required TResult Function(String id) quest,
    required TResult Function(String id) shop,
    required TResult Function(String id) craftingRecipe,
    required TResult Function(String id) doodad,
  }) {
    return townsfolk(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
  }) {
    return townsfolk?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
    required TResult orElse(),
  }) {
    if (townsfolk != null) {
      return townsfolk(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemDefinitionId value) item,
    required TResult Function(TownsfolkDefinitionId value) townsfolk,
    required TResult Function(QuestDefinitionId value) quest,
    required TResult Function(ShopListingDefinitionId value) shop,
    required TResult Function(CraftingRecipeDefinitionId value) craftingRecipe,
    required TResult Function(DoodadDefinitionId value) doodad,
  }) {
    return townsfolk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
  }) {
    return townsfolk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
    required TResult orElse(),
  }) {
    if (townsfolk != null) {
      return townsfolk(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TownsfolkDefinitionIdToJson(
      this,
    );
  }
}

abstract class TownsfolkDefinitionId extends DefinitionId {
  const factory TownsfolkDefinitionId(final String id) =
      _$TownsfolkDefinitionId;
  const TownsfolkDefinitionId._() : super._();

  factory TownsfolkDefinitionId.fromJson(Map<String, dynamic> json) =
      _$TownsfolkDefinitionId.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$TownsfolkDefinitionIdCopyWith<_$TownsfolkDefinitionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestDefinitionIdCopyWith<$Res>
    implements $DefinitionIdCopyWith<$Res> {
  factory _$$QuestDefinitionIdCopyWith(
          _$QuestDefinitionId value, $Res Function(_$QuestDefinitionId) then) =
      __$$QuestDefinitionIdCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$QuestDefinitionIdCopyWithImpl<$Res>
    extends _$DefinitionIdCopyWithImpl<$Res>
    implements _$$QuestDefinitionIdCopyWith<$Res> {
  __$$QuestDefinitionIdCopyWithImpl(
      _$QuestDefinitionId _value, $Res Function(_$QuestDefinitionId) _then)
      : super(_value, (v) => _then(v as _$QuestDefinitionId));

  @override
  _$QuestDefinitionId get _value => super._value as _$QuestDefinitionId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$QuestDefinitionId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestDefinitionId extends QuestDefinitionId {
  const _$QuestDefinitionId(this.id, {final String? $type})
      : $type = $type ?? 'quest',
        super._();

  factory _$QuestDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$$QuestDefinitionIdFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestDefinitionId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$QuestDefinitionIdCopyWith<_$QuestDefinitionId> get copyWith =>
      __$$QuestDefinitionIdCopyWithImpl<_$QuestDefinitionId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) item,
    required TResult Function(String id) townsfolk,
    required TResult Function(String id) quest,
    required TResult Function(String id) shop,
    required TResult Function(String id) craftingRecipe,
    required TResult Function(String id) doodad,
  }) {
    return quest(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
  }) {
    return quest?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
    required TResult orElse(),
  }) {
    if (quest != null) {
      return quest(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemDefinitionId value) item,
    required TResult Function(TownsfolkDefinitionId value) townsfolk,
    required TResult Function(QuestDefinitionId value) quest,
    required TResult Function(ShopListingDefinitionId value) shop,
    required TResult Function(CraftingRecipeDefinitionId value) craftingRecipe,
    required TResult Function(DoodadDefinitionId value) doodad,
  }) {
    return quest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
  }) {
    return quest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
    required TResult orElse(),
  }) {
    if (quest != null) {
      return quest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestDefinitionIdToJson(
      this,
    );
  }
}

abstract class QuestDefinitionId extends DefinitionId {
  const factory QuestDefinitionId(final String id) = _$QuestDefinitionId;
  const QuestDefinitionId._() : super._();

  factory QuestDefinitionId.fromJson(Map<String, dynamic> json) =
      _$QuestDefinitionId.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$QuestDefinitionIdCopyWith<_$QuestDefinitionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShopListingDefinitionIdCopyWith<$Res>
    implements $DefinitionIdCopyWith<$Res> {
  factory _$$ShopListingDefinitionIdCopyWith(_$ShopListingDefinitionId value,
          $Res Function(_$ShopListingDefinitionId) then) =
      __$$ShopListingDefinitionIdCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$ShopListingDefinitionIdCopyWithImpl<$Res>
    extends _$DefinitionIdCopyWithImpl<$Res>
    implements _$$ShopListingDefinitionIdCopyWith<$Res> {
  __$$ShopListingDefinitionIdCopyWithImpl(_$ShopListingDefinitionId _value,
      $Res Function(_$ShopListingDefinitionId) _then)
      : super(_value, (v) => _then(v as _$ShopListingDefinitionId));

  @override
  _$ShopListingDefinitionId get _value =>
      super._value as _$ShopListingDefinitionId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ShopListingDefinitionId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopListingDefinitionId extends ShopListingDefinitionId {
  const _$ShopListingDefinitionId(this.id, {final String? $type})
      : $type = $type ?? 'shop',
        super._();

  factory _$ShopListingDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$$ShopListingDefinitionIdFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopListingDefinitionId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$ShopListingDefinitionIdCopyWith<_$ShopListingDefinitionId> get copyWith =>
      __$$ShopListingDefinitionIdCopyWithImpl<_$ShopListingDefinitionId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) item,
    required TResult Function(String id) townsfolk,
    required TResult Function(String id) quest,
    required TResult Function(String id) shop,
    required TResult Function(String id) craftingRecipe,
    required TResult Function(String id) doodad,
  }) {
    return shop(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
  }) {
    return shop?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
    required TResult orElse(),
  }) {
    if (shop != null) {
      return shop(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemDefinitionId value) item,
    required TResult Function(TownsfolkDefinitionId value) townsfolk,
    required TResult Function(QuestDefinitionId value) quest,
    required TResult Function(ShopListingDefinitionId value) shop,
    required TResult Function(CraftingRecipeDefinitionId value) craftingRecipe,
    required TResult Function(DoodadDefinitionId value) doodad,
  }) {
    return shop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
  }) {
    return shop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
    required TResult orElse(),
  }) {
    if (shop != null) {
      return shop(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopListingDefinitionIdToJson(
      this,
    );
  }
}

abstract class ShopListingDefinitionId extends DefinitionId {
  const factory ShopListingDefinitionId(final String id) =
      _$ShopListingDefinitionId;
  const ShopListingDefinitionId._() : super._();

  factory ShopListingDefinitionId.fromJson(Map<String, dynamic> json) =
      _$ShopListingDefinitionId.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ShopListingDefinitionIdCopyWith<_$ShopListingDefinitionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CraftingRecipeDefinitionIdCopyWith<$Res>
    implements $DefinitionIdCopyWith<$Res> {
  factory _$$CraftingRecipeDefinitionIdCopyWith(
          _$CraftingRecipeDefinitionId value,
          $Res Function(_$CraftingRecipeDefinitionId) then) =
      __$$CraftingRecipeDefinitionIdCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$CraftingRecipeDefinitionIdCopyWithImpl<$Res>
    extends _$DefinitionIdCopyWithImpl<$Res>
    implements _$$CraftingRecipeDefinitionIdCopyWith<$Res> {
  __$$CraftingRecipeDefinitionIdCopyWithImpl(
      _$CraftingRecipeDefinitionId _value,
      $Res Function(_$CraftingRecipeDefinitionId) _then)
      : super(_value, (v) => _then(v as _$CraftingRecipeDefinitionId));

  @override
  _$CraftingRecipeDefinitionId get _value =>
      super._value as _$CraftingRecipeDefinitionId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$CraftingRecipeDefinitionId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CraftingRecipeDefinitionId extends CraftingRecipeDefinitionId {
  const _$CraftingRecipeDefinitionId(this.id, {final String? $type})
      : $type = $type ?? 'craftingRecipe',
        super._();

  factory _$CraftingRecipeDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$$CraftingRecipeDefinitionIdFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CraftingRecipeDefinitionId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$CraftingRecipeDefinitionIdCopyWith<_$CraftingRecipeDefinitionId>
      get copyWith => __$$CraftingRecipeDefinitionIdCopyWithImpl<
          _$CraftingRecipeDefinitionId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) item,
    required TResult Function(String id) townsfolk,
    required TResult Function(String id) quest,
    required TResult Function(String id) shop,
    required TResult Function(String id) craftingRecipe,
    required TResult Function(String id) doodad,
  }) {
    return craftingRecipe(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
  }) {
    return craftingRecipe?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
    required TResult orElse(),
  }) {
    if (craftingRecipe != null) {
      return craftingRecipe(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemDefinitionId value) item,
    required TResult Function(TownsfolkDefinitionId value) townsfolk,
    required TResult Function(QuestDefinitionId value) quest,
    required TResult Function(ShopListingDefinitionId value) shop,
    required TResult Function(CraftingRecipeDefinitionId value) craftingRecipe,
    required TResult Function(DoodadDefinitionId value) doodad,
  }) {
    return craftingRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
  }) {
    return craftingRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
    required TResult orElse(),
  }) {
    if (craftingRecipe != null) {
      return craftingRecipe(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CraftingRecipeDefinitionIdToJson(
      this,
    );
  }
}

abstract class CraftingRecipeDefinitionId extends DefinitionId {
  const factory CraftingRecipeDefinitionId(final String id) =
      _$CraftingRecipeDefinitionId;
  const CraftingRecipeDefinitionId._() : super._();

  factory CraftingRecipeDefinitionId.fromJson(Map<String, dynamic> json) =
      _$CraftingRecipeDefinitionId.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$CraftingRecipeDefinitionIdCopyWith<_$CraftingRecipeDefinitionId>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoodadDefinitionIdCopyWith<$Res>
    implements $DefinitionIdCopyWith<$Res> {
  factory _$$DoodadDefinitionIdCopyWith(_$DoodadDefinitionId value,
          $Res Function(_$DoodadDefinitionId) then) =
      __$$DoodadDefinitionIdCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$DoodadDefinitionIdCopyWithImpl<$Res>
    extends _$DefinitionIdCopyWithImpl<$Res>
    implements _$$DoodadDefinitionIdCopyWith<$Res> {
  __$$DoodadDefinitionIdCopyWithImpl(
      _$DoodadDefinitionId _value, $Res Function(_$DoodadDefinitionId) _then)
      : super(_value, (v) => _then(v as _$DoodadDefinitionId));

  @override
  _$DoodadDefinitionId get _value => super._value as _$DoodadDefinitionId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$DoodadDefinitionId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoodadDefinitionId extends DoodadDefinitionId {
  const _$DoodadDefinitionId(this.id, {final String? $type})
      : $type = $type ?? 'doodad',
        super._();

  factory _$DoodadDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$$DoodadDefinitionIdFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoodadDefinitionId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$DoodadDefinitionIdCopyWith<_$DoodadDefinitionId> get copyWith =>
      __$$DoodadDefinitionIdCopyWithImpl<_$DoodadDefinitionId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) item,
    required TResult Function(String id) townsfolk,
    required TResult Function(String id) quest,
    required TResult Function(String id) shop,
    required TResult Function(String id) craftingRecipe,
    required TResult Function(String id) doodad,
  }) {
    return doodad(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
  }) {
    return doodad?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    TResult Function(String id)? craftingRecipe,
    TResult Function(String id)? doodad,
    required TResult orElse(),
  }) {
    if (doodad != null) {
      return doodad(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemDefinitionId value) item,
    required TResult Function(TownsfolkDefinitionId value) townsfolk,
    required TResult Function(QuestDefinitionId value) quest,
    required TResult Function(ShopListingDefinitionId value) shop,
    required TResult Function(CraftingRecipeDefinitionId value) craftingRecipe,
    required TResult Function(DoodadDefinitionId value) doodad,
  }) {
    return doodad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
  }) {
    return doodad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopListingDefinitionId value)? shop,
    TResult Function(CraftingRecipeDefinitionId value)? craftingRecipe,
    TResult Function(DoodadDefinitionId value)? doodad,
    required TResult orElse(),
  }) {
    if (doodad != null) {
      return doodad(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DoodadDefinitionIdToJson(
      this,
    );
  }
}

abstract class DoodadDefinitionId extends DefinitionId {
  const factory DoodadDefinitionId(final String id) = _$DoodadDefinitionId;
  const DoodadDefinitionId._() : super._();

  factory DoodadDefinitionId.fromJson(Map<String, dynamic> json) =
      _$DoodadDefinitionId.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$DoodadDefinitionIdCopyWith<_$DoodadDefinitionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TownsfolkDefinition {
  TownsfolkDefinitionId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TownsfolkDefinitionCopyWith<TownsfolkDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TownsfolkDefinitionCopyWith<$Res> {
  factory $TownsfolkDefinitionCopyWith(
          TownsfolkDefinition value, $Res Function(TownsfolkDefinition) then) =
      _$TownsfolkDefinitionCopyWithImpl<$Res>;
  $Res call({TownsfolkDefinitionId id, String name, String image});
}

/// @nodoc
class _$TownsfolkDefinitionCopyWithImpl<$Res>
    implements $TownsfolkDefinitionCopyWith<$Res> {
  _$TownsfolkDefinitionCopyWithImpl(this._value, this._then);

  final TownsfolkDefinition _value;
  // ignore: unused_field
  final $Res Function(TownsfolkDefinition) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TownsfolkDefinitionId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TownsfolkDefinitionCopyWith<$Res>
    implements $TownsfolkDefinitionCopyWith<$Res> {
  factory _$$_TownsfolkDefinitionCopyWith(_$_TownsfolkDefinition value,
          $Res Function(_$_TownsfolkDefinition) then) =
      __$$_TownsfolkDefinitionCopyWithImpl<$Res>;
  @override
  $Res call({TownsfolkDefinitionId id, String name, String image});
}

/// @nodoc
class __$$_TownsfolkDefinitionCopyWithImpl<$Res>
    extends _$TownsfolkDefinitionCopyWithImpl<$Res>
    implements _$$_TownsfolkDefinitionCopyWith<$Res> {
  __$$_TownsfolkDefinitionCopyWithImpl(_$_TownsfolkDefinition _value,
      $Res Function(_$_TownsfolkDefinition) _then)
      : super(_value, (v) => _then(v as _$_TownsfolkDefinition));

  @override
  _$_TownsfolkDefinition get _value => super._value as _$_TownsfolkDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_TownsfolkDefinition(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TownsfolkDefinitionId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TownsfolkDefinition implements _TownsfolkDefinition {
  const _$_TownsfolkDefinition(
      {required this.id, required this.name, required this.image});

  @override
  final TownsfolkDefinitionId id;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'TownsfolkDefinition(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TownsfolkDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_TownsfolkDefinitionCopyWith<_$_TownsfolkDefinition> get copyWith =>
      __$$_TownsfolkDefinitionCopyWithImpl<_$_TownsfolkDefinition>(
          this, _$identity);
}

abstract class _TownsfolkDefinition implements TownsfolkDefinition {
  const factory _TownsfolkDefinition(
      {required final TownsfolkDefinitionId id,
      required final String name,
      required final String image}) = _$_TownsfolkDefinition;

  @override
  TownsfolkDefinitionId get id;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_TownsfolkDefinitionCopyWith<_$_TownsfolkDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}
