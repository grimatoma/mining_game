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
  $Res call({String itemId});
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
  $Res call({String itemId});
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
class _$_ItemDefinitionId extends _ItemDefinitionId {
  const _$_ItemDefinitionId(this.itemId) : super._();

  factory _$_ItemDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$$_ItemDefinitionIdFromJson(json);

  @override
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
  const factory _ItemDefinitionId(final String itemId) = _$_ItemDefinitionId;
  const _ItemDefinitionId._() : super._();

  factory _ItemDefinitionId.fromJson(Map<String, dynamic> json) =
      _$_ItemDefinitionId.fromJson;

  @override
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

  ImageDefinition get image => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            int maxStackSize)
        resourceDefinition,
    required TResult Function(ItemDefinitionId id, String name,
            String description, ImageDefinition image, int damage)
        drillDefinition,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)
        minerDefinition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, ImageDefinition image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)?
        minerDefinition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, ImageDefinition image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)?
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
      {ItemDefinitionId id,
      String name,
      String description,
      ImageDefinition image});

  $ItemDefinitionIdCopyWith<$Res> get id;

  $ImageDefinitionCopyWith<$Res> get image;
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
              as ImageDefinition,
    ));
  }

  @override
  $ItemDefinitionIdCopyWith<$Res> get id {
    return $ItemDefinitionIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }

  @override
  $ImageDefinitionCopyWith<$Res> get image {
    return $ImageDefinitionCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
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
      ImageDefinition image,
      int maxStackSize});

  @override
  $ItemDefinitionIdCopyWith<$Res> get id;

  @override
  $ImageDefinitionCopyWith<$Res> get image;
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
              as ImageDefinition,
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
  final ImageDefinition image;
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
            ImageDefinition image,
            int maxStackSize)
        resourceDefinition,
    required TResult Function(ItemDefinitionId id, String name,
            String description, ImageDefinition image, int damage)
        drillDefinition,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)
        minerDefinition,
  }) {
    return resourceDefinition(
        id, name, namePlural, description, image, maxStackSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, ImageDefinition image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)?
        minerDefinition,
  }) {
    return resourceDefinition?.call(
        id, name, namePlural, description, image, maxStackSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, ImageDefinition image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)?
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
      required final ImageDefinition image,
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
  ImageDefinition get image;

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
      ImageDefinition image,
      int damage});

  @override
  $ItemDefinitionIdCopyWith<$Res> get id;

  @override
  $ImageDefinitionCopyWith<$Res> get image;
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
              as ImageDefinition,
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
  final ImageDefinition image;
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
            ImageDefinition image,
            int maxStackSize)
        resourceDefinition,
    required TResult Function(ItemDefinitionId id, String name,
            String description, ImageDefinition image, int damage)
        drillDefinition,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)
        minerDefinition,
  }) {
    return drillDefinition(id, name, description, image, damage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, ImageDefinition image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)?
        minerDefinition,
  }) {
    return drillDefinition?.call(id, name, description, image, damage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, ImageDefinition image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)?
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
      required final ImageDefinition image,
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
  ImageDefinition get image;

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
      ImageDefinition image,
      Map<WeaponAttributes, double> attributes});

  @override
  $ItemDefinitionIdCopyWith<$Res> get id;

  @override
  $ImageDefinitionCopyWith<$Res> get image;
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
              as ImageDefinition,
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
  final ImageDefinition image;
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
            ImageDefinition image,
            int maxStackSize)
        resourceDefinition,
    required TResult Function(ItemDefinitionId id, String name,
            String description, ImageDefinition image, int damage)
        drillDefinition,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)
        minerDefinition,
  }) {
    return swordDefinition(
        id, name, namePlural, description, image, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, ImageDefinition image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)?
        minerDefinition,
  }) {
    return swordDefinition?.call(
        id, name, namePlural, description, image, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, ImageDefinition image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)?
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
          required final ImageDefinition image,
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
  ImageDefinition get image;

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
      ImageDefinition image});

  @override
  $ItemDefinitionIdCopyWith<$Res> get id;

  @override
  $ImageDefinitionCopyWith<$Res> get image;
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
              as ImageDefinition,
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
  final ImageDefinition image;

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
            ImageDefinition image,
            int maxStackSize)
        resourceDefinition,
    required TResult Function(ItemDefinitionId id, String name,
            String description, ImageDefinition image, int damage)
        drillDefinition,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)
        minerDefinition,
  }) {
    return minerDefinition(id, name, description, radius, depth, baseDamage,
        baseHopperSize, fuelConsumption, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, ImageDefinition image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)?
        minerDefinition,
  }) {
    return minerDefinition?.call(id, name, description, radius, depth,
        baseDamage, baseHopperSize, fuelConsumption, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, ImageDefinition image, int maxStackSize)?
        resourceDefinition,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drillDefinition,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
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
            ImageDefinition image)?
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
      required final ImageDefinition image}) = _$MinerDefinition;
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
  ImageDefinition get image;

  @override
  @JsonKey(ignore: true)
  _$$MinerDefinitionCopyWith<_$MinerDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageDefinition _$ImageDefinitionFromJson(Map<String, dynamic> json) {
  return _ImageDefinition.fromJson(json);
}

