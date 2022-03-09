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
    case 'minerId':
      return MinerId.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ItemId',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ItemIdTearOff {
  const _$ItemIdTearOff();

  _ItemId itemId(@HiveField(0) String itemId,
      [_ItemType itemType = _ItemType.DEFAULT]) {
    return _ItemId(
      itemId,
      itemType,
    );
  }

  MinerId minerId(@HiveField(0) String itemId,
      [_ItemType itemType = _ItemType.MINER]) {
    return MinerId(
      itemId,
      itemType,
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
  _ItemType get itemType => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0) String itemId, _ItemType itemType)
        itemId,
    required TResult Function(@HiveField(0) String itemId, _ItemType itemType)
        minerId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) String itemId, _ItemType itemType)? itemId,
    TResult Function(@HiveField(0) String itemId, _ItemType itemType)? minerId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) String itemId, _ItemType itemType)? itemId,
    TResult Function(@HiveField(0) String itemId, _ItemType itemType)? minerId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemId value) itemId,
    required TResult Function(MinerId value) minerId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ItemId value)? itemId,
    TResult Function(MinerId value)? minerId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemId value)? itemId,
    TResult Function(MinerId value)? minerId,
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
  $Res call({@HiveField(0) String itemId, _ItemType itemType});
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
    Object? itemType = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as _ItemType,
    ));
  }
}

/// @nodoc
abstract class _$ItemIdCopyWith<$Res> implements $ItemIdCopyWith<$Res> {
  factory _$ItemIdCopyWith(_ItemId value, $Res Function(_ItemId) then) =
      __$ItemIdCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String itemId, _ItemType itemType});
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
    Object? itemType = freezed,
  }) {
    return _then(_ItemId(
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as _ItemType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 66, adapterName: 'ItemIdAdapter')
class _$_ItemId extends _ItemId {
  const _$_ItemId(@HiveField(0) this.itemId,
      [this.itemType = _ItemType.DEFAULT, String? $type])
      : assert(itemType == _ItemType.DEFAULT, 'Use default type only!'),
        $type = $type ?? 'itemId',
        super._();

  factory _$_ItemId.fromJson(Map<String, dynamic> json) =>
      _$$_ItemIdFromJson(json);

  @override
  @HiveField(0)
  final String itemId;
  @JsonKey()
  @override
  final _ItemType itemType;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemId &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.itemType, itemType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(itemType));

  @JsonKey(ignore: true)
  @override
  _$ItemIdCopyWith<_ItemId> get copyWith =>
      __$ItemIdCopyWithImpl<_ItemId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0) String itemId, _ItemType itemType)
        itemId,
    required TResult Function(@HiveField(0) String itemId, _ItemType itemType)
        minerId,
  }) {
    return itemId(this.itemId, itemType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) String itemId, _ItemType itemType)? itemId,
    TResult Function(@HiveField(0) String itemId, _ItemType itemType)? minerId,
  }) {
    return itemId?.call(this.itemId, itemType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) String itemId, _ItemType itemType)? itemId,
    TResult Function(@HiveField(0) String itemId, _ItemType itemType)? minerId,
    required TResult orElse(),
  }) {
    if (itemId != null) {
      return itemId(this.itemId, itemType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemId value) itemId,
    required TResult Function(MinerId value) minerId,
  }) {
    return itemId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ItemId value)? itemId,
    TResult Function(MinerId value)? minerId,
  }) {
    return itemId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemId value)? itemId,
    TResult Function(MinerId value)? minerId,
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
  const factory _ItemId(@HiveField(0) String itemId, [_ItemType itemType]) =
      _$_ItemId;
  const _ItemId._() : super._();

  factory _ItemId.fromJson(Map<String, dynamic> json) = _$_ItemId.fromJson;

  @override
  @HiveField(0)
  String get itemId;
  @override
  _ItemType get itemType;
  @override
  @JsonKey(ignore: true)
  _$ItemIdCopyWith<_ItemId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinerIdCopyWith<$Res> implements $ItemIdCopyWith<$Res> {
  factory $MinerIdCopyWith(MinerId value, $Res Function(MinerId) then) =
      _$MinerIdCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String itemId, _ItemType itemType});
}

