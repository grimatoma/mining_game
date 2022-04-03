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

ItemDefinitionId _$ItemDefinitionIdFromJson(Map<String, dynamic> json) {
  return _ItemDefinitionId.fromJson(json);
}

/// @nodoc
class _$ItemDefinitionIdTearOff {
  const _$ItemDefinitionIdTearOff();

  _ItemDefinitionId call(@HiveField(0) String itemId) {
    return _ItemDefinitionId(
      itemId,
    );
  }

  ItemDefinitionId fromJson(Map<String, Object?> json) {
    return ItemDefinitionId.fromJson(json);
  }
}

/// @nodoc
const $ItemDefinitionId = _$ItemDefinitionIdTearOff();

/// @nodoc
mixin _$ItemDefinitionId {
  @HiveField(0)
  String get itemId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemDefinitionIdCopyWith<ItemDefinitionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDefinitionIdCopyWith<$Res> {
  factory $ItemDefinitionIdCopyWith(
          ItemDefinitionId value, $Res Function(ItemDefinitionId) then) =
      _$ItemDefinitionIdCopyWithImpl<$Res>;

  $Res call({@HiveField(0) String itemId});
}

/// @nodoc
class _$ItemDefinitionIdCopyWithImpl<$Res>
    implements $ItemDefinitionIdCopyWith<$Res> {
  _$ItemDefinitionIdCopyWithImpl(this._value, this._then);

  final ItemDefinitionId _value;

  // ignore: unused_field
  final $Res Function(ItemDefinitionId) _then;

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
abstract class _$ItemDefinitionIdCopyWith<$Res>
    implements $ItemDefinitionIdCopyWith<$Res> {
  factory _$ItemDefinitionIdCopyWith(
          _ItemDefinitionId value, $Res Function(_ItemDefinitionId) then) =
      __$ItemDefinitionIdCopyWithImpl<$Res>;

  @override
  $Res call({@HiveField(0) String itemId});
}

/// @nodoc
class __$ItemDefinitionIdCopyWithImpl<$Res>
    extends _$ItemDefinitionIdCopyWithImpl<$Res>
    implements _$ItemDefinitionIdCopyWith<$Res> {
  __$ItemDefinitionIdCopyWithImpl(
      _ItemDefinitionId _value, $Res Function(_ItemDefinitionId) _then)
      : super(_value, (v) => _then(v as _ItemDefinitionId));

  @override
  _ItemDefinitionId get _value => super._value as _ItemDefinitionId;

  @override
  $Res call({
    Object? itemId = freezed,
  }) {
    return _then(_ItemDefinitionId(
      itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 66, adapterName: 'ItemDefinitionIdAdapter')
class _$_ItemDefinitionId extends _ItemDefinitionId {
  const _$_ItemDefinitionId(@HiveField(0) this.itemId) : super._();

  factory _$_ItemDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$$_ItemDefinitionIdFromJson(json);

  @override
  @HiveField(0)
  final String itemId;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemDefinitionId &&
            const DeepCollectionEquality().equals(other.itemId, itemId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(itemId));

  @JsonKey(ignore: true)
  @override
  _$ItemDefinitionIdCopyWith<_ItemDefinitionId> get copyWith =>
      __$ItemDefinitionIdCopyWithImpl<_ItemDefinitionId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemDefinitionIdToJson(this);
  }
}

abstract class _ItemDefinitionId extends ItemDefinitionId {
  const factory _ItemDefinitionId(@HiveField(0) String itemId) =
      _$_ItemDefinitionId;

  const _ItemDefinitionId._() : super._();

  factory _ItemDefinitionId.fromJson(Map<String, dynamic> json) =
      _$_ItemDefinitionId.fromJson;

  @override
  @HiveField(0)
  String get itemId;

  @override
  @JsonKey(ignore: true)
  _$ItemDefinitionIdCopyWith<_ItemDefinitionId> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemDefinition _$ItemDefinitionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
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

  ResourceDefinition resourceDefinition(ItemDefinitionId id, String name,
      String namePlural, String description, String image, int maxStackSize) {
    return ResourceDefinition(
      id,
      name,
      namePlural,
      description,
      image,
      maxStackSize,
    );
  }

  DrillDefinition drillDefinition(ItemDefinitionId id, String name,
      String description, String image, int damage) {
    return DrillDefinition(
      id,
      name,
      description,
      image,
      damage,
    );
  }

  SwordDefinition swordDefinition(
      ItemDefinitionId id,
      String name,
      String namePlural,
      String description,
      String image,
      BuiltMap<WeaponAttributes, double> attributes) {
    return SwordDefinition(
      id,
      name,
      namePlural,
      description,
      image,
      attributes,
    );
  }

  MinerDefinition minerDefinition(
      ItemDefinitionId id,
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
  ItemDefinitionId get id => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  String get description => throw _privateConstructorUsedError;

  String get image => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            int maxStackSize)
        resourceDefinition,
    required TResult Function(ItemDefinitionId id, String name,
            String description, String image, int damage)
        drillDefinition,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
    required TResult Function(
            ItemDefinitionId id,
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
    TResult Function(ItemDefinitionId id, String name, String namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemDefinitionId id,
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
    TResult Function(ItemDefinitionId id, String name, String namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemDefinitionId id,
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
    required TResult Function(ResourceDefinition value) resourceDefinition,
    required TResult Function(DrillDefinition value) drillDefinition,
    required TResult Function(SwordDefinition value) swordDefinition,
    required TResult Function(MinerDefinition value) minerDefinition,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
    TResult Function(MinerDefinition value)? minerDefinition,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

  $Res call(
      {ItemDefinitionId id, String name, String description, String image});

  $ItemDefinitionIdCopyWith<$Res> get id;
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
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ItemDefinitionIdCopyWith<$Res> get id {
    return $ItemDefinitionIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class $ResourceDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory $ResourceDefinitionCopyWith(
          ResourceDefinition value, $Res Function(ResourceDefinition) then) =
      _$ResourceDefinitionCopyWithImpl<$Res>;

  @override
  $Res call(
      {ItemDefinitionId id,
      String name,
      String namePlural,
      String description,
      String image,
      int maxStackSize});

  @override
  $ItemDefinitionIdCopyWith<$Res> get id;
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
    Object? namePlural = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? maxStackSize = freezed,
  }) {
    return _then(ResourceDefinition(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
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
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
@Implements<ShowInWallet>()
@Implements<HasPluralName>()
class _$ResourceDefinition extends ResourceDefinition {
  const _$ResourceDefinition(this.id, this.name, this.namePlural,
      this.description, this.image, this.maxStackSize,
      {String? $type})
      : $type = $type ?? 'resourceDefinition',
        super._();

  factory _$ResourceDefinition.fromJson(Map<String, dynamic> json) =>
      _$$ResourceDefinitionFromJson(json);

  @override
  final ItemDefinitionId id;
  @override
  final String name;
  @override
  final String namePlural;
  @override
  final String description;
  @override
  final String image;
  @override
  final int maxStackSize;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.resourceDefinition(id: $id, name: $name, namePlural: $namePlural, description: $description, image: $image, maxStackSize: $maxStackSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResourceDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.namePlural, namePlural) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.maxStackSize, maxStackSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(namePlural),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(maxStackSize));

  @JsonKey(ignore: true)
  @override
  $ResourceDefinitionCopyWith<ResourceDefinition> get copyWith =>
      _$ResourceDefinitionCopyWithImpl<ResourceDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            int maxStackSize)
        resourceDefinition,
    required TResult Function(ItemDefinitionId id, String name,
            String description, String image, int damage)
        drillDefinition,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
    required TResult Function(
            ItemDefinitionId id,
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
    return resourceDefinition(
        id, name, namePlural, description, image, maxStackSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemDefinitionId id,
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
    return resourceDefinition?.call(
        id, name, namePlural, description, image, maxStackSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemDefinitionId id,
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
      return resourceDefinition(
          id, name, namePlural, description, image, maxStackSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
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

abstract class ResourceDefinition extends ItemDefinition
    implements Resource, Stackable, ShowInWallet, HasPluralName {
  const factory ResourceDefinition(
      ItemDefinitionId id,
      String name,
      String namePlural,
      String description,
      String image,
      int maxStackSize) = _$ResourceDefinition;

  const ResourceDefinition._() : super._();

  factory ResourceDefinition.fromJson(Map<String, dynamic> json) =
      _$ResourceDefinition.fromJson;

  @override
  ItemDefinitionId get id;

  @override
  String get name;

  String get namePlural;

  @override
  String get description;

  @override
  String get image;

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
  $Res call(
      {ItemDefinitionId id,
      String name,
      String description,
      String image,
      int damage});

  @override
  $ItemDefinitionIdCopyWith<$Res> get id;
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
    Object? image = freezed,
    Object? damage = freezed,
  }) {
    return _then(DrillDefinition(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$DrillDefinition extends DrillDefinition {
  const _$DrillDefinition(
      this.id, this.name, this.description, this.image, this.damage,
      {String? $type})
      : $type = $type ?? 'drillDefinition',
        super._();

  factory _$DrillDefinition.fromJson(Map<String, dynamic> json) =>
      _$$DrillDefinitionFromJson(json);

  @override
  final ItemDefinitionId id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String image;
  @override
  final int damage;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.drillDefinition(id: $id, name: $name, description: $description, image: $image, damage: $damage)';
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
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.damage, damage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(damage));

  @JsonKey(ignore: true)
  @override
  $DrillDefinitionCopyWith<DrillDefinition> get copyWith =>
      _$DrillDefinitionCopyWithImpl<DrillDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            int maxStackSize)
        resourceDefinition,
    required TResult Function(ItemDefinitionId id, String name,
            String description, String image, int damage)
        drillDefinition,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
    required TResult Function(
            ItemDefinitionId id,
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
    return drillDefinition(id, name, description, image, damage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemDefinitionId id,
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
    return drillDefinition?.call(id, name, description, image, damage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemDefinitionId id,
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
      return drillDefinition(id, name, description, image, damage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
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

abstract class DrillDefinition extends ItemDefinition {
  const factory DrillDefinition(ItemDefinitionId id, String name,
      String description, String image, int damage) = _$DrillDefinition;

  const DrillDefinition._() : super._();

  factory DrillDefinition.fromJson(Map<String, dynamic> json) =
      _$DrillDefinition.fromJson;

  @override
  ItemDefinitionId get id;

  @override
  String get name;

  @override
  String get description;

  @override
  String get image;

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
      {ItemDefinitionId id,
      String name,
      String namePlural,
      String description,
      String image,
      BuiltMap<WeaponAttributes, double> attributes});

  @override
  $ItemDefinitionIdCopyWith<$Res> get id;
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
    Object? image = freezed,
    Object? attributes = freezed,
  }) {
    return _then(SwordDefinition(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
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
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
class _$SwordDefinition extends SwordDefinition {
  const _$SwordDefinition(this.id, this.name, this.namePlural, this.description,
      this.image, this.attributes,
      {String? $type})
      : $type = $type ?? 'swordDefinition',
        super._();

  factory _$SwordDefinition.fromJson(Map<String, dynamic> json) =>
      _$$SwordDefinitionFromJson(json);

  @override
  final ItemDefinitionId id;
  @override
  final String name;
  @override
  final String namePlural;
  @override
  final String description;
  @override
  final String image;
  @override
  final BuiltMap<WeaponAttributes, double> attributes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.swordDefinition(id: $id, name: $name, namePlural: $namePlural, description: $description, image: $image, attributes: $attributes)';
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
            const DeepCollectionEquality().equals(other.image, image) &&
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
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(attributes));

  @JsonKey(ignore: true)
  @override
  $SwordDefinitionCopyWith<SwordDefinition> get copyWith =>
      _$SwordDefinitionCopyWithImpl<SwordDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            int maxStackSize)
        resourceDefinition,
    required TResult Function(ItemDefinitionId id, String name,
            String description, String image, int damage)
        drillDefinition,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
    required TResult Function(
            ItemDefinitionId id,
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
    return swordDefinition(
        id, name, namePlural, description, image, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemDefinitionId id,
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
    return swordDefinition?.call(
        id, name, namePlural, description, image, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemDefinitionId id,
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
      return swordDefinition(
          id, name, namePlural, description, image, attributes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
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

abstract class SwordDefinition extends ItemDefinition implements HasPluralName {
  const factory SwordDefinition(
      ItemDefinitionId id,
      String name,
      String namePlural,
      String description,
      String image,
      BuiltMap<WeaponAttributes, double> attributes) = _$SwordDefinition;

  const SwordDefinition._() : super._();

  factory SwordDefinition.fromJson(Map<String, dynamic> json) =
      _$SwordDefinition.fromJson;

  @override
  ItemDefinitionId get id;

  @override
  String get name;

  String get namePlural;

  @override
  String get description;

  @override
  String get image;

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
      {ItemDefinitionId id,
      String name,
      String description,
      int radius,
      int depth,
      int baseDamage,
      int baseHopperSize,
      int fuelConsumption,
      String image});

  @override
  $ItemDefinitionIdCopyWith<$Res> get id;
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
              as ItemDefinitionId,
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
class _$MinerDefinition extends MinerDefinition {
  const _$MinerDefinition(
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
      : $type = $type ?? 'minerDefinition',
        super._();

  factory _$MinerDefinition.fromJson(Map<String, dynamic> json) =>
      _$$MinerDefinitionFromJson(json);

  @override
  final ItemDefinitionId id;
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
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            int maxStackSize)
        resourceDefinition,
    required TResult Function(ItemDefinitionId id, String name,
            String description, String image, int damage)
        drillDefinition,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
    required TResult Function(
            ItemDefinitionId id,
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
    TResult Function(ItemDefinitionId id, String name, String namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemDefinitionId id,
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
    TResult Function(ItemDefinitionId id, String name, String namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String namePlural,
            String description,
            String image,
            BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    TResult Function(
            ItemDefinitionId id,
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

abstract class MinerDefinition extends ItemDefinition {
  const factory MinerDefinition(
      ItemDefinitionId id,
      String name,
      String description,
      int radius,
      int depth,
      int baseDamage,
      int baseHopperSize,
      int fuelConsumption,
      String image) = _$MinerDefinition;

  const MinerDefinition._() : super._();

  factory MinerDefinition.fromJson(Map<String, dynamic> json) =
      _$MinerDefinition.fromJson;

  @override
  ItemDefinitionId get id;

  @override
  String get name;

  @override
  String get description;

  int get radius;

  int get depth;

  int get baseDamage; // Should this be for all resources or per resource?
  int get baseHopperSize;

  int get fuelConsumption;

  @override
  String get image;

  @override
  @JsonKey(ignore: true)
  $MinerDefinitionCopyWith<MinerDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ItemInstanceTearOff {
  const _$ItemInstanceTearOff();

  BasicInstance basicInstance(
      {@HiveField(0) required ItemInstanceId id,
      @HiveField(1) required ItemDefinitionId itemId}) {
    return BasicInstance(
      id: id,
      itemId: itemId,
    );
  }

  MinerInstance minerInstance(
      {@HiveField(0) required ItemInstanceId id,
      @HiveField(1) required ItemDefinitionId itemId,
      @HiveField(2) ItemDefinitionId? drillId}) {
    return MinerInstance(
      id: id,
      itemId: itemId,
      drillId: drillId,
    );
  }

  StackInstance stackInstance(
      {@HiveField(0) required ItemInstanceId id,
      @HiveField(1) required ItemDefinitionId itemId,
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
  ItemInstanceId get id => throw _privateConstructorUsedError;

  @HiveField(1)
  ItemDefinitionId get itemId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId)
        basicInstance,
    required TResult Function(
            @HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId,
            @HiveField(2) ItemDefinitionId? drillId)
        minerInstance,
    required TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId, @HiveField(2) int quantity)
        stackInstance,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId)?
        basicInstance,
    TResult Function(
            @HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId,
            @HiveField(2) ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId, @HiveField(2) int quantity)?
        stackInstance,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId)?
        basicInstance,
    TResult Function(
            @HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId,
            @HiveField(2) ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId, @HiveField(2) int quantity)?
        stackInstance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasicInstance value) basicInstance,
    required TResult Function(MinerInstance value) minerInstance,
    required TResult Function(StackInstance value) stackInstance,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BasicInstance value)? basicInstance,
    TResult Function(MinerInstance value)? minerInstance,
    TResult Function(StackInstance value)? stackInstance,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasicInstance value)? basicInstance,
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

  $Res call(
      {@HiveField(0) ItemInstanceId id, @HiveField(1) ItemDefinitionId itemId});

  $ItemDefinitionIdCopyWith<$Res> get itemId;
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
              as ItemInstanceId,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
    ));
  }

  @override
  $ItemDefinitionIdCopyWith<$Res> get itemId {
    return $ItemDefinitionIdCopyWith<$Res>(_value.itemId, (value) {
      return _then(_value.copyWith(itemId: value));
    });
  }
}

/// @nodoc
abstract class $BasicInstanceCopyWith<$Res>
    implements $ItemInstanceCopyWith<$Res> {
  factory $BasicInstanceCopyWith(
          BasicInstance value, $Res Function(BasicInstance) then) =
      _$BasicInstanceCopyWithImpl<$Res>;

  @override
  $Res call(
      {@HiveField(0) ItemInstanceId id, @HiveField(1) ItemDefinitionId itemId});

  @override
  $ItemDefinitionIdCopyWith<$Res> get itemId;
}

/// @nodoc
class _$BasicInstanceCopyWithImpl<$Res> extends _$ItemInstanceCopyWithImpl<$Res>
    implements $BasicInstanceCopyWith<$Res> {
  _$BasicInstanceCopyWithImpl(
      BasicInstance _value, $Res Function(BasicInstance) _then)
      : super(_value, (v) => _then(v as BasicInstance));

  @override
  BasicInstance get _value => super._value as BasicInstance;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
  }) {
    return _then(BasicInstance(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemInstanceId,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 10, adapterName: 'BasicInstanceAdapter')
class _$BasicInstance extends BasicInstance {
  _$BasicInstance(
      {@HiveField(0) required this.id, @HiveField(1) required this.itemId})
      : super._();

  @override
  @HiveField(0)
  final ItemInstanceId id;
  @override
  @HiveField(1)
  final ItemDefinitionId itemId;

  @override
  String toString() {
    return 'ItemInstance.basicInstance(id: $id, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicInstance &&
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
  $BasicInstanceCopyWith<BasicInstance> get copyWith =>
      _$BasicInstanceCopyWithImpl<BasicInstance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId)
        basicInstance,
    required TResult Function(
            @HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId,
            @HiveField(2) ItemDefinitionId? drillId)
        minerInstance,
    required TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId, @HiveField(2) int quantity)
        stackInstance,
  }) {
    return basicInstance(id, itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId)?
        basicInstance,
    TResult Function(
            @HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId,
            @HiveField(2) ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId, @HiveField(2) int quantity)?
        stackInstance,
  }) {
    return basicInstance?.call(id, itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId)?
        basicInstance,
    TResult Function(
            @HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId,
            @HiveField(2) ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId, @HiveField(2) int quantity)?
        stackInstance,
    required TResult orElse(),
  }) {
    if (basicInstance != null) {
      return basicInstance(id, itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasicInstance value) basicInstance,
    required TResult Function(MinerInstance value) minerInstance,
    required TResult Function(StackInstance value) stackInstance,
  }) {
    return basicInstance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BasicInstance value)? basicInstance,
    TResult Function(MinerInstance value)? minerInstance,
    TResult Function(StackInstance value)? stackInstance,
  }) {
    return basicInstance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasicInstance value)? basicInstance,
    TResult Function(MinerInstance value)? minerInstance,
    TResult Function(StackInstance value)? stackInstance,
    required TResult orElse(),
  }) {
    if (basicInstance != null) {
      return basicInstance(this);
    }
    return orElse();
  }
}

abstract class BasicInstance extends ItemInstance {
  factory BasicInstance(
      {@HiveField(0) required ItemInstanceId id,
      @HiveField(1) required ItemDefinitionId itemId}) = _$BasicInstance;

  BasicInstance._() : super._();

  @override
  @HiveField(0)
  ItemInstanceId get id;

  @override
  @HiveField(1)
  ItemDefinitionId get itemId;

  @override
  @JsonKey(ignore: true)
  $BasicInstanceCopyWith<BasicInstance> get copyWith =>
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
      {@HiveField(0) ItemInstanceId id,
      @HiveField(1) ItemDefinitionId itemId,
      @HiveField(2) ItemDefinitionId? drillId});

  @override
  $ItemDefinitionIdCopyWith<$Res> get itemId;

  $ItemDefinitionIdCopyWith<$Res>? get drillId;
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
  }) {
    return _then(MinerInstance(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemInstanceId,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      drillId: drillId == freezed
          ? _value.drillId
          : drillId // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId?,
    ));
  }

  @override
  $ItemDefinitionIdCopyWith<$Res>? get drillId {
    if (_value.drillId == null) {
      return null;
    }

    return $ItemDefinitionIdCopyWith<$Res>(_value.drillId!, (value) {
      return _then(_value.copyWith(drillId: value));
    });
  }
}

/// @nodoc

@HiveType(typeId: 104, adapterName: 'MinerInstanceAdapter')
@With<MinerMethods>()
class _$MinerInstance extends MinerInstance with MinerMethods {
  _$MinerInstance(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.itemId,
      @HiveField(2) this.drillId})
      : super._();

  @override
  @HiveField(0)
  final ItemInstanceId id;
  @override
  @HiveField(1)
  final ItemDefinitionId itemId;
  @override
  @HiveField(2)
  final ItemDefinitionId? drillId;

  @override
  String toString() {
    return 'ItemInstance.minerInstance(id: $id, itemId: $itemId, drillId: $drillId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MinerInstance &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.drillId, drillId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(drillId));

  @JsonKey(ignore: true)
  @override
  $MinerInstanceCopyWith<MinerInstance> get copyWith =>
      _$MinerInstanceCopyWithImpl<MinerInstance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId)
        basicInstance,
    required TResult Function(
            @HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId,
            @HiveField(2) ItemDefinitionId? drillId)
        minerInstance,
    required TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId, @HiveField(2) int quantity)
        stackInstance,
  }) {
    return minerInstance(id, itemId, drillId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId)?
        basicInstance,
    TResult Function(
            @HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId,
            @HiveField(2) ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId, @HiveField(2) int quantity)?
        stackInstance,
  }) {
    return minerInstance?.call(id, itemId, drillId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId)?
        basicInstance,
    TResult Function(
            @HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId,
            @HiveField(2) ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId, @HiveField(2) int quantity)?
        stackInstance,
    required TResult orElse(),
  }) {
    if (minerInstance != null) {
      return minerInstance(id, itemId, drillId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasicInstance value) basicInstance,
    required TResult Function(MinerInstance value) minerInstance,
    required TResult Function(StackInstance value) stackInstance,
  }) {
    return minerInstance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BasicInstance value)? basicInstance,
    TResult Function(MinerInstance value)? minerInstance,
    TResult Function(StackInstance value)? stackInstance,
  }) {
    return minerInstance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasicInstance value)? basicInstance,
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
      {@HiveField(0) required ItemInstanceId id,
      @HiveField(1) required ItemDefinitionId itemId,
      @HiveField(2) ItemDefinitionId? drillId}) = _$MinerInstance;

  MinerInstance._() : super._();

  @override
  @HiveField(0)
  ItemInstanceId get id;

  @override
  @HiveField(1)
  ItemDefinitionId get itemId;

  @HiveField(2)
  ItemDefinitionId? get drillId;

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
      {@HiveField(0) ItemInstanceId id,
      @HiveField(1) ItemDefinitionId itemId,
      @HiveField(2) int quantity});

  @override
  $ItemDefinitionIdCopyWith<$Res> get itemId;
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
              as ItemInstanceId,
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
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
  final ItemInstanceId id;
  @override
  @HiveField(1)
  final ItemDefinitionId itemId;
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
    required TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId)
        basicInstance,
    required TResult Function(
            @HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId,
            @HiveField(2) ItemDefinitionId? drillId)
        minerInstance,
    required TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId, @HiveField(2) int quantity)
        stackInstance,
  }) {
    return stackInstance(id, itemId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId)?
        basicInstance,
    TResult Function(
            @HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId,
            @HiveField(2) ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId, @HiveField(2) int quantity)?
        stackInstance,
  }) {
    return stackInstance?.call(id, itemId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId)?
        basicInstance,
    TResult Function(
            @HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId,
            @HiveField(2) ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(@HiveField(0) ItemInstanceId id,
            @HiveField(1) ItemDefinitionId itemId, @HiveField(2) int quantity)?
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
    required TResult Function(BasicInstance value) basicInstance,
    required TResult Function(MinerInstance value) minerInstance,
    required TResult Function(StackInstance value) stackInstance,
  }) {
    return stackInstance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BasicInstance value)? basicInstance,
    TResult Function(MinerInstance value)? minerInstance,
    TResult Function(StackInstance value)? stackInstance,
  }) {
    return stackInstance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasicInstance value)? basicInstance,
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
      {@HiveField(0) required ItemInstanceId id,
      @HiveField(1) required ItemDefinitionId itemId,
      @HiveField(2) required int quantity}) = _$StackInstance;

  StackInstance._() : super._();

  @override
  @HiveField(0)
  ItemInstanceId get id;

  @override
  @HiveField(1)
  ItemDefinitionId get itemId;

  @HiveField(2)
  int get quantity;

  @override
  @JsonKey(ignore: true)
  $StackInstanceCopyWith<StackInstance> get copyWith =>
      throw _privateConstructorUsedError;
}
