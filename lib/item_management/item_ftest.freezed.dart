// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_ftest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemId _$ItemIdFromJson(Map<String, dynamic> json) {
  return _ItemId.fromJson(json);
}

/// @nodoc
class _$ItemIdTearOff {
  const _$ItemIdTearOff();

  _ItemId call(@HiveField(0) String itemId) {
    return _ItemId(
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
  const _$_ItemId(@HiveField(0) this.itemId) : super._();

  factory _$_ItemId.fromJson(Map<String, dynamic> json) =>
      _$$_ItemIdFromJson(json);

  @override
  @HiveField(0)
  final String itemId;

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
      String? namePlural,
      required String description}) {
    return ResourceWalletOnlyDefinition(
      id: id,
      name: name,
      namePlural: namePlural,
      description: description,
    );
  }

  ResourceDefinition resourceDefinition(
      {required ItemId id,
      required String name,
      String? namePlural,
      required String description}) {
    return ResourceDefinition(
      id: id,
      name: name,
      namePlural: namePlural,
      description: description,
    );
  }

  DrillDefinition drillDefinition(
      {required ItemId id,
      required String name,
      String? namePlural,
      required String description,
      required int damage}) {
    return DrillDefinition(
      id: id,
      name: name,
      namePlural: namePlural,
      description: description,
      damage: damage,
    );
  }

  SwordDefinition swordDefinition(
      {required ItemId id,
      required String name,
      String? namePlural,
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
  String? get namePlural => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemId id, String name, String? namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(
            ItemId id, String name, String? namePlural, String description)
        resourceDefinition,
    required TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)
        drillDefinition,
    required TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResourceWalletOnlyDefinition value)?
        resourceWalletOnlyDefinition,
    TResult Function(ResourceDefinition value)? resourceDefinition,
    TResult Function(DrillDefinition value)? drillDefinition,
    TResult Function(SwordDefinition value)? swordDefinition,
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
  $Res call({ItemId id, String name, String? namePlural, String description});

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
    Object? namePlural = freezed,
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
      namePlural: namePlural == freezed
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({ItemId id, String name, String? namePlural, String description});

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
              as String?,
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
class _$ResourceWalletOnlyDefinition implements ResourceWalletOnlyDefinition {
  const _$ResourceWalletOnlyDefinition(
      {required this.id,
      required this.name,
      this.namePlural,
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
  final String? namePlural;
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
            ItemId id, String name, String? namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(
            ItemId id, String name, String? namePlural, String description)
        resourceDefinition,
    required TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)
        drillDefinition,
    required TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
  }) {
    return resourceWalletOnlyDefinition(id, name, namePlural, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
  }) {
    return resourceWalletOnlyDefinition?.call(
        id, name, namePlural, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
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
    implements ItemDefinition, HideInInventory, ShowInWallet, Resource {
  const factory ResourceWalletOnlyDefinition(
      {required ItemId id,
      required String name,
      String? namePlural,
      required String description}) = _$ResourceWalletOnlyDefinition;

  factory ResourceWalletOnlyDefinition.fromJson(Map<String, dynamic> json) =
      _$ResourceWalletOnlyDefinition.fromJson;

  @override
  ItemId get id;
  @override
  String get name;
  @override
  String? get namePlural;
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
  $Res call({ItemId id, String name, String? namePlural, String description});

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
    Object? namePlural = freezed,
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
      namePlural: namePlural == freezed
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.namePlural,
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
  final String? namePlural;
  @override
  final String description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.resourceDefinition(id: $id, name: $name, namePlural: $namePlural, description: $description)';
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
  $ResourceDefinitionCopyWith<ResourceDefinition> get copyWith =>
      _$ResourceDefinitionCopyWithImpl<ResourceDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemId id, String name, String? namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(
            ItemId id, String name, String? namePlural, String description)
        resourceDefinition,
    required TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)
        drillDefinition,
    required TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
  }) {
    return resourceDefinition(id, name, namePlural, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
  }) {
    return resourceDefinition?.call(id, name, namePlural, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    required TResult orElse(),
  }) {
    if (resourceDefinition != null) {
      return resourceDefinition(id, name, namePlural, description);
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
      String? namePlural,
      required String description}) = _$ResourceDefinition;

  factory ResourceDefinition.fromJson(Map<String, dynamic> json) =
      _$ResourceDefinition.fromJson;

  @override
  ItemId get id;
  @override
  String get name;
  @override
  String? get namePlural;
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
  $Res call(
      {ItemId id,
      String name,
      String? namePlural,
      String description,
      int damage});

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
    Object? namePlural = freezed,
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
      namePlural: namePlural == freezed
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.namePlural,
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
  final String? namePlural;
  @override
  final String description;
  @override
  final int damage;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.drillDefinition(id: $id, name: $name, namePlural: $namePlural, description: $description, damage: $damage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DrillDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.namePlural, namePlural) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.damage, damage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(namePlural),
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
            ItemId id, String name, String? namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(
            ItemId id, String name, String? namePlural, String description)
        resourceDefinition,
    required TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)
        drillDefinition,
    required TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
  }) {
    return drillDefinition(id, name, namePlural, description, damage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
  }) {
    return drillDefinition?.call(id, name, namePlural, description, damage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
    required TResult orElse(),
  }) {
    if (drillDefinition != null) {
      return drillDefinition(id, name, namePlural, description, damage);
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
      String? namePlural,
      required String description,
      required int damage}) = _$DrillDefinition;

  factory DrillDefinition.fromJson(Map<String, dynamic> json) =
      _$DrillDefinition.fromJson;

  @override
  ItemId get id;
  @override
  String get name;
  @override
  String? get namePlural;
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
      String? namePlural,
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
              as String?,
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
class _$SwordDefinition implements SwordDefinition {
  const _$SwordDefinition(
      {required this.id,
      required this.name,
      this.namePlural,
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
  final String? namePlural;
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
            ItemId id, String name, String? namePlural, String description)
        resourceWalletOnlyDefinition,
    required TResult Function(
            ItemId id, String name, String? namePlural, String description)
        resourceDefinition,
    required TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)
        drillDefinition,
    required TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)
        swordDefinition,
  }) {
    return swordDefinition(id, name, namePlural, description, attributes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
  }) {
    return swordDefinition?.call(id, name, namePlural, description, attributes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceWalletOnlyDefinition,
    TResult Function(
            ItemId id, String name, String? namePlural, String description)?
        resourceDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, int damage)?
        drillDefinition,
    TResult Function(ItemId id, String name, String? namePlural,
            String description, BuiltMap<WeaponAttributes, double> attributes)?
        swordDefinition,
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

abstract class SwordDefinition implements ItemDefinition {
  const factory SwordDefinition(
          {required ItemId id,
          required String name,
          String? namePlural,
          required String description,
          required BuiltMap<WeaponAttributes, double> attributes}) =
      _$SwordDefinition;

  factory SwordDefinition.fromJson(Map<String, dynamic> json) =
      _$SwordDefinition.fromJson;

  @override
  ItemId get id;
  @override
  String get name;
  @override
  String? get namePlural;
  @override
  String get description;
  BuiltMap<WeaponAttributes, double> get attributes;
  @override
  @JsonKey(ignore: true)
  $SwordDefinitionCopyWith<SwordDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}
