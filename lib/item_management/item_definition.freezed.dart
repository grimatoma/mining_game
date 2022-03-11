// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemId _$ItemIdFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'itemId':
      return _ItemId.fromJson(json);
    case 'minerItemId':
      return MinerItemId.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ItemId',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ItemIdTearOff {
  const _$ItemIdTearOff();

  _ItemId itemId(@HiveField(0) String itemId) {
    return _ItemId(
      itemId,
    );
  }

  MinerItemId minerItemId(@HiveField(0) String itemId) {
    return MinerItemId(
      itemId,
    );
  }

  ItemId fromJson(Map<String, Object?> json) {
    return ItemId.fromJson(json);
  }
}

/// @nodoc
const $ItemId = _$ItemIdTearOff();

/// @nodoc
mixin _$ItemId {
  @HiveField(0)
  String get itemId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0) String itemId) itemId,
    required TResult Function(@HiveField(0) String itemId) minerItemId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) String itemId)? itemId,
    TResult Function(@HiveField(0) String itemId)? minerItemId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) String itemId)? itemId,
    TResult Function(@HiveField(0) String itemId)? minerItemId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemId value) itemId,
    required TResult Function(MinerItemId value) minerItemId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ItemId value)? itemId,
    TResult Function(MinerItemId value)? minerItemId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemId value)? itemId,
    TResult Function(MinerItemId value)? minerItemId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemIdCopyWith<ItemId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemIdCopyWith<$Res> {
  factory $ItemIdCopyWith(ItemId value, $Res Function(ItemId) then) =
      _$ItemIdCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String itemId});
}

/// @nodoc
class _$ItemIdCopyWithImpl<$Res> implements $ItemIdCopyWith<$Res> {
  _$ItemIdCopyWithImpl(this._value, this._then);

  final ItemId _value;
  // ignore: unused_field
  final $Res Function(ItemId) _then;

  @override
  $Res call({
    Object? itemId = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ItemIdCopyWith<$Res> implements $ItemIdCopyWith<$Res> {
  factory _$ItemIdCopyWith(_ItemId value, $Res Function(_ItemId) then) =
      __$ItemIdCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String itemId});
}

/// @nodoc
class __$ItemIdCopyWithImpl<$Res> extends _$ItemIdCopyWithImpl<$Res>
    implements _$ItemIdCopyWith<$Res> {
  __$ItemIdCopyWithImpl(_ItemId _value, $Res Function(_ItemId) _then)
      : super(_value, (v) => _then(v as _ItemId));

  @override
  _ItemId get _value => super._value as _ItemId;

  @override
  $Res call({
    Object? itemId = freezed,
  }) {
    return _then(_ItemId(
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 66, adapterName: 'ItemIdAdapter')
class _$_ItemId extends _ItemId {
  const _$_ItemId(@HiveField(0) this.itemId, {String? $type})
      : $type = $type ?? 'itemId',
        super._();

  factory _$_ItemId.fromJson(Map<String, dynamic> json) =>
      _$$_ItemIdFromJson(json);

  @override
  @HiveField(0)
  final String itemId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemId &&
            const DeepCollectionEquality().equals(other.itemId, itemId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(itemId));

  @JsonKey(ignore: true)
  @override
  _$ItemIdCopyWith<_ItemId> get copyWith =>
      __$ItemIdCopyWithImpl<_ItemId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0) String itemId) itemId,
    required TResult Function(@HiveField(0) String itemId) minerItemId,
  }) {
    return itemId(this.itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) String itemId)? itemId,
    TResult Function(@HiveField(0) String itemId)? minerItemId,
  }) {
    return itemId?.call(this.itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) String itemId)? itemId,
    TResult Function(@HiveField(0) String itemId)? minerItemId,
    required TResult orElse(),
  }) {
    if (itemId != null) {
      return itemId(this.itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemId value) itemId,
    required TResult Function(MinerItemId value) minerItemId,
  }) {
    return itemId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ItemId value)? itemId,
    TResult Function(MinerItemId value)? minerItemId,
  }) {
    return itemId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemId value)? itemId,
    TResult Function(MinerItemId value)? minerItemId,
    required TResult orElse(),
  }) {
    if (itemId != null) {
      return itemId(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemIdToJson(this);
  }
}

abstract class _ItemId extends ItemId {
  const factory _ItemId(@HiveField(0) String itemId) = _$_ItemId;
  const _ItemId._() : super._();

  factory _ItemId.fromJson(Map<String, dynamic> json) = _$_ItemId.fromJson;

  @override
  @HiveField(0)
  String get itemId;
  @override
  @JsonKey(ignore: true)
  _$ItemIdCopyWith<_ItemId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinerItemIdCopyWith<$Res> implements $ItemIdCopyWith<$Res> {
  factory $MinerItemIdCopyWith(
          MinerItemId value, $Res Function(MinerItemId) then) =
      _$MinerItemIdCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String itemId});
}

