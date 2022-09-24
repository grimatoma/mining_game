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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemDefinitionId _$ItemDefinitionIdFromJson(Map<String, dynamic> json) {
  return _ItemDefinitionId.fromJson(json);
}

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
abstract class _$$_ItemDefinitionIdCopyWith<$Res>
    implements $ItemDefinitionIdCopyWith<$Res> {
  factory _$$_ItemDefinitionIdCopyWith(
          _$_ItemDefinitionId value, $Res Function(_$_ItemDefinitionId) then) =
      __$$_ItemDefinitionIdCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String itemId});
}

/// @nodoc
class __$$_ItemDefinitionIdCopyWithImpl<$Res>
    extends _$ItemDefinitionIdCopyWithImpl<$Res>
    implements _$$_ItemDefinitionIdCopyWith<$Res> {
  __$$_ItemDefinitionIdCopyWithImpl(
      _$_ItemDefinitionId _value, $Res Function(_$_ItemDefinitionId) _then)
      : super(_value, (v) => _then(v as _$_ItemDefinitionId));

  @override
  _$_ItemDefinitionId get _value => super._value as _$_ItemDefinitionId;

  @override
  $Res call({
    Object? itemId = freezed,
  }) {
    return _then(_$_ItemDefinitionId(
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
            other is _$_ItemDefinitionId &&
            const DeepCollectionEquality().equals(other.itemId, itemId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(itemId));

  @JsonKey(ignore: true)
  @override
  _$$_ItemDefinitionIdCopyWith<_$_ItemDefinitionId> get copyWith =>
      __$$_ItemDefinitionIdCopyWithImpl<_$_ItemDefinitionId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemDefinitionIdToJson(
      this,
    );
  }
}

abstract class _ItemDefinitionId extends ItemDefinitionId {
  const factory _ItemDefinitionId(@HiveField(0) final String itemId) =
      _$_ItemDefinitionId;

  const _ItemDefinitionId._() : super._();

  factory _ItemDefinitionId.fromJson(Map<String, dynamic> json) =
      _$_ItemDefinitionId.fromJson;

  @override
  @HiveField(0)
  String get itemId;

  @override
  @JsonKey(ignore: true)
  _$$_ItemDefinitionIdCopyWith<_$_ItemDefinitionId> get copyWith =>
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
            String? namePlural,
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
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)
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
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)?
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
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)?
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
abstract class _$$ResourceDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory _$$ResourceDefinitionCopyWith(_$ResourceDefinition value,
          $Res Function(_$ResourceDefinition) then) =
      __$$ResourceDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemDefinitionId id,
      String name,
      String? namePlural,
      String description,
      String image,
      int maxStackSize});

  @override
  $ItemDefinitionIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$ResourceDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements _$$ResourceDefinitionCopyWith<$Res> {
  __$$ResourceDefinitionCopyWithImpl(
      _$ResourceDefinition _value, $Res Function(_$ResourceDefinition) _then)
      : super(_value, (v) => _then(v as _$ResourceDefinition));

  @override
  _$ResourceDefinition get _value => super._value as _$ResourceDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? namePlural = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? maxStackSize = freezed,
  }) {
    return _then(_$ResourceDefinition(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural: namePlural == freezed
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      maxStackSize: maxStackSize == freezed
          ? _value.maxStackSize
          : maxStackSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceDefinition extends ResourceDefinition {
  const _$ResourceDefinition(
      {required this.id,
      required this.name,
      this.namePlural,
      required this.description,
      required this.image,
      required this.maxStackSize,
      final String? $type})
      : $type = $type ?? 'resourceDefinition',
        super._();

  factory _$ResourceDefinition.fromJson(Map<String, dynamic> json) =>
      _$$ResourceDefinitionFromJson(json);

  @override
  final ItemDefinitionId id;
  @override
  final String name;
  @override
  final String? namePlural;
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
            other is _$ResourceDefinition &&
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

  @JsonKey(ignore: true)
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
  _$$ResourceDefinitionCopyWith<_$ResourceDefinition> get copyWith =>
      __$$ResourceDefinitionCopyWithImpl<_$ResourceDefinition>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
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
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)
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
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)?
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
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)?
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
    return _$$ResourceDefinitionToJson(
      this,
    );
  }
}