/// @nodoc
mixin _$ImageDefinition {
  String get path => throw _privateConstructorUsedError;

  int? get row => throw _privateConstructorUsedError;

  int? get column => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageDefinitionCopyWith<ImageDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDefinitionCopyWith<$Res> {
  factory $ImageDefinitionCopyWith(
          ImageDefinition value, $Res Function(ImageDefinition) then) =
      _$ImageDefinitionCopyWithImpl<$Res>;

  $Res call({String path, int? row, int? column});
}

/// @nodoc
class _$ImageDefinitionCopyWithImpl<$Res>
    implements $ImageDefinitionCopyWith<$Res> {
  _$ImageDefinitionCopyWithImpl(this._value, this._then);

  final ImageDefinition _value;

  // ignore: unused_field
  final $Res Function(ImageDefinition) _then;

  @override
  $Res call({
    Object? path = freezed,
    Object? row = freezed,
    Object? column = freezed,
  }) {
    return _then(_value.copyWith(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int?,
      column: column == freezed
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageDefinitionCopyWith<$Res>
    implements $ImageDefinitionCopyWith<$Res> {
  factory _$$_ImageDefinitionCopyWith(
          _$_ImageDefinition value, $Res Function(_$_ImageDefinition) then) =
      __$$_ImageDefinitionCopyWithImpl<$Res>;

  @override
  $Res call({String path, int? row, int? column});
}

/// @nodoc
class __$$_ImageDefinitionCopyWithImpl<$Res>
    extends _$ImageDefinitionCopyWithImpl<$Res>
    implements _$$_ImageDefinitionCopyWith<$Res> {
  __$$_ImageDefinitionCopyWithImpl(
      _$_ImageDefinition _value, $Res Function(_$_ImageDefinition) _then)
      : super(_value, (v) => _then(v as _$_ImageDefinition));

  @override
  _$_ImageDefinition get _value => super._value as _$_ImageDefinition;

  @override
  $Res call({
    Object? path = freezed,
    Object? row = freezed,
    Object? column = freezed,
  }) {
    return _then(_$_ImageDefinition(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int?,
      column: column == freezed
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageDefinition extends _ImageDefinition {
  const _$_ImageDefinition(this.path, {this.row, this.column}) : super._();

  factory _$_ImageDefinition.fromJson(Map<String, dynamic> json) =>
      _$$_ImageDefinitionFromJson(json);

  @override
  final String path;
  @override
  final int? row;
  @override
  final int? column;

  @override
  String toString() {
    return 'ImageDefinition(path: $path, row: $row, column: $column)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageDefinition &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.row, row) &&
            const DeepCollectionEquality().equals(other.column, column));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(row),
      const DeepCollectionEquality().hash(column));

  @JsonKey(ignore: true)
  @override
  _$$_ImageDefinitionCopyWith<_$_ImageDefinition> get copyWith =>
      __$$_ImageDefinitionCopyWithImpl<_$_ImageDefinition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageDefinitionToJson(
      this,
    );
  }
}

abstract class _ImageDefinition extends ImageDefinition {
  const factory _ImageDefinition(final String path,
      {final int? row, final int? column}) = _$_ImageDefinition;

  const _ImageDefinition._() : super._();

  factory _ImageDefinition.fromJson(Map<String, dynamic> json) =
      _$_ImageDefinition.fromJson;

  @override
  String get path;

  @override
  int? get row;

  @override
  int? get column;

  @override
  @JsonKey(ignore: true)
  _$$_ImageDefinitionCopyWith<_$_ImageDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}