/// @nodoc
class _$MinerItemIdCopyWithImpl<$Res> extends _$ItemIdCopyWithImpl<$Res>
    implements $MinerItemIdCopyWith<$Res> {
  _$MinerItemIdCopyWithImpl(
      MinerItemId _value, $Res Function(MinerItemId) _then)
      : super(_value, (v) => _then(v as MinerItemId));

  @override
  MinerItemId get _value => super._value as MinerItemId;

  @override
  $Res call({
    Object? itemId = freezed,
  }) {
    return _then(MinerItemId(
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 69, adapterName: 'MinerItemIdAdapter')
class _$MinerItemId extends MinerItemId {
  const _$MinerItemId(@HiveField(0) this.itemId, {String? $type})
      : $type = $type ?? 'minerItemId',
        super._();

  factory _$MinerItemId.fromJson(Map<String, dynamic> json) =>
      _$$MinerItemIdFromJson(json);

  @override
  @HiveField(0)
  final String itemId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MinerItemId &&
            const DeepCollectionEquality().equals(other.itemId, itemId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(itemId));

  @JsonKey(ignore: true)
  @override
  $MinerItemIdCopyWith<MinerItemId> get copyWith =>
      _$MinerItemIdCopyWithImpl<MinerItemId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0) String itemId) itemId,
    required TResult Function(@HiveField(0) String itemId) minerItemId,
  }) {
    return minerItemId(this.itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) String itemId)? itemId,
    TResult Function(@HiveField(0) String itemId)? minerItemId,
  }) {
    return minerItemId?.call(this.itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) String itemId)? itemId,
    TResult Function(@HiveField(0) String itemId)? minerItemId,
    required TResult orElse(),
  }) {
    if (minerItemId != null) {
      return minerItemId(this.itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemId value) itemId,
    required TResult Function(MinerItemId value) minerItemId,
  }) {
    return minerItemId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ItemId value)? itemId,
    TResult Function(MinerItemId value)? minerItemId,
  }) {
    return minerItemId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemId value)? itemId,
    TResult Function(MinerItemId value)? minerItemId,
    required TResult orElse(),
  }) {
    if (minerItemId != null) {
      return minerItemId(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MinerItemIdToJson(this);
  }
}

abstract class MinerItemId extends ItemId {
  const factory MinerItemId(@HiveField(0) String itemId) = _$MinerItemId;
  const MinerItemId._() : super._();

  factory MinerItemId.fromJson(Map<String, dynamic> json) =
      _$MinerItemId.fromJson;

  @override
  @HiveField(0)
  String get itemId;
  @override
  @JsonKey(ignore: true)
  $MinerItemIdCopyWith<MinerItemId> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemDefinition _$ItemDefinitionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'resourceWalletOnlyDefinition':
      return ResourceWalletOnlyDefinition.fromJson(json);
    case 'resourceDefinition':
      return ResourceDefinition.fromJson(json);
    case 'drillDefinition':
      return DrillDefinition.fromJson(json);
    case 'swordDefinition':
      return SwordDefinition.fromJson(json);
    case 'minerDefinition':
      return MinerDefinition.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ItemDefinition',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ItemDefinitionTearOff {
  const _$ItemDefinitionTearOff();

  ResourceWalletOnlyDefinition resourceWalletOnlyDefinition(ItemId id,
      int maxStackSize, String name, String namePlural, String description) {
    return ResourceWalletOnlyDefinition(
      id,
      maxStackSize,
      name,
      namePlural,
      description,
    );
  }

  ResourceDefinition resourceDefinition(
      ItemId id, String name, String description, int maxStackSize) {
    return ResourceDefinition(
      id,
      name,
      description,
      maxStackSize,
    );
  }

  DrillDefinition drillDefinition(
      ItemId id, String name, String description, int damage) {
    return DrillDefinition(
      id,
      name,
      description,
      damage,
    );
  }

  SwordDefinition swordDefinition(ItemId id, String name, String namePlural,
      String description, BuiltMap<WeaponAttributes, double> attributes) {
    return SwordDefinition(
      id,
      name,
      namePlural,
      description,
      attributes,
    );
  }

  MinerDefinition minerDefinition(
      ItemId id,
      String name,
      String description,
      int radius,
      int depth,
      int baseDamage,
      int baseHopperSize,
      int fuelConsumption,
      String image) {
    return MinerDefinition(
      id,
      name,
      description,
      radius,
      depth,
      baseDamage,
      baseHopperSize,
      fuelConsumption,
      image,
    );
  }

  ItemDefinition fromJson(Map<String, Object?> json) {
    return ItemDefinition.fromJson(json);
  }
}

/// @nodoc
const $ItemDefinition = _$ItemDefinitionTearOff();

/// @nodoc
mixin _$ItemDefinition {
  ItemId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(
            ItemId id, String name, String description, int maxStackSize)
        resourceDefinition,
    required TResult Function(
            ItemId id, String name, String description, int damage)
        drillDefinition,
    required TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
    required TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)
        minerDefinition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String description, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)?
        minerDefinition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String description, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)?
        minerDefinition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceWalletOnlyDefinition value)
        resourceWalletOnlyDefinition,
    required TResult Function(ResourceDefinition value) resourceDefinition,
    required TResult Function(DrillDefinition value) drillDefinition,
    required TResult Function(SwordDefinition value) swordDefinition,
    required TResult Function(MinerDefinition value) minerDefinition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
    TResult Function(MinerDefinition value)? minerDefinition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
    TResult Function(MinerDefinition value)? minerDefinition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDefinitionCopyWith<ItemDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDefinitionCopyWith<$Res> {
  factory $ItemDefinitionCopyWith(
          ItemDefinition value, $Res Function(ItemDefinition) then) =
      _$ItemDefinitionCopyWithImpl<$Res>;
  $Res call({ItemId id, String name, String description});

  $ItemIdCopyWith<$Res> get id;
}

/// @nodoc
class _$ItemDefinitionCopyWithImpl<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  _$ItemDefinitionCopyWithImpl(this._value, this._then);

  final ItemDefinition _value;
  // ignore: unused_field
  final $Res Function(ItemDefinition) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ItemIdCopyWith<$Res> get id {
    return $ItemIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class $ResourceWalletOnlyDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory $ResourceWalletOnlyDefinitionCopyWith(
          ResourceWalletOnlyDefinition value,
          $Res Function(ResourceWalletOnlyDefinition) then) =
      _$ResourceWalletOnlyDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemId id,
      int maxStackSize,
      String name,
      String namePlural,
      String description});

  @override
  $ItemIdCopyWith<$Res> get id;
}