abstract class ResourceDefinition extends ItemDefinition
    implements Resource, Stackable, ShowInWallet, CanHavePluralName {
  const factory ResourceDefinition(
      {required final ItemDefinitionId id,
      required final String name,
      final String? namePlural,
      required final String description,
      required final String image,
      required final int maxStackSize}) = _$ResourceDefinition;

  const ResourceDefinition._() : super._();

  factory ResourceDefinition.fromJson(Map<String, dynamic> json) =
      _$ResourceDefinition.fromJson;

  @override
  ItemDefinitionId get id;

  @override
  String get name;

  String? get namePlural;

  @override
  String get description;

  @override
  String get image;

  int get maxStackSize;

  @override
  @JsonKey(ignore: true)
  _$$ResourceDefinitionCopyWith<_$ResourceDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DrillDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory _$$DrillDefinitionCopyWith(
          _$DrillDefinition value, $Res Function(_$DrillDefinition) then) =
      __$$DrillDefinitionCopyWithImpl<$Res>;
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
class __$$DrillDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements _$$DrillDefinitionCopyWith<$Res> {
  __$$DrillDefinitionCopyWithImpl(
      _$DrillDefinition _value, $Res Function(_$DrillDefinition) _then)
      : super(_value, (v) => _then(v as _$DrillDefinition));

  @override
  _$DrillDefinition get _value => super._value as _$DrillDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? damage = freezed,
  }) {
    return _then(_$DrillDefinition(
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
      damage: damage == freezed
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
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.damage,
      final String? $type})
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
            other is _$DrillDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.damage, damage));
  }

  @JsonKey(ignore: true)
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
  _$$DrillDefinitionCopyWith<_$DrillDefinition> get copyWith =>
      __$$DrillDefinitionCopyWithImpl<_$DrillDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
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
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)
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
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)?
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
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)?
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
    return _$$DrillDefinitionToJson(
      this,
    );
  }
}

abstract class DrillDefinition extends ItemDefinition {
  const factory DrillDefinition(
      {required final ItemDefinitionId id,
      required final String name,
      required final String description,
      required final String image,
      required final int damage}) = _$DrillDefinition;

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
  _$$DrillDefinitionCopyWith<_$DrillDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwordDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory _$$SwordDefinitionCopyWith(
          _$SwordDefinition value, $Res Function(_$SwordDefinition) then) =
      __$$SwordDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemDefinitionId id,
      String name,
      String? namePlural,
      String description,
      String image,
      Map<WeaponAttributes, double> attributes});

  @override
  $ItemDefinitionIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$SwordDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements _$$SwordDefinitionCopyWith<$Res> {
  __$$SwordDefinitionCopyWithImpl(
      _$SwordDefinition _value, $Res Function(_$SwordDefinition) _then)
      : super(_value, (v) => _then(v as _$SwordDefinition));

  @override
  _$SwordDefinition get _value => super._value as _$SwordDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? namePlural = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$SwordDefinition(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural: namePlural == freezed
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<WeaponAttributes, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwordDefinition extends SwordDefinition {
  const _$SwordDefinition(
      {required this.id,
      required this.name,
      this.namePlural,
      required this.description,
      required this.image,
      required final Map<WeaponAttributes, double> attributes,
      final String? $type})
      : _attributes = attributes,
        $type = $type ?? 'swordDefinition',
        super._();

  factory _$SwordDefinition.fromJson(Map<String, dynamic> json) =>
      _$$SwordDefinitionFromJson(json);

  @override
  final ItemDefinitionId id;
  @override
  final String name;
  @override
  final String? namePlural;
  @override
  final String description;
  @override
  final String image;
  final Map<WeaponAttributes, double> _attributes;
  @override
  Map<WeaponAttributes, double> get attributes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attributes);
  }

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
            other is _$SwordDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.namePlural, namePlural) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(namePlural),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(_attributes));

  @JsonKey(ignore: true)
  @override
  _$$SwordDefinitionCopyWith<_$SwordDefinition> get copyWith =>
      __$$SwordDefinitionCopyWithImpl<_$SwordDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
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
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)
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
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)?
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
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)?
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
    return _$$SwordDefinitionToJson(
      this,
    );
  }
}