/// @nodoc
class _$MinerIdCopyWithImpl<$Res> extends _$ItemIdCopyWithImpl<$Res>
    implements $MinerIdCopyWith<$Res> {
  _$MinerIdCopyWithImpl(MinerId _value, $Res Function(MinerId) _then)
      : super(_value, (v) => _then(v as MinerId));

  @override
  MinerId get _value => super._value as MinerId;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? itemType = freezed,
  }) {
    return _then(MinerId(
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as _ItemType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 69, adapterName: 'MinerIdAdapter')
class _$MinerId extends MinerId {
  const _$MinerId(@HiveField(0) this.itemId,
      [this.itemType = _ItemType.MINER, String? $type])
      : assert(itemType == _ItemType.MINER, 'Use default type only!'),
        $type = $type ?? 'minerId',
        super._();

  factory _$MinerId.fromJson(Map<String, dynamic> json) =>
      _$$MinerIdFromJson(json);

  @override
  @HiveField(0)
  final String itemId;
  @JsonKey()
  @override
  final _ItemType itemType;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MinerId &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.itemType, itemType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(itemType));

  @JsonKey(ignore: true)
  @override
  $MinerIdCopyWith<MinerId> get copyWith =>
      _$MinerIdCopyWithImpl<MinerId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0) String itemId, _ItemType itemType)
        itemId,
    required TResult Function(@HiveField(0) String itemId, _ItemType itemType)
        minerId,
  }) {
    return minerId(this.itemId, itemType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) String itemId, _ItemType itemType)? itemId,
    TResult Function(@HiveField(0) String itemId, _ItemType itemType)? minerId,
  }) {
    return minerId?.call(this.itemId, itemType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) String itemId, _ItemType itemType)? itemId,
    TResult Function(@HiveField(0) String itemId, _ItemType itemType)? minerId,
    required TResult orElse(),
  }) {
    if (minerId != null) {
      return minerId(this.itemId, itemType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemId value) itemId,
    required TResult Function(MinerId value) minerId,
  }) {
    return minerId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ItemId value)? itemId,
    TResult Function(MinerId value)? minerId,
  }) {
    return minerId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemId value)? itemId,
    TResult Function(MinerId value)? minerId,
    required TResult orElse(),
  }) {
    if (minerId != null) {
      return minerId(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MinerIdToJson(this);
  }
}

abstract class MinerId extends ItemId {
  const factory MinerId(@HiveField(0) String itemId, [_ItemType itemType]) =
      _$MinerId;
  const MinerId._() : super._();

  factory MinerId.fromJson(Map<String, dynamic> json) = _$MinerId.fromJson;

  @override
  @HiveField(0)
  String get itemId;
  @override
  _ItemType get itemType;
  @override
  @JsonKey(ignore: true)
  $MinerIdCopyWith<MinerId> get copyWith => throw _privateConstructorUsedError;
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

  ResourceWalletOnlyDefinition resourceWalletOnlyDefinition(
      {required ItemId id,
      required String name,
      required String namePlural,
      required String description}) {
    return ResourceWalletOnlyDefinition(
      id: id,
      name: name,
      namePlural: namePlural,
      description: description,
    );
  }

  ResourceDefinition resourceDefinition(
      {required ItemId id, required String name, required String description}) {
    return ResourceDefinition(
      id: id,
      name: name,
      description: description,
    );
  }

  DrillDefinition drillDefinition(
      {required ItemId id,
      required String name,
      required String description,
      required int damage}) {
    return DrillDefinition(
      id: id,
      name: name,
      description: description,
      damage: damage,
    );
  }

  SwordDefinition swordDefinition(
      {required ItemId id,
      required String name,
      required String namePlural,
      required String description,
      required BuiltMap<WeaponAttributes, double> attributes}) {
    return SwordDefinition(
      id: id,
      name: name,
      namePlural: namePlural,
      description: description,
      attributes: attributes,
    );
  }

  MinerDefinition minerDefinition(
      {required ItemId id,
      required String name,
      required String description,
      required int radius,
      required int depth,
      required int baseDamage,
      required int baseHopperSize,
      required int fuelConsumption,
      required String image}) {
    return MinerDefinition(
      id: id,
      name: name,
      description: description,
      radius: radius,
      depth: depth,
      baseDamage: baseDamage,
      baseHopperSize: baseHopperSize,
      fuelConsumption: fuelConsumption,
      image: image,
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
    required TResult Function(
            ItemId id, String name, String namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(ItemId id, String name, String description)
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
    TResult Function(
            ItemId id, String name, String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(ItemId id, String name, String description)?
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
    TResult Function(
            ItemId id, String name, String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(ItemId id, String name, String description)?
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
  $Res call({ItemId id, String name, String namePlural, String description});

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
    Object? name = freezed,
    Object? namePlural = freezed,
    Object? description = freezed,
  }) {
    return _then(ResourceWalletOnlyDefinition(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural: namePlural == freezed
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
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
class _$ResourceWalletOnlyDefinition implements ResourceWalletOnlyDefinition {
  const _$ResourceWalletOnlyDefinition(
      {required this.id,
      required this.name,
      required this.namePlural,
      required this.description,
      String? $type})
      : $type = $type ?? 'resourceWalletOnlyDefinition';

  factory _$ResourceWalletOnlyDefinition.fromJson(Map<String, dynamic> json) =>
      _$$ResourceWalletOnlyDefinitionFromJson(json);

  @override
  final ItemId id;
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
    return 'ItemDefinition.resourceWalletOnlyDefinition(id: $id, name: $name, namePlural: $namePlural, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResourceWalletOnlyDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
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
    required TResult Function(
            ItemId id, String name, String namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(ItemId id, String name, String description)
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
    return resourceWalletOnlyDefinition(id, name, namePlural, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(ItemId id, String name, String description)?
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
        id, name, namePlural, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(ItemId id, String name, String description)?
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
      return resourceWalletOnlyDefinition(id, name, namePlural, description);
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
        HasPluralName {
  const factory ResourceWalletOnlyDefinition(
      {required ItemId id,
      required String name,
      required String namePlural,
      required String description}) = _$ResourceWalletOnlyDefinition;

  factory ResourceWalletOnlyDefinition.fromJson(Map<String, dynamic> json) =
      _$ResourceWalletOnlyDefinition.fromJson;

  @override
  ItemId get id;
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
  $Res call({ItemId id, String name, String description});

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
  }) {
    return _then(ResourceDefinition(
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
}

/// @nodoc
@JsonSerializable()
@Implements<Resource>()
class _$ResourceDefinition implements ResourceDefinition {
  const _$ResourceDefinition(
      {required this.id,
      required this.name,
      required this.description,
      String? $type})
      : $type = $type ?? 'resourceDefinition';

  factory _$ResourceDefinition.fromJson(Map<String, dynamic> json) =>
      _$$ResourceDefinitionFromJson(json);

  @override
  final ItemId id;
  @override
  final String name;
  @override
  final String description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.resourceDefinition(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResourceDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  $ResourceDefinitionCopyWith<ResourceDefinition> get copyWith =>
      _$ResourceDefinitionCopyWithImpl<ResourceDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemId id, String name, String namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(ItemId id, String name, String description)
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
    return resourceDefinition(id, name, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(ItemId id, String name, String description)?
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
    return resourceDefinition?.call(id, name, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(ItemId id, String name, String description)?
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
      return resourceDefinition(id, name, description);
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

abstract class ResourceDefinition implements ItemDefinition, Resource {
  const factory ResourceDefinition(
      {required ItemId id,
      required String name,
      required String description}) = _$ResourceDefinition;

  factory ResourceDefinition.fromJson(Map<String, dynamic> json) =
      _$ResourceDefinition.fromJson;

  @override
  ItemId get id;
  @override
  String get name;
  @override
  String get description;
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
      damage: damage == freezed
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DrillDefinition implements DrillDefinition {
  const _$DrillDefinition(
      {required this.id,
      required this.name,
      required this.description,
      required this.damage,
      String? $type})
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
    required TResult Function(
            ItemId id, String name, String namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(ItemId id, String name, String description)
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
    TResult Function(
            ItemId id, String name, String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(ItemId id, String name, String description)?
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
    TResult Function(
            ItemId id, String name, String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(ItemId id, String name, String description)?
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
      {required ItemId id,
      required String name,
      required String description,
      required int damage}) = _$DrillDefinition;

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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural: namePlural == freezed
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
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
      {required this.id,
      required this.name,
      required this.namePlural,
      required this.description,
      required this.attributes,
      String? $type})
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
    required TResult Function(
            ItemId id, String name, String namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(ItemId id, String name, String description)
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
    TResult Function(
            ItemId id, String name, String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(ItemId id, String name, String description)?
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
    TResult Function(
            ItemId id, String name, String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(ItemId id, String name, String description)?
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
          {required ItemId id,
          required String name,
          required String namePlural,
          required String description,
          required BuiltMap<WeaponAttributes, double> attributes}) =
      _$SwordDefinition;

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
      radius: radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      depth: depth == freezed
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
      baseDamage: baseDamage == freezed
          ? _value.baseDamage
          : baseDamage // ignore: cast_nullable_to_non_nullable
              as int,
      baseHopperSize: baseHopperSize == freezed
          ? _value.baseHopperSize
          : baseHopperSize // ignore: cast_nullable_to_non_nullable
              as int,
      fuelConsumption: fuelConsumption == freezed
          ? _value.fuelConsumption
          : fuelConsumption // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
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
      {required this.id,
      required this.name,
      required this.description,
      required this.radius,
      required this.depth,
      required this.baseDamage,
      required this.baseHopperSize,
      required this.fuelConsumption,
      required this.image,
      String? $type})
      : assert(id.itemType == _ItemType.MINER, 'Must use a MINER ItemId'),
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
    required TResult Function(
            ItemId id, String name, String namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(ItemId id, String name, String description)
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
    TResult Function(
            ItemId id, String name, String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(ItemId id, String name, String description)?
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
    TResult Function(
            ItemId id, String name, String namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(ItemId id, String name, String description)?
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
      {required ItemId id,
      required String name,
      required String description,
      required int radius,
      required int depth,
      required int baseDamage,
      required int baseHopperSize,
      required int fuelConsumption,
      required String image}) = _$MinerDefinition;

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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)?
        exampleInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId, @HiveField(4) ItemContainer hopper)?
        minerInstance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId)?
        exampleInstance,
    TResult Function(@HiveField(0) InstanceId id, @HiveField(1) ItemId itemId,
            @HiveField(2) ItemId? drillId, @HiveField(4) ItemContainer hopper)?
        minerInstance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExampleInstance value) exampleInstance,
    required TResult Function(MinerInstance value) minerInstance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
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
  }) {
    return exampleInstance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
  }) {
    return exampleInstance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
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
@With<InstanceDefinition<MinerDefinition>>()
@With<MinerMethods>()
class _$MinerInstance extends MinerInstance
    with InstanceDefinition<MinerDefinition>, MinerMethods {
  _$MinerInstance(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.itemId,
      @HiveField(2) this.drillId,
      @HiveField(4) required this.hopper})
      : assert(itemId.itemType == _ItemType.MINER, 'Must use a MINER ItemId'),
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
  }) {
    return minerInstance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
  }) {
    return minerInstance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExampleInstance value)? exampleInstance,
    TResult Function(MinerInstance value)? minerInstance,
    required TResult orElse(),
  }) {
    if (minerInstance != null) {
      return minerInstance(this);
    }
    return orElse();
  }
}

abstract class MinerInstance extends ItemInstance
    implements InstanceDefinition<MinerDefinition>, MinerMethods {
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