/// @nodoc
class _$ResourceWalletOnlyDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements $ResourceWalletOnlyDefinitionCopyWith<$Res> {
  _$ResourceWalletOnlyDefinitionCopyWithImpl(
      ResourceWalletOnlyDefinition _value,
      $Res Function(ResourceWalletOnlyDefinition) _then)
      : super(_value, (v) => _then(v as ResourceWalletOnlyDefinition));

  @override
  ResourceWalletOnlyDefinition get _value =>
      super._value as ResourceWalletOnlyDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? maxStackSize = freezed,
    Object? name = freezed,
    Object? namePlural = freezed,
    Object? description = freezed,
  }) {
    return _then(ResourceWalletOnlyDefinition(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemId,
      maxStackSize == freezed
          ? _value.maxStackSize
          : maxStackSize // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural == freezed
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<HideInInventory>()
@Implements<ShowInWallet>()
@Implements<Resource>()
@Implements<HasPluralName>()
@Implements<Stackable>()
class _$ResourceWalletOnlyDefinition implements ResourceWalletOnlyDefinition {
  const _$ResourceWalletOnlyDefinition(
      this.id, this.maxStackSize, this.name, this.namePlural, this.description,
      {String? $type})
      : $type = $type ?? 'resourceWalletOnlyDefinition';

  factory _$ResourceWalletOnlyDefinition.fromJson(Map<String, dynamic> json) =>
      _$$ResourceWalletOnlyDefinitionFromJson(json);

  @override
  final ItemId id;
  @override
  final int maxStackSize;
  @override
  final String name;
  @override
  final String namePlural;
  @override
  final String description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.resourceWalletOnlyDefinition(id: $id, maxStackSize: $maxStackSize, name: $name, namePlural: $namePlural, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResourceWalletOnlyDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.maxStackSize, maxStackSize) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.namePlural, namePlural) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(maxStackSize),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(namePlural),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  $ResourceWalletOnlyDefinitionCopyWith<ResourceWalletOnlyDefinition>
      get copyWith => _$ResourceWalletOnlyDefinitionCopyWithImpl<
          ResourceWalletOnlyDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(
            ItemId id, String name, String description, int maxStackSize)
        resourceDefinition,
    required TResult Function(
            ItemId id, String name, String description, int damage)
        drillDefinition,
    required TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
    required TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)
        minerDefinition,
  }) {
    return resourceWalletOnlyDefinition(
        id, maxStackSize, name, namePlural, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String description, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)?
        minerDefinition,
  }) {
    return resourceWalletOnlyDefinition?.call(
        id, maxStackSize, name, namePlural, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String description, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)?
        minerDefinition,
    required TResult orElse(),
  }) {
    if (resourceWalletOnlyDefinition != null) {
      return resourceWalletOnlyDefinition(
          id, maxStackSize, name, namePlural, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceWalletOnlyDefinition value)
        resourceWalletOnlyDefinition,
    required TResult Function(ResourceDefinition value) resourceDefinition,
    required TResult Function(DrillDefinition value) drillDefinition,
    required TResult Function(SwordDefinition value) swordDefinition,
    required TResult Function(MinerDefinition value) minerDefinition,
  }) {
    return resourceWalletOnlyDefinition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
    TResult Function(MinerDefinition value)? minerDefinition,
  }) {
    return resourceWalletOnlyDefinition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
    TResult Function(MinerDefinition value)? minerDefinition,
    required TResult orElse(),
  }) {
    if (resourceWalletOnlyDefinition != null) {
      return resourceWalletOnlyDefinition(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceWalletOnlyDefinitionToJson(this);
  }
}

abstract class ResourceWalletOnlyDefinition
    implements
        ItemDefinition,
        HideInInventory,
        ShowInWallet,
        Resource,
        HasPluralName,
        Stackable {
  const factory ResourceWalletOnlyDefinition(
      ItemId id,
      int maxStackSize,
      String name,
      String namePlural,
      String description) = _$ResourceWalletOnlyDefinition;

  factory ResourceWalletOnlyDefinition.fromJson(Map<String, dynamic> json) =
      _$ResourceWalletOnlyDefinition.fromJson;

  @override
  ItemId get id;
  int get maxStackSize;
  @override
  String get name;
  String get namePlural;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  $ResourceWalletOnlyDefinitionCopyWith<ResourceWalletOnlyDefinition>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory $ResourceDefinitionCopyWith(
          ResourceDefinition value, $Res Function(ResourceDefinition) then) =
      _$ResourceDefinitionCopyWithImpl<$Res>;
  @override
  $Res call({ItemId id, String name, String description, int maxStackSize});

  @override
  $ItemIdCopyWith<$Res> get id;
}

/// @nodoc
class _$ResourceDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements $ResourceDefinitionCopyWith<$Res> {
  _$ResourceDefinitionCopyWithImpl(
      ResourceDefinition _value, $Res Function(ResourceDefinition) _then)
      : super(_value, (v) => _then(v as ResourceDefinition));

  @override
  ResourceDefinition get _value => super._value as ResourceDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? maxStackSize = freezed,
  }) {
    return _then(ResourceDefinition(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemId,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      maxStackSize == freezed
          ? _value.maxStackSize
          : maxStackSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<Resource>()
@Implements<Stackable>()
class _$ResourceDefinition implements ResourceDefinition {
  const _$ResourceDefinition(
      this.id, this.name, this.description, this.maxStackSize,
      {String? $type})
      : $type = $type ?? 'resourceDefinition';

  factory _$ResourceDefinition.fromJson(Map<String, dynamic> json) =>
      _$$ResourceDefinitionFromJson(json);

  @override
  final ItemId id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int maxStackSize;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.resourceDefinition(id: $id, name: $name, description: $description, maxStackSize: $maxStackSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResourceDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.maxStackSize, maxStackSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(maxStackSize));

  @JsonKey(ignore: true)
  @override
  $ResourceDefinitionCopyWith<ResourceDefinition> get copyWith =>
      _$ResourceDefinitionCopyWithImpl<ResourceDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(
            ItemId id, String name, String description, int maxStackSize)
        resourceDefinition,
    required TResult Function(
            ItemId id, String name, String description, int damage)
        drillDefinition,
    required TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
    required TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)
        minerDefinition,
  }) {
    return resourceDefinition(id, name, description, maxStackSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String description, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)?
        minerDefinition,
  }) {
    return resourceDefinition?.call(id, name, description, maxStackSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String description, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)?
        minerDefinition,
    required TResult orElse(),
  }) {
    if (resourceDefinition != null) {
      return resourceDefinition(id, name, description, maxStackSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceWalletOnlyDefinition value)
        resourceWalletOnlyDefinition,
    required TResult Function(ResourceDefinition value) resourceDefinition,
    required TResult Function(DrillDefinition value) drillDefinition,
    required TResult Function(SwordDefinition value) swordDefinition,
    required TResult Function(MinerDefinition value) minerDefinition,
  }) {
    return resourceDefinition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
    TResult Function(MinerDefinition value)? minerDefinition,
  }) {
    return resourceDefinition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
    TResult Function(MinerDefinition value)? minerDefinition,
    required TResult orElse(),
  }) {
    if (resourceDefinition != null) {
      return resourceDefinition(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceDefinitionToJson(this);
  }
}

abstract class ResourceDefinition
    implements ItemDefinition, Resource, Stackable {
  const factory ResourceDefinition(
          ItemId id, String name, String description, int maxStackSize) =
      _$ResourceDefinition;

  factory ResourceDefinition.fromJson(Map<String, dynamic> json) =
      _$ResourceDefinition.fromJson;

  @override
  ItemId get id;
  @override
  String get name;
  @override
  String get description;
  int get maxStackSize;
  @override
  @JsonKey(ignore: true)
  $ResourceDefinitionCopyWith<ResourceDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrillDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory $DrillDefinitionCopyWith(
          DrillDefinition value, $Res Function(DrillDefinition) then) =
      _$DrillDefinitionCopyWithImpl<$Res>;
  @override
  $Res call({ItemId id, String name, String description, int damage});

  @override
  $ItemIdCopyWith<$Res> get id;
}

/// @nodoc
class _$DrillDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements $DrillDefinitionCopyWith<$Res> {
  _$DrillDefinitionCopyWithImpl(
      DrillDefinition _value, $Res Function(DrillDefinition) _then)
      : super(_value, (v) => _then(v as DrillDefinition));

  @override
  DrillDefinition get _value => super._value as DrillDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? damage = freezed,
  }) {
    return _then(DrillDefinition(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemId,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      damage == freezed
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DrillDefinition implements DrillDefinition {
  const _$DrillDefinition(this.id, this.name, this.description, this.damage,
      {String? $type})
      : $type = $type ?? 'drillDefinition';

  factory _$DrillDefinition.fromJson(Map<String, dynamic> json) =>
      _$$DrillDefinitionFromJson(json);

  @override
  final ItemId id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int damage;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.drillDefinition(id: $id, name: $name, description: $description, damage: $damage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DrillDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.damage, damage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(damage));

  @JsonKey(ignore: true)
  @override
  $DrillDefinitionCopyWith<DrillDefinition> get copyWith =>
      _$DrillDefinitionCopyWithImpl<DrillDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(
            ItemId id, String name, String description, int maxStackSize)
        resourceDefinition,
    required TResult Function(
            ItemId id, String name, String description, int damage)
        drillDefinition,
    required TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
    required TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)
        minerDefinition,
  }) {
    return drillDefinition(id, name, description, damage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String description, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)?
        minerDefinition,
  }) {
    return drillDefinition?.call(id, name, description, damage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String description, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)?
        minerDefinition,
    required TResult orElse(),
  }) {
    if (drillDefinition != null) {
      return drillDefinition(id, name, description, damage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceWalletOnlyDefinition value)
        resourceWalletOnlyDefinition,
    required TResult Function(ResourceDefinition value) resourceDefinition,
    required TResult Function(DrillDefinition value) drillDefinition,
    required TResult Function(SwordDefinition value) swordDefinition,
    required TResult Function(MinerDefinition value) minerDefinition,
  }) {
    return drillDefinition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
    TResult Function(MinerDefinition value)? minerDefinition,
  }) {
    return drillDefinition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
    TResult Function(MinerDefinition value)? minerDefinition,
    required TResult orElse(),
  }) {
    if (drillDefinition != null) {
      return drillDefinition(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DrillDefinitionToJson(this);
  }
}

abstract class DrillDefinition implements ItemDefinition {
  const factory DrillDefinition(
          ItemId id, String name, String description, int damage) =
      _$DrillDefinition;

  factory DrillDefinition.fromJson(Map<String, dynamic> json) =
      _$DrillDefinition.fromJson;

  @override
  ItemId get id;
  @override
  String get name;
  @override
  String get description;
  int get damage;
  @override
  @JsonKey(ignore: true)
  $DrillDefinitionCopyWith<DrillDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwordDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory $SwordDefinitionCopyWith(
          SwordDefinition value, $Res Function(SwordDefinition) then) =
      _$SwordDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemId id,
      String name,
      String namePlural,
      String description,
      BuiltMap<WeaponAttributes, double> attributes});

  @override
  $ItemIdCopyWith<$Res> get id;
}