abstract class SwordDefinition extends ItemDefinition
    implements CanHavePluralName {
  const factory SwordDefinition(
          {required final ItemDefinitionId id,
          required final String name,
          final String? namePlural,
          required final String description,
          required final String image,
          required final Map<WeaponAttributes, double> attributes}) =
      _$SwordDefinition;

  const SwordDefinition._() : super._();

  factory SwordDefinition.fromJson(Map<String, dynamic> json) =
      _$SwordDefinition.fromJson;

  @override
  ItemDefinitionId get id;

  @override
  String get name;

  String? get namePlural;

  @override
  String get description;

  @override
  String get image;

  Map<WeaponAttributes, double> get attributes;

  @override
  @JsonKey(ignore: true)
  _$$SwordDefinitionCopyWith<_$SwordDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MinerDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory _$$MinerDefinitionCopyWith(
          _$MinerDefinition value, $Res Function(_$MinerDefinition) then) =
      __$$MinerDefinitionCopyWithImpl<$Res>;
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
class __$$MinerDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements _$$MinerDefinitionCopyWith<$Res> {
  __$$MinerDefinitionCopyWithImpl(
      _$MinerDefinition _value, $Res Function(_$MinerDefinition) _then)
      : super(_value, (v) => _then(v as _$MinerDefinition));

  @override
  _$MinerDefinition get _value => super._value as _$MinerDefinition;

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
    return _then(_$MinerDefinition(
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
class _$MinerDefinition extends MinerDefinition {
  const _$MinerDefinition(
      {required this.id,
      required this.name,
      required this.description,
      required this.radius,
      required this.depth,
      required this.baseDamage,
      required this.baseHopperSize,
      required this.fuelConsumption,
      required this.image,
      final String? $type})
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
// Should this be for all resources or per resource?
  @override
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
            other is _$MinerDefinition &&
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

  @JsonKey(ignore: true)
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
  _$$MinerDefinitionCopyWith<_$MinerDefinition> get copyWith =>
      __$$MinerDefinitionCopyWithImpl<_$MinerDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
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
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)
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
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)?
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
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, String image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            String image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            String image,
            Map<WeaponAttributes, double> attributes)?
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
    return _$$MinerDefinitionToJson(
      this,
    );
  }
}

abstract class MinerDefinition extends ItemDefinition {
  const factory MinerDefinition(
      {required final ItemDefinitionId id,
      required final String name,
      required final String description,
      required final int radius,
      required final int depth,
      required final int baseDamage,
      required final int baseHopperSize,
      required final int fuelConsumption,
      required final String image}) = _$MinerDefinition;

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
  _$$MinerDefinitionCopyWith<_$MinerDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemInstance _$ItemInstanceFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'basicInstance':
      return BasicInstance.fromJson(json);
    case 'minerInstance':
      return MinerInstance.fromJson(json);
    case 'stackInstance':
      return StackInstance.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ItemInstance',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ItemInstance {
  ItemInstanceId get id => throw _privateConstructorUsedError;
  ItemDefinitionId get itemId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemInstanceId id, ItemDefinitionId itemId)
        basicInstance,
    required TResult Function(ItemInstanceId id, ItemDefinitionId itemId,
            ItemDefinitionId? drillId)
        minerInstance,
    required TResult Function(
            ItemInstanceId id, ItemDefinitionId itemId, int quantity)
        stackInstance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId)? basicInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId,
            ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId, int quantity)?
        stackInstance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId)? basicInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId,
            ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId, int quantity)?
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
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemInstanceCopyWith<ItemInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemInstanceCopyWith<$Res> {
  factory $ItemInstanceCopyWith(
          ItemInstance value, $Res Function(ItemInstance) then) =
      _$ItemInstanceCopyWithImpl<$Res>;
  $Res call({ItemInstanceId id, ItemDefinitionId itemId});

  $ItemInstanceIdCopyWith<$Res> get id;
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
  $ItemInstanceIdCopyWith<$Res> get id {
    return $ItemInstanceIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }

  @override
  $ItemDefinitionIdCopyWith<$Res> get itemId {
    return $ItemDefinitionIdCopyWith<$Res>(_value.itemId, (value) {
      return _then(_value.copyWith(itemId: value));
    });
  }
}

/// @nodoc
abstract class _$$BasicInstanceCopyWith<$Res>
    implements $ItemInstanceCopyWith<$Res> {
  factory _$$BasicInstanceCopyWith(
          _$BasicInstance value, $Res Function(_$BasicInstance) then) =
      __$$BasicInstanceCopyWithImpl<$Res>;
  @override
  $Res call({ItemInstanceId id, ItemDefinitionId itemId});

  @override
  $ItemInstanceIdCopyWith<$Res> get id;
  @override
  $ItemDefinitionIdCopyWith<$Res> get itemId;
}