/// @nodoc
class _$SwordDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements $SwordDefinitionCopyWith<$Res> {
  _$SwordDefinitionCopyWithImpl(
      SwordDefinition _value, $Res Function(SwordDefinition) _then)
      : super(_value, (v) => _then(v as SwordDefinition));

  @override
  SwordDefinition get _value => super._value as SwordDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? namePlural = freezed,
    Object? description = freezed,
    Object? attributes = freezed,
  }) {
    return _then(SwordDefinition(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemId,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural == freezed
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BuiltMap<WeaponAttributes, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements<HasPluralName>()
class _$SwordDefinition implements SwordDefinition {
  const _$SwordDefinition(
      this.id, this.name, this.namePlural, this.description, this.attributes,
      {String? $type})
      : $type = $type ?? 'swordDefinition';

  factory _$SwordDefinition.fromJson(Map<String, dynamic> json) =>
      _$$SwordDefinitionFromJson(json);

  @override
  final ItemId id;
  @override
  final String name;
  @override
  final String namePlural;
  @override
  final String description;
  @override
  final BuiltMap<WeaponAttributes, double> attributes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.swordDefinition(id: $id, name: $name, namePlural: $namePlural, description: $description, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SwordDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.namePlural, namePlural) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(namePlural),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(attributes));

  @JsonKey(ignore: true)
  @override
  $SwordDefinitionCopyWith<SwordDefinition> get copyWith =>
      _$SwordDefinitionCopyWithImpl<SwordDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(
            ItemId id, String name, String description, int maxStackSize)
        resourceDefinition,
    required TResult Function(
            ItemId id, String name, String description, int damage)
        drillDefinition,
    required TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
    required TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)
        minerDefinition,
  }) {
    return swordDefinition(id, name, namePlural, description, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String description, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)?
        minerDefinition,
  }) {
    return swordDefinition?.call(id, name, namePlural, description, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String description, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)?
        minerDefinition,
    required TResult orElse(),
  }) {
    if (swordDefinition != null) {
      return swordDefinition(id, name, namePlural, description, attributes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceWalletOnlyDefinition value)
        resourceWalletOnlyDefinition,
    required TResult Function(ResourceDefinition value) resourceDefinition,
    required TResult Function(DrillDefinition value) drillDefinition,
    required TResult Function(SwordDefinition value) swordDefinition,
    required TResult Function(MinerDefinition value) minerDefinition,
  }) {
    return swordDefinition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
    TResult Function(MinerDefinition value)? minerDefinition,
  }) {
    return swordDefinition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
    TResult Function(MinerDefinition value)? minerDefinition,
    required TResult orElse(),
  }) {
    if (swordDefinition != null) {
      return swordDefinition(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SwordDefinitionToJson(this);
  }
}

abstract class SwordDefinition implements ItemDefinition, HasPluralName {
  const factory SwordDefinition(
      ItemId id,
      String name,
      String namePlural,
      String description,
      BuiltMap<WeaponAttributes, double> attributes) = _$SwordDefinition;

  factory SwordDefinition.fromJson(Map<String, dynamic> json) =
      _$SwordDefinition.fromJson;

  @override
  ItemId get id;
  @override
  String get name;
  String get namePlural;
  @override
  String get description;
  BuiltMap<WeaponAttributes, double> get attributes;
  @override
  @JsonKey(ignore: true)
  $SwordDefinitionCopyWith<SwordDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinerDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory $MinerDefinitionCopyWith(
          MinerDefinition value, $Res Function(MinerDefinition) then) =
      _$MinerDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemId id,
      String name,
      String description,
      int radius,
      int depth,
      int baseDamage,
      int baseHopperSize,
      int fuelConsumption,
      String image});

  @override
  $ItemIdCopyWith<$Res> get id;
}

/// @nodoc
class _$MinerDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements $MinerDefinitionCopyWith<$Res> {
  _$MinerDefinitionCopyWithImpl(
      MinerDefinition _value, $Res Function(MinerDefinition) _then)
      : super(_value, (v) => _then(v as MinerDefinition));

  @override
  MinerDefinition get _value => super._value as MinerDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? radius = freezed,
    Object? depth = freezed,
    Object? baseDamage = freezed,
    Object? baseHopperSize = freezed,
    Object? fuelConsumption = freezed,
    Object? image = freezed,
  }) {
    return _then(MinerDefinition(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemId,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      depth == freezed
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
      baseDamage == freezed
          ? _value.baseDamage
          : baseDamage // ignore: cast_nullable_to_non_nullable
              as int,
      baseHopperSize == freezed
          ? _value.baseHopperSize
          : baseHopperSize // ignore: cast_nullable_to_non_nullable
              as int,
      fuelConsumption == freezed
          ? _value.fuelConsumption
          : fuelConsumption // ignore: cast_nullable_to_non_nullable
              as int,
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinerDefinition implements MinerDefinition {
  _$MinerDefinition(
      this.id,
      this.name,
      this.description,
      this.radius,
      this.depth,
      this.baseDamage,
      this.baseHopperSize,
      this.fuelConsumption,
      this.image,
      {String? $type})
      : assert(id is MinerItemId, 'Must use a MinerItemId'),
        $type = $type ?? 'minerDefinition';

  factory _$MinerDefinition.fromJson(Map<String, dynamic> json) =>
      _$$MinerDefinitionFromJson(json);

  @override
  final ItemId id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int radius;
  @override
  final int depth;
  @override
  final int baseDamage;
  @override // Should this be for all resources or per resource?
  final int baseHopperSize;
  @override
  final int fuelConsumption;
  @override
  final String image;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.minerDefinition(id: $id, name: $name, description: $description, radius: $radius, depth: $depth, baseDamage: $baseDamage, baseHopperSize: $baseHopperSize, fuelConsumption: $fuelConsumption, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MinerDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.radius, radius) &&
            const DeepCollectionEquality().equals(other.depth, depth) &&
            const DeepCollectionEquality()
                .equals(other.baseDamage, baseDamage) &&
            const DeepCollectionEquality()
                .equals(other.baseHopperSize, baseHopperSize) &&
            const DeepCollectionEquality()
                .equals(other.fuelConsumption, fuelConsumption) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(radius),
      const DeepCollectionEquality().hash(depth),
      const DeepCollectionEquality().hash(baseDamage),
      const DeepCollectionEquality().hash(baseHopperSize),
      const DeepCollectionEquality().hash(fuelConsumption),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  $MinerDefinitionCopyWith<MinerDefinition> get copyWith =>
      _$MinerDefinitionCopyWithImpl<MinerDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(
            ItemId id, String name, String description, int maxStackSize)
        resourceDefinition,
    required TResult Function(
            ItemId id, String name, String description, int damage)
        drillDefinition,
    required TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
    required TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)
        minerDefinition,
  }) {
    return minerDefinition(id, name, description, radius, depth, baseDamage,
        baseHopperSize, fuelConsumption, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String description, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)?
        minerDefinition,
  }) {
    return minerDefinition?.call(id, name, description, radius, depth,
        baseDamage, baseHopperSize, fuelConsumption, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemId id, int maxStackSize, String name,
            String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String description, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            String image)?
        minerDefinition,
    required TResult orElse(),
  }) {
    if (minerDefinition != null) {
      return minerDefinition(id, name, description, radius, depth, baseDamage,
          baseHopperSize, fuelConsumption, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResourceWalletOnlyDefinition value)
        resourceWalletOnlyDefinition,
    required TResult Function(ResourceDefinition value) resourceDefinition,
    required TResult Function(DrillDefinition value) drillDefinition,
    required TResult Function(SwordDefinition value) swordDefinition,
    required TResult Function(MinerDefinition value) minerDefinition,
  }) {
    return minerDefinition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
    TResult Function(MinerDefinition value)? minerDefinition,
  }) {
    return minerDefinition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
    TResult Function(MinerDefinition value)? minerDefinition,
    required TResult orElse(),
  }) {
    if (minerDefinition != null) {
      return minerDefinition(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MinerDefinitionToJson(this);
  }
}

abstract class MinerDefinition implements ItemDefinition {
  factory MinerDefinition(
      ItemId id,
      String name,
      String description,
      int radius,
      int depth,
      int baseDamage,
      int baseHopperSize,
      int fuelConsumption,
      String image) = _$MinerDefinition;

  factory MinerDefinition.fromJson(Map<String, dynamic> json) =
      _$MinerDefinition.fromJson;

  @override
  ItemId get id;
  @override
  String get name;
  @override
  String get description;
  int get radius;
  int get depth;
  int get baseDamage; // Should this be for all resources or per resource?
  int get baseHopperSize;
  int get fuelConsumption;
  String get image;
  @override
  @JsonKey(ignore: true)
  $MinerDefinitionCopyWith<MinerDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ItemInstanceTearOff {
  const _$ItemInstanceTearOff();

  ExampleInstance exampleInstance(
      {@HiveField(0) required InstanceId id,
      @HiveField(1) required ItemId itemId}) {
    return ExampleInstance(
      id: id,
      itemId: itemId,
    );
  }

  MinerInstance minerInstance(
      {@HiveField(0) required InstanceId id,
      @HiveField(1) required ItemId itemId,
      @HiveField(2) ItemId? drillId,
      @HiveField(4) required ItemContainer hopper}) {
    return MinerInstance(
      id: id,
      itemId: itemId,
      drillId: drillId,
      hopper: hopper,
    );
  }

  StackInstance stackInstance(
      {@HiveField(0) required InstanceId id,
      @HiveField(1) required ItemId itemId,
      @HiveField(2) required int quantity}) {
    return StackInstance(
      id: id,
      itemId: itemId,
      quantity: quantity,
    );
  }
}

/// @nodoc
const $ItemInstance = _$ItemInstanceTearOff();

/// @nodoc
mixin _$ItemInstance {
  @HiveField(0)
  InstanceId get id => throw _privateConstructorUsedError;
  @HiveField(1)
  ItemId get itemId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)
        exampleInstance,
    required TResult Function(
            @HiveField(0) InstanceId id,
            @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId,
            @HiveField(4) ItemContainer hopper)
        minerInstance,
    required TResult Function(@HiveField(0) InstanceId id,
            @HiveField(1) ItemId itemId, @HiveField(2) int quantity)
        stackInstance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)?
        exampleInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId, @HiveField(4) ItemContainer hopper)?
        minerInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) int quantity)?
        stackInstance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)?
        exampleInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId, @HiveField(4) ItemContainer hopper)?
        minerInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) int quantity)?
        stackInstance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleInstance value) exampleInstance,
    required TResult Function(MinerInstance value) minerInstance,
    required TResult Function(StackInstance value) stackInstance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
    TResult Function(StackInstance value)? stackInstance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
    TResult Function(StackInstance value)? stackInstance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemInstanceCopyWith<ItemInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemInstanceCopyWith<$Res> {
  factory $ItemInstanceCopyWith(
          ItemInstance value, $Res Function(ItemInstance) then) =
      _$ItemInstanceCopyWithImpl<$Res>;
  $Res call({@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId});

  $ItemIdCopyWith<$Res> get itemId;
}