/// @nodoc
class __$$BasicInstanceCopyWithImpl<$Res>
    extends _$ItemInstanceCopyWithImpl<$Res>
    implements _$$BasicInstanceCopyWith<$Res> {
  __$$BasicInstanceCopyWithImpl(
      _$BasicInstance _value, $Res Function(_$BasicInstance) _then)
      : super(_value, (v) => _then(v as _$BasicInstance));

  @override
  _$BasicInstance get _value => super._value as _$BasicInstance;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_$BasicInstance(
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
@JsonSerializable()
class _$BasicInstance extends BasicInstance {
  _$BasicInstance({required this.id, required this.itemId, final String? $type})
      : $type = $type ?? 'basicInstance',
        super._();

  factory _$BasicInstance.fromJson(Map<String, dynamic> json) =>
      _$$BasicInstanceFromJson(json);

  @override
  final ItemInstanceId id;
  @override
  final ItemDefinitionId itemId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemInstance.basicInstance(id: $id, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicInstance &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.itemId, itemId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(itemId));

  @JsonKey(ignore: true)
  @override
  _$$BasicInstanceCopyWith<_$BasicInstance> get copyWith =>
      __$$BasicInstanceCopyWithImpl<_$BasicInstance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemInstanceId id, ItemDefinitionId itemId)
        basicInstance,
    required TResult Function(ItemInstanceId id, ItemDefinitionId itemId,
            ItemDefinitionId? drillId)
        minerInstance,
    required TResult Function(
            ItemInstanceId id, ItemDefinitionId itemId, int quantity)
        stackInstance,
  }) {
    return basicInstance(id, itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId)? basicInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId,
            ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId, int quantity)?
        stackInstance,
  }) {
    return basicInstance?.call(id, itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId)? basicInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId,
            ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId, int quantity)?
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

  @override
  Map<String, dynamic> toJson() {
    return _$$BasicInstanceToJson(
      this,
    );
  }
}

abstract class BasicInstance extends ItemInstance {
  factory BasicInstance(
      {required final ItemInstanceId id,
      required final ItemDefinitionId itemId}) = _$BasicInstance;

  BasicInstance._() : super._();

  factory BasicInstance.fromJson(Map<String, dynamic> json) =
      _$BasicInstance.fromJson;

  @override
  ItemInstanceId get id;

  @override
  ItemDefinitionId get itemId;

  @override
  @JsonKey(ignore: true)
  _$$BasicInstanceCopyWith<_$BasicInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MinerInstanceCopyWith<$Res>
    implements $ItemInstanceCopyWith<$Res> {
  factory _$$MinerInstanceCopyWith(
          _$MinerInstance value, $Res Function(_$MinerInstance) then) =
      __$$MinerInstanceCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemInstanceId id, ItemDefinitionId itemId, ItemDefinitionId? drillId});

  @override
  $ItemInstanceIdCopyWith<$Res> get id;
  @override
  $ItemDefinitionIdCopyWith<$Res> get itemId;
  $ItemDefinitionIdCopyWith<$Res>? get drillId;
}

/// @nodoc
class __$$MinerInstanceCopyWithImpl<$Res>
    extends _$ItemInstanceCopyWithImpl<$Res>
    implements _$$MinerInstanceCopyWith<$Res> {
  __$$MinerInstanceCopyWithImpl(
      _$MinerInstance _value, $Res Function(_$MinerInstance) _then)
      : super(_value, (v) => _then(v as _$MinerInstance));

  @override
  _$MinerInstance get _value => super._value as _$MinerInstance;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
    Object? drillId = freezed,
  }) {
    return _then(_$MinerInstance(
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
@JsonSerializable()
class _$MinerInstance extends MinerInstance with MinerMethods {
  _$MinerInstance(
      {required this.id,
      required this.itemId,
      this.drillId,
      final String? $type})
      : $type = $type ?? 'minerInstance',
        super._();

  factory _$MinerInstance.fromJson(Map<String, dynamic> json) =>
      _$$MinerInstanceFromJson(json);

  @override
  final ItemInstanceId id;
  @override
  final ItemDefinitionId itemId;
  @override
  final ItemDefinitionId? drillId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemInstance.minerInstance(id: $id, itemId: $itemId, drillId: $drillId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinerInstance &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.drillId, drillId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(drillId));

  @JsonKey(ignore: true)
  @override
  _$$MinerInstanceCopyWith<_$MinerInstance> get copyWith =>
      __$$MinerInstanceCopyWithImpl<_$MinerInstance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemInstanceId id, ItemDefinitionId itemId)
        basicInstance,
    required TResult Function(ItemInstanceId id, ItemDefinitionId itemId,
            ItemDefinitionId? drillId)
        minerInstance,
    required TResult Function(
            ItemInstanceId id, ItemDefinitionId itemId, int quantity)
        stackInstance,
  }) {
    return minerInstance(id, itemId, drillId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId)? basicInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId,
            ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId, int quantity)?
        stackInstance,
  }) {
    return minerInstance?.call(id, itemId, drillId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId)? basicInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId,
            ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId, int quantity)?
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

  @override
  Map<String, dynamic> toJson() {
    return _$$MinerInstanceToJson(
      this,
    );
  }
}