/// @nodoc
class _$ItemInstanceCopyWithImpl<$Res> implements $ItemInstanceCopyWith<$Res> {
  _$ItemInstanceCopyWithImpl(this._value, this._then);

  final ItemInstance _value;
  // ignore: unused_field
  final $Res Function(ItemInstance) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as InstanceId,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemId,
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
abstract class $ExampleInstanceCopyWith<$Res>
    implements $ItemInstanceCopyWith<$Res> {
  factory $ExampleInstanceCopyWith(
          ExampleInstance value, $Res Function(ExampleInstance) then) =
      _$ExampleInstanceCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId});

  @override
  $ItemIdCopyWith<$Res> get itemId;
}

/// @nodoc
class _$ExampleInstanceCopyWithImpl<$Res>
    extends _$ItemInstanceCopyWithImpl<$Res>
    implements $ExampleInstanceCopyWith<$Res> {
  _$ExampleInstanceCopyWithImpl(
      ExampleInstance _value, $Res Function(ExampleInstance) _then)
      : super(_value, (v) => _then(v as ExampleInstance));

  @override
  ExampleInstance get _value => super._value as ExampleInstance;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
  }) {
    return _then(ExampleInstance(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as InstanceId,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemId,
    ));
  }
}

/// @nodoc

class _$ExampleInstance extends ExampleInstance {
  _$ExampleInstance(
      {@HiveField(0) required this.id, @HiveField(1) required this.itemId})
      : super._();