abstract class MinerInstance extends ItemInstance implements MinerMethods {
  factory MinerInstance({required final ItemInstanceId id,
    required final ItemDefinitionId itemId,
    final ItemDefinitionId? drillId}) = _$MinerInstance;

  MinerInstance._() : super._();

  factory MinerInstance.fromJson(Map<String, dynamic> json) =
  _$MinerInstance.fromJson;

  @override
  ItemInstanceId get id;

  @override
  ItemDefinitionId get itemId;

  ItemDefinitionId? get drillId;

  @override
  @JsonKey(ignore: true)
  _$$MinerInstanceCopyWith<_$MinerInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StackInstanceCopyWith<$Res>
    implements $ItemInstanceCopyWith<$Res> {
  factory _$$StackInstanceCopyWith(
          _$StackInstance value, $Res Function(_$StackInstance) then) =
      __$$StackInstanceCopyWithImpl<$Res>;
  @override
  $Res call({ItemInstanceId id, ItemDefinitionId itemId, int quantity});

  @override
  $ItemInstanceIdCopyWith<$Res> get id;
  @override
  $ItemDefinitionIdCopyWith<$Res> get itemId;
}

/// @nodoc
class __$$StackInstanceCopyWithImpl<$Res>
    extends _$ItemInstanceCopyWithImpl<$Res>
    implements _$$StackInstanceCopyWith<$Res> {
  __$$StackInstanceCopyWithImpl(
      _$StackInstance _value, $Res Function(_$StackInstance) _then)
      : super(_value, (v) => _then(v as _$StackInstance));

  @override
  _$StackInstance get _value => super._value as _$StackInstance;

  @override
  $Res call({
    Object? id = freezed,
    Object? itemId = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$StackInstance(
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
@JsonSerializable()
class _$StackInstance extends StackInstance with StackMethods {
  _$StackInstance(
      {required this.id,
      required this.itemId,
      required this.quantity,
      final String? $type})
      : $type = $type ?? 'stackInstance',
        super._();

  factory _$StackInstance.fromJson(Map<String, dynamic> json) =>
      _$$StackInstanceFromJson(json);

  @override
  final ItemInstanceId id;
  @override
  final ItemDefinitionId itemId;
  @override
  final int quantity;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemInstance.stackInstance(id: $id, itemId: $itemId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StackInstance &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$$StackInstanceCopyWith<_$StackInstance> get copyWith =>
      __$$StackInstanceCopyWithImpl<_$StackInstance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemInstanceId id, ItemDefinitionId itemId)
        basicInstance,
    required TResult Function(ItemInstanceId id, ItemDefinitionId itemId,
            ItemDefinitionId? drillId)
        minerInstance,
    required TResult Function(
            ItemInstanceId id, ItemDefinitionId itemId, int quantity)
        stackInstance,
  }) {
    return stackInstance(id, itemId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId)? basicInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId,
            ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId, int quantity)?
        stackInstance,
  }) {
    return stackInstance?.call(id, itemId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId)? basicInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId,
            ItemDefinitionId? drillId)?
        minerInstance,
    TResult Function(ItemInstanceId id, ItemDefinitionId itemId, int quantity)?
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

  @override
  Map<String, dynamic> toJson() {
    return _$$StackInstanceToJson(
      this,
    );
  }
}

abstract class StackInstance extends ItemInstance implements StackMethods {
  factory StackInstance({required final ItemInstanceId id,
    required final ItemDefinitionId itemId,
    required final int quantity}) = _$StackInstance;

  StackInstance._() : super._();

  factory StackInstance.fromJson(Map<String, dynamic> json) =
  _$StackInstance.fromJson;

  @override
  ItemInstanceId get id;

  @override
  ItemDefinitionId get itemId;

  int get quantity;