  @override
  @HiveField(0)
  final InstanceId id;
  @override
  @HiveField(1)
  final ItemId itemId;

  @override
  String toString() {
    return 'ItemInstance.exampleInstance(id: $id, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExampleInstance &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.itemId, itemId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(itemId));

  @JsonKey(ignore: true)
  @override
  $ExampleInstanceCopyWith<ExampleInstance> get copyWith =>
      _$ExampleInstanceCopyWithImpl<ExampleInstance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)
        exampleInstance,
    required TResult Function(
            @HiveField(0) InstanceId id,
            @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId,
            @HiveField(4) ItemContainer hopper)
        minerInstance,
    required TResult Function(@HiveField(0) InstanceId id,
            @HiveField(1) ItemId itemId, @HiveField(2) int quantity)
        stackInstance,
  }) {
    return exampleInstance(id, itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)?
        exampleInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId, @HiveField(4) ItemContainer hopper)?
        minerInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) int quantity)?
        stackInstance,
  }) {
    return exampleInstance?.call(id, itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)?
        exampleInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId, @HiveField(4) ItemContainer hopper)?
        minerInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) int quantity)?
        stackInstance,
    required TResult orElse(),
  }) {
    if (exampleInstance != null) {
      return exampleInstance(id, itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleInstance value) exampleInstance,
    required TResult Function(MinerInstance value) minerInstance,
    required TResult Function(StackInstance value) stackInstance,
  }) {
    return exampleInstance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
    TResult Function(StackInstance value)? stackInstance,
  }) {
    return exampleInstance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
    TResult Function(StackInstance value)? stackInstance,
    required TResult orElse(),
  }) {
    if (exampleInstance != null) {
      return exampleInstance(this);
    }
    return orElse();
  }
}

abstract class ExampleInstance extends ItemInstance {
  factory ExampleInstance(
      {@HiveField(0) required InstanceId id,
      @HiveField(1) required ItemId itemId}) = _$ExampleInstance;
  ExampleInstance._() : super._();

  @override
  @HiveField(0)
  InstanceId get id;
  @override
  @HiveField(1)
  ItemId get itemId;
  @override
  @JsonKey(ignore: true)
  $ExampleInstanceCopyWith<ExampleInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinerInstanceCopyWith<$Res>
    implements $ItemInstanceCopyWith<$Res> {
  factory $MinerInstanceCopyWith(
          MinerInstance value, $Res Function(MinerInstance) then) =
      _$MinerInstanceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) InstanceId id,
      @HiveField(1) ItemId itemId,
      @HiveField(2) ItemId? drillId,
      @HiveField(4) ItemContainer hopper});

  @override
  $ItemIdCopyWith<$Res> get itemId;
  $ItemIdCopyWith<$Res>? get drillId;
}

/// @nodoc
class _$MinerInstanceCopyWithImpl<$Res> extends _$ItemInstanceCopyWithImpl<$Res>
    implements $MinerInstanceCopyWith<$Res> {
  _$MinerInstanceCopyWithImpl(
      MinerInstance _value, $Res Function(MinerInstance) _then)
      : super(_value, (v) => _then(v as MinerInstance));

  @override
  MinerInstance get _value => super._value as MinerInstance;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
    Object? drillId = freezed,
    Object? hopper = freezed,
  }) {
    return _then(MinerInstance(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as InstanceId,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemId,
      drillId: drillId == freezed
          ? _value.drillId
          : drillId // ignore: cast_nullable_to_non_nullable
              as ItemId?,
      hopper: hopper == freezed
          ? _value.hopper
          : hopper // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
    ));
  }

  @override
  $ItemIdCopyWith<$Res>? get drillId {
    if (_value.drillId == null) {
      return null;
    }

    return $ItemIdCopyWith<$Res>(_value.drillId!, (value) {
      return _then(_value.copyWith(drillId: value));
    });
  }
}

/// @nodoc

@HiveType(typeId: 10, adapterName: 'MinerInstanceAdapter')
@With<MinerMethods>()
class _$MinerInstance extends MinerInstance with MinerMethods {
  _$MinerInstance(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.itemId,
      @HiveField(2) this.drillId,
      @HiveField(4) required this.hopper})
      : assert(itemId is MinerItemId, 'Must use a MinerItemId'),
        super._();

  @override
  @HiveField(0)
  final InstanceId id;
  @override
  @HiveField(1)
  final ItemId itemId;
  @override
  @HiveField(2)
  final ItemId? drillId;
  @override
  @HiveField(4)
  final ItemContainer hopper;

  @override
  String toString() {
    return 'ItemInstance.minerInstance(id: $id, itemId: $itemId, drillId: $drillId, hopper: $hopper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MinerInstance &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.drillId, drillId) &&
            const DeepCollectionEquality().equals(other.hopper, hopper));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(drillId),
      const DeepCollectionEquality().hash(hopper));

  @JsonKey(ignore: true)
  @override
  $MinerInstanceCopyWith<MinerInstance> get copyWith =>
      _$MinerInstanceCopyWithImpl<MinerInstance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)
        exampleInstance,
    required TResult Function(
            @HiveField(0) InstanceId id,
            @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId,
            @HiveField(4) ItemContainer hopper)
        minerInstance,
    required TResult Function(@HiveField(0) InstanceId id,
            @HiveField(1) ItemId itemId, @HiveField(2) int quantity)
        stackInstance,
  }) {
    return minerInstance(id, itemId, drillId, hopper);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)?
        exampleInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId, @HiveField(4) ItemContainer hopper)?
        minerInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) int quantity)?
        stackInstance,
  }) {
    return minerInstance?.call(id, itemId, drillId, hopper);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)?
        exampleInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId, @HiveField(4) ItemContainer hopper)?
        minerInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) int quantity)?
        stackInstance,
    required TResult orElse(),
  }) {
    if (minerInstance != null) {
      return minerInstance(id, itemId, drillId, hopper);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleInstance value) exampleInstance,
    required TResult Function(MinerInstance value) minerInstance,
    required TResult Function(StackInstance value) stackInstance,
  }) {
    return minerInstance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
    TResult Function(StackInstance value)? stackInstance,
  }) {
    return minerInstance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
    TResult Function(StackInstance value)? stackInstance,
    required TResult orElse(),
  }) {
    if (minerInstance != null) {
      return minerInstance(this);
    }
    return orElse();
  }
}

abstract class MinerInstance extends ItemInstance implements MinerMethods {
  factory MinerInstance(
      {@HiveField(0) required InstanceId id,
      @HiveField(1) required ItemId itemId,
      @HiveField(2) ItemId? drillId,
      @HiveField(4) required ItemContainer hopper}) = _$MinerInstance;
  MinerInstance._() : super._();

  @override
  @HiveField(0)
  InstanceId get id;
  @override
  @HiveField(1)
  ItemId get itemId;
  @HiveField(2)
  ItemId? get drillId;
  @HiveField(4)
  ItemContainer get hopper;
  @override
  @JsonKey(ignore: true)
  $MinerInstanceCopyWith<MinerInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StackInstanceCopyWith<$Res>
    implements $ItemInstanceCopyWith<$Res> {
  factory $StackInstanceCopyWith(
          StackInstance value, $Res Function(StackInstance) then) =
      _$StackInstanceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) InstanceId id,
      @HiveField(1) ItemId itemId,
      @HiveField(2) int quantity});

  @override
  $ItemIdCopyWith<$Res> get itemId;
}

/// @nodoc
class _$StackInstanceCopyWithImpl<$Res> extends _$ItemInstanceCopyWithImpl<$Res>
    implements $StackInstanceCopyWith<$Res> {
  _$StackInstanceCopyWithImpl(
      StackInstance _value, $Res Function(StackInstance) _then)
      : super(_value, (v) => _then(v as StackInstance));

  @override
  StackInstance get _value => super._value as StackInstance;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
    Object? quantity = freezed,
  }) {
    return _then(StackInstance(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as InstanceId,
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
}

/// @nodoc

@HiveType(typeId: 72, adapterName: 'StackInstanceAdapter')
@With<StackMethods>()
class _$StackInstance extends StackInstance with StackMethods {
  _$StackInstance(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.itemId,
      @HiveField(2) required this.quantity})
      : super._();

  @override
  @HiveField(0)
  final InstanceId id;
  @override
  @HiveField(1)
  final ItemId itemId;
  @override
  @HiveField(2)
  final int quantity;

  @override
  String toString() {
    return 'ItemInstance.stackInstance(id: $id, itemId: $itemId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StackInstance &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  $StackInstanceCopyWith<StackInstance> get copyWith =>
      _$StackInstanceCopyWithImpl<StackInstance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)
        exampleInstance,
    required TResult Function(
            @HiveField(0) InstanceId id,
            @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId,
            @HiveField(4) ItemContainer hopper)
        minerInstance,
    required TResult Function(@HiveField(0) InstanceId id,
            @HiveField(1) ItemId itemId, @HiveField(2) int quantity)
        stackInstance,
  }) {
    return stackInstance(id, itemId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)?
        exampleInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId, @HiveField(4) ItemContainer hopper)?
        minerInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) int quantity)?
        stackInstance,
  }) {
    return stackInstance?.call(id, itemId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)?
        exampleInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId, @HiveField(4) ItemContainer hopper)?
        minerInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) int quantity)?
        stackInstance,
    required TResult orElse(),
  }) {
    if (stackInstance != null) {
      return stackInstance(id, itemId, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleInstance value) exampleInstance,
    required TResult Function(MinerInstance value) minerInstance,
    required TResult Function(StackInstance value) stackInstance,
  }) {
    return stackInstance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
    TResult Function(StackInstance value)? stackInstance,
  }) {
    return stackInstance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
    TResult Function(StackInstance value)? stackInstance,
    required TResult orElse(),
  }) {
    if (stackInstance != null) {
      return stackInstance(this);
    }
    return orElse();
  }
}

abstract class StackInstance extends ItemInstance implements StackMethods {
  factory StackInstance(
      {@HiveField(0) required InstanceId id,
      @HiveField(1) required ItemId itemId,
      @HiveField(2) required int quantity}) = _$StackInstance;
  StackInstance._() : super._();

  @override
  @HiveField(0)
  InstanceId get id;
  @override
  @HiveField(1)
  ItemId get itemId;
  @HiveField(2)
  int get quantity;
  @override
  @JsonKey(ignore: true)
  $StackInstanceCopyWith<StackInstance> get copyWith =>
      throw _privateConstructorUsedError;
}