  @override
  @JsonKey(ignore: true)
  _$$StackInstanceCopyWith<_$StackInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemRequirement _$ItemRequirementFromJson(Map<String, dynamic> json) {
  return _ItemRequirement.fromJson(json);
}

/// @nodoc
mixin _$ItemRequirement {
  @ItemDefinitionIdKeyedMapConverter()
  Map<ItemDefinitionId, int> get requiredItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemRequirementCopyWith<ItemRequirement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemRequirementCopyWith<$Res> {
  factory $ItemRequirementCopyWith(
          ItemRequirement value, $Res Function(ItemRequirement) then) =
      _$ItemRequirementCopyWithImpl<$Res>;
  $Res call(
      {@ItemDefinitionIdKeyedMapConverter()
          Map<ItemDefinitionId, int> requiredItems});
}

/// @nodoc
class _$ItemRequirementCopyWithImpl<$Res>
    implements $ItemRequirementCopyWith<$Res> {
  _$ItemRequirementCopyWithImpl(this._value, this._then);

  final ItemRequirement _value;
  // ignore: unused_field
  final $Res Function(ItemRequirement) _then;

  @override
  $Res call({
    Object? requiredItems = freezed,
  }) {
    return _then(_value.copyWith(
      requiredItems: requiredItems == freezed
          ? _value.requiredItems
          : requiredItems // ignore: cast_nullable_to_non_nullable
              as Map<ItemDefinitionId, int>,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemRequirementCopyWith<$Res>
    implements $ItemRequirementCopyWith<$Res> {
  factory _$$_ItemRequirementCopyWith(
          _$_ItemRequirement value, $Res Function(_$_ItemRequirement) then) =
      __$$_ItemRequirementCopyWithImpl<$Res>;
  @override
  $Res call(
      {@ItemDefinitionIdKeyedMapConverter()
          Map<ItemDefinitionId, int> requiredItems});
}

/// @nodoc
class __$$_ItemRequirementCopyWithImpl<$Res>
    extends _$ItemRequirementCopyWithImpl<$Res>
    implements _$$_ItemRequirementCopyWith<$Res> {
  __$$_ItemRequirementCopyWithImpl(
      _$_ItemRequirement _value, $Res Function(_$_ItemRequirement) _then)
      : super(_value, (v) => _then(v as _$_ItemRequirement));

  @override
  _$_ItemRequirement get _value => super._value as _$_ItemRequirement;

  @override
  $Res call({
    Object? requiredItems = freezed,
  }) {
    return _then(_$_ItemRequirement(
      requiredItems == freezed
          ? _value._requiredItems
          : requiredItems // ignore: cast_nullable_to_non_nullable
              as Map<ItemDefinitionId, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemRequirement extends _ItemRequirement {
  const _$_ItemRequirement(
      @ItemDefinitionIdKeyedMapConverter()
          final Map<ItemDefinitionId, int> requiredItems)
      : _requiredItems = requiredItems,
        super._();

  factory _$_ItemRequirement.fromJson(Map<String, dynamic> json) =>
      _$$_ItemRequirementFromJson(json);

  final Map<ItemDefinitionId, int> _requiredItems;
  @override
  @ItemDefinitionIdKeyedMapConverter()
  Map<ItemDefinitionId, int> get requiredItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_requiredItems);
  }

  @override
  String toString() {
    return 'ItemRequirement(requiredItems: $requiredItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemRequirement &&
            const DeepCollectionEquality()
                .equals(other._requiredItems, _requiredItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_requiredItems));

  @JsonKey(ignore: true)
  @override
  _$$_ItemRequirementCopyWith<_$_ItemRequirement> get copyWith =>
      __$$_ItemRequirementCopyWithImpl<_$_ItemRequirement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemRequirementToJson(
      this,
    );
  }
}

abstract class _ItemRequirement extends ItemRequirement {
  const factory _ItemRequirement(
      @ItemDefinitionIdKeyedMapConverter()
          final Map<ItemDefinitionId, int> requiredItems) = _$_ItemRequirement;

  const _ItemRequirement._() : super._();

  factory _ItemRequirement.fromJson(Map<String, dynamic> json) =
      _$_ItemRequirement.fromJson;

  @override
  @ItemDefinitionIdKeyedMapConverter()
  Map<ItemDefinitionId, int> get requiredItems;

  @override
  @JsonKey(ignore: true)
  _$$_ItemRequirementCopyWith<_$_ItemRequirement> get copyWith =>
      throw _privateConstructorUsedError;
}
