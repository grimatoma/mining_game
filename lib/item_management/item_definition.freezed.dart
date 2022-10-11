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

ItemDefinition _$ItemDefinitionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'general':
      return GeneralItemDefinition.fromJson(json);
    case 'resource':
      return ResourceItemDefinition.fromJson(json);
    case 'drill':
      return DrillItemDefinition.fromJson(json);
    case 'tool':
      return ToolItemDefinition.fromJson(json);
    case 'sword':
      return SwordItemDefinition.fromJson(json);
    case 'miner':
      return MinerItemDefinition.fromJson(json);

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
            ItemContainer? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, ImageDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)
        sword,
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
        miner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralItemDefinition value) general,
    required TResult Function(ResourceItemDefinition value) resource,
    required TResult Function(DrillItemDefinition value) drill,
    required TResult Function(ToolItemDefinition value) tool,
    required TResult Function(SwordItemDefinition value) sword,
    required TResult Function(MinerItemDefinition value) miner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
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
  $ImageDefinitionCopyWith<$Res> get image {
    return $ImageDefinitionCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc
abstract class _$$GeneralItemDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory _$$GeneralItemDefinitionCopyWith(_$GeneralItemDefinition value,
          $Res Function(_$GeneralItemDefinition) then) =
      __$$GeneralItemDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemDefinitionId id,
      String name,
      String? namePlural,
      String description,
      ImageDefinition image,
      ItemContainer? sellPrice});

  @override
  $ImageDefinitionCopyWith<$Res> get image;
  $ItemContainerCopyWith<$Res>? get sellPrice;
}

/// @nodoc
class __$$GeneralItemDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements _$$GeneralItemDefinitionCopyWith<$Res> {
  __$$GeneralItemDefinitionCopyWithImpl(_$GeneralItemDefinition _value,
      $Res Function(_$GeneralItemDefinition) _then)
      : super(_value, (v) => _then(v as _$GeneralItemDefinition));

  @override
  _$GeneralItemDefinition get _value => super._value as _$GeneralItemDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? namePlural = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? sellPrice = freezed,
  }) {
    return _then(_$GeneralItemDefinition(
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
      sellPrice: sellPrice == freezed
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as ItemContainer?,
    ));
  }

  @override
  $ItemContainerCopyWith<$Res>? get sellPrice {
    if (_value.sellPrice == null) {
      return null;
    }

    return $ItemContainerCopyWith<$Res>(_value.sellPrice!, (value) {
      return _then(_value.copyWith(sellPrice: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralItemDefinition extends GeneralItemDefinition {
  const _$GeneralItemDefinition(
      {required this.id,
      required this.name,
      this.namePlural,
      required this.description,
      required this.image,
      this.sellPrice,
      final String? $type})
      : $type = $type ?? 'general',
        super._();

  factory _$GeneralItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$$GeneralItemDefinitionFromJson(json);

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
// required int maxStackSize,
  @override
  final ItemContainer? sellPrice;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.general(id: $id, name: $name, namePlural: $namePlural, description: $description, image: $image, sellPrice: $sellPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralItemDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.namePlural, namePlural) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.sellPrice, sellPrice));
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
      const DeepCollectionEquality().hash(sellPrice));

  @JsonKey(ignore: true)
  @override
  _$$GeneralItemDefinitionCopyWith<_$GeneralItemDefinition> get copyWith =>
      __$$GeneralItemDefinitionCopyWithImpl<_$GeneralItemDefinition>(
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
            ItemContainer? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, ImageDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)
        sword,
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
        miner,
  }) {
    return general(id, name, namePlural, description, image, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
  }) {
    return general?.call(id, name, namePlural, description, image, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(id, name, namePlural, description, image, sellPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralItemDefinition value) general,
    required TResult Function(ResourceItemDefinition value) resource,
    required TResult Function(DrillItemDefinition value) drill,
    required TResult Function(ToolItemDefinition value) tool,
    required TResult Function(SwordItemDefinition value) sword,
    required TResult Function(MinerItemDefinition value) miner,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralItemDefinitionToJson(
      this,
    );
  }
}

abstract class GeneralItemDefinition extends ItemDefinition
    implements Stackable, CanHavePluralName, CanSell {
  const factory GeneralItemDefinition(
      {required final ItemDefinitionId id,
      required final String name,
      final String? namePlural,
      required final String description,
      required final ImageDefinition image,
      final ItemContainer? sellPrice}) = _$GeneralItemDefinition;
  const GeneralItemDefinition._() : super._();

  factory GeneralItemDefinition.fromJson(Map<String, dynamic> json) =
      _$GeneralItemDefinition.fromJson;

  @override
  ItemDefinitionId get id;
  @override
  String get name;
  String? get namePlural;
  @override
  String get description;
  @override
  ImageDefinition get image; // required int maxStackSize,
  ItemContainer? get sellPrice;
  @override
  @JsonKey(ignore: true)
  _$$GeneralItemDefinitionCopyWith<_$GeneralItemDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResourceItemDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory _$$ResourceItemDefinitionCopyWith(_$ResourceItemDefinition value,
          $Res Function(_$ResourceItemDefinition) then) =
      __$$ResourceItemDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemDefinitionId id,
      String name,
      String? namePlural,
      String description,
      ImageDefinition image,
      ItemContainer? sellPrice});

  @override
  $ImageDefinitionCopyWith<$Res> get image;
  $ItemContainerCopyWith<$Res>? get sellPrice;
}

/// @nodoc
class __$$ResourceItemDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements _$$ResourceItemDefinitionCopyWith<$Res> {
  __$$ResourceItemDefinitionCopyWithImpl(_$ResourceItemDefinition _value,
      $Res Function(_$ResourceItemDefinition) _then)
      : super(_value, (v) => _then(v as _$ResourceItemDefinition));

  @override
  _$ResourceItemDefinition get _value =>
      super._value as _$ResourceItemDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? namePlural = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? sellPrice = freezed,
  }) {
    return _then(_$ResourceItemDefinition(
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
      sellPrice: sellPrice == freezed
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as ItemContainer?,
    ));
  }

  @override
  $ItemContainerCopyWith<$Res>? get sellPrice {
    if (_value.sellPrice == null) {
      return null;
    }

    return $ItemContainerCopyWith<$Res>(_value.sellPrice!, (value) {
      return _then(_value.copyWith(sellPrice: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceItemDefinition extends ResourceItemDefinition {
  const _$ResourceItemDefinition(
      {required this.id,
      required this.name,
      this.namePlural,
      required this.description,
      required this.image,
      this.sellPrice,
      final String? $type})
      : $type = $type ?? 'resource',
        super._();

  factory _$ResourceItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$$ResourceItemDefinitionFromJson(json);

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
// required int maxStackSize,
  @override
  final ItemContainer? sellPrice;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.resource(id: $id, name: $name, namePlural: $namePlural, description: $description, image: $image, sellPrice: $sellPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceItemDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.namePlural, namePlural) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.sellPrice, sellPrice));
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
      const DeepCollectionEquality().hash(sellPrice));

  @JsonKey(ignore: true)
  @override
  _$$ResourceItemDefinitionCopyWith<_$ResourceItemDefinition> get copyWith =>
      __$$ResourceItemDefinitionCopyWithImpl<_$ResourceItemDefinition>(
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
            ItemContainer? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, ImageDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)
        sword,
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
        miner,
  }) {
    return resource(id, name, namePlural, description, image, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
  }) {
    return resource?.call(id, name, namePlural, description, image, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
    required TResult orElse(),
  }) {
    if (resource != null) {
      return resource(id, name, namePlural, description, image, sellPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralItemDefinition value) general,
    required TResult Function(ResourceItemDefinition value) resource,
    required TResult Function(DrillItemDefinition value) drill,
    required TResult Function(ToolItemDefinition value) tool,
    required TResult Function(SwordItemDefinition value) sword,
    required TResult Function(MinerItemDefinition value) miner,
  }) {
    return resource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
  }) {
    return resource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
    required TResult orElse(),
  }) {
    if (resource != null) {
      return resource(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceItemDefinitionToJson(
      this,
    );
  }
}

abstract class ResourceItemDefinition extends ItemDefinition
    implements Resource, Stackable, ShowInWallet, CanHavePluralName, CanSell {
  const factory ResourceItemDefinition(
      {required final ItemDefinitionId id,
      required final String name,
      final String? namePlural,
      required final String description,
      required final ImageDefinition image,
      final ItemContainer? sellPrice}) = _$ResourceItemDefinition;
  const ResourceItemDefinition._() : super._();

  factory ResourceItemDefinition.fromJson(Map<String, dynamic> json) =
      _$ResourceItemDefinition.fromJson;

  @override
  ItemDefinitionId get id;
  @override
  String get name;
  String? get namePlural;
  @override
  String get description;
  @override
  ImageDefinition get image; // required int maxStackSize,
  ItemContainer? get sellPrice;
  @override
  @JsonKey(ignore: true)
  _$$ResourceItemDefinitionCopyWith<_$ResourceItemDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DrillItemDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory _$$DrillItemDefinitionCopyWith(_$DrillItemDefinition value,
          $Res Function(_$DrillItemDefinition) then) =
      __$$DrillItemDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemDefinitionId id,
      String name,
      String description,
      ImageDefinition image,
      int damage});

  @override
  $ImageDefinitionCopyWith<$Res> get image;
}

/// @nodoc
class __$$DrillItemDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements _$$DrillItemDefinitionCopyWith<$Res> {
  __$$DrillItemDefinitionCopyWithImpl(
      _$DrillItemDefinition _value, $Res Function(_$DrillItemDefinition) _then)
      : super(_value, (v) => _then(v as _$DrillItemDefinition));

  @override
  _$DrillItemDefinition get _value => super._value as _$DrillItemDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? damage = freezed,
  }) {
    return _then(_$DrillItemDefinition(
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
class _$DrillItemDefinition extends DrillItemDefinition {
  const _$DrillItemDefinition(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.damage,
      final String? $type})
      : $type = $type ?? 'drill',
        super._();

  factory _$DrillItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$$DrillItemDefinitionFromJson(json);

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
    return 'ItemDefinition.drill(id: $id, name: $name, description: $description, image: $image, damage: $damage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrillItemDefinition &&
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
  _$$DrillItemDefinitionCopyWith<_$DrillItemDefinition> get copyWith =>
      __$$DrillItemDefinitionCopyWithImpl<_$DrillItemDefinition>(
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
            ItemContainer? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, ImageDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)
        sword,
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
        miner,
  }) {
    return drill(id, name, description, image, damage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
  }) {
    return drill?.call(id, name, description, image, damage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
    required TResult orElse(),
  }) {
    if (drill != null) {
      return drill(id, name, description, image, damage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralItemDefinition value) general,
    required TResult Function(ResourceItemDefinition value) resource,
    required TResult Function(DrillItemDefinition value) drill,
    required TResult Function(ToolItemDefinition value) tool,
    required TResult Function(SwordItemDefinition value) sword,
    required TResult Function(MinerItemDefinition value) miner,
  }) {
    return drill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
  }) {
    return drill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
    required TResult orElse(),
  }) {
    if (drill != null) {
      return drill(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DrillItemDefinitionToJson(
      this,
    );
  }
}

abstract class DrillItemDefinition extends ItemDefinition {
  const factory DrillItemDefinition(
      {required final ItemDefinitionId id,
      required final String name,
      required final String description,
      required final ImageDefinition image,
      required final int damage}) = _$DrillItemDefinition;
  const DrillItemDefinition._() : super._();

  factory DrillItemDefinition.fromJson(Map<String, dynamic> json) =
      _$DrillItemDefinition.fromJson;

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
  _$$DrillItemDefinitionCopyWith<_$DrillItemDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToolItemDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory _$$ToolItemDefinitionCopyWith(_$ToolItemDefinition value,
          $Res Function(_$ToolItemDefinition) then) =
      __$$ToolItemDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemDefinitionId id,
      String name,
      String? namePlural,
      String description,
      ImageDefinition image,
      ItemContainer? sellPrice});

  @override
  $ImageDefinitionCopyWith<$Res> get image;
  $ItemContainerCopyWith<$Res>? get sellPrice;
}

/// @nodoc
class __$$ToolItemDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements _$$ToolItemDefinitionCopyWith<$Res> {
  __$$ToolItemDefinitionCopyWithImpl(
      _$ToolItemDefinition _value, $Res Function(_$ToolItemDefinition) _then)
      : super(_value, (v) => _then(v as _$ToolItemDefinition));

  @override
  _$ToolItemDefinition get _value => super._value as _$ToolItemDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? namePlural = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? sellPrice = freezed,
  }) {
    return _then(_$ToolItemDefinition(
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
      sellPrice: sellPrice == freezed
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as ItemContainer?,
    ));
  }

  @override
  $ItemContainerCopyWith<$Res>? get sellPrice {
    if (_value.sellPrice == null) {
      return null;
    }

    return $ItemContainerCopyWith<$Res>(_value.sellPrice!, (value) {
      return _then(_value.copyWith(sellPrice: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ToolItemDefinition extends ToolItemDefinition {
  const _$ToolItemDefinition(
      {required this.id,
      required this.name,
      this.namePlural,
      required this.description,
      required this.image,
      this.sellPrice,
      final String? $type})
      : $type = $type ?? 'tool',
        super._();

  factory _$ToolItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$$ToolItemDefinitionFromJson(json);

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
  final ItemContainer? sellPrice;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.tool(id: $id, name: $name, namePlural: $namePlural, description: $description, image: $image, sellPrice: $sellPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToolItemDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.namePlural, namePlural) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.sellPrice, sellPrice));
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
      const DeepCollectionEquality().hash(sellPrice));

  @JsonKey(ignore: true)
  @override
  _$$ToolItemDefinitionCopyWith<_$ToolItemDefinition> get copyWith =>
      __$$ToolItemDefinitionCopyWithImpl<_$ToolItemDefinition>(
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
            ItemContainer? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, ImageDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)
        sword,
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
        miner,
  }) {
    return tool(id, name, namePlural, description, image, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
  }) {
    return tool?.call(id, name, namePlural, description, image, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
    required TResult orElse(),
  }) {
    if (tool != null) {
      return tool(id, name, namePlural, description, image, sellPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralItemDefinition value) general,
    required TResult Function(ResourceItemDefinition value) resource,
    required TResult Function(DrillItemDefinition value) drill,
    required TResult Function(ToolItemDefinition value) tool,
    required TResult Function(SwordItemDefinition value) sword,
    required TResult Function(MinerItemDefinition value) miner,
  }) {
    return tool(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
  }) {
    return tool?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
    required TResult orElse(),
  }) {
    if (tool != null) {
      return tool(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ToolItemDefinitionToJson(
      this,
    );
  }
}

abstract class ToolItemDefinition extends ItemDefinition
    implements CanHavePluralName, CanSell {
  const factory ToolItemDefinition(
      {required final ItemDefinitionId id,
      required final String name,
      final String? namePlural,
      required final String description,
      required final ImageDefinition image,
      final ItemContainer? sellPrice}) = _$ToolItemDefinition;
  const ToolItemDefinition._() : super._();

  factory ToolItemDefinition.fromJson(Map<String, dynamic> json) =
      _$ToolItemDefinition.fromJson;

  @override
  ItemDefinitionId get id;
  @override
  String get name;
  String? get namePlural;
  @override
  String get description;
  @override
  ImageDefinition get image;
  ItemContainer? get sellPrice;
  @override
  @JsonKey(ignore: true)
  _$$ToolItemDefinitionCopyWith<_$ToolItemDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwordItemDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory _$$SwordItemDefinitionCopyWith(_$SwordItemDefinition value,
          $Res Function(_$SwordItemDefinition) then) =
      __$$SwordItemDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemDefinitionId id,
      String name,
      String? namePlural,
      String description,
      ImageDefinition image,
      Map<WeaponAttributes, double> attributes,
      ItemContainer? sellPrice});

  @override
  $ImageDefinitionCopyWith<$Res> get image;
  $ItemContainerCopyWith<$Res>? get sellPrice;
}

/// @nodoc
class __$$SwordItemDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements _$$SwordItemDefinitionCopyWith<$Res> {
  __$$SwordItemDefinitionCopyWithImpl(
      _$SwordItemDefinition _value, $Res Function(_$SwordItemDefinition) _then)
      : super(_value, (v) => _then(v as _$SwordItemDefinition));

  @override
  _$SwordItemDefinition get _value => super._value as _$SwordItemDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? namePlural = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? attributes = freezed,
    Object? sellPrice = freezed,
  }) {
    return _then(_$SwordItemDefinition(
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
      sellPrice: sellPrice == freezed
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as ItemContainer?,
    ));
  }

  @override
  $ItemContainerCopyWith<$Res>? get sellPrice {
    if (_value.sellPrice == null) {
      return null;
    }

    return $ItemContainerCopyWith<$Res>(_value.sellPrice!, (value) {
      return _then(_value.copyWith(sellPrice: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SwordItemDefinition extends SwordItemDefinition {
  const _$SwordItemDefinition(
      {required this.id,
      required this.name,
      this.namePlural,
      required this.description,
      required this.image,
      required final Map<WeaponAttributes, double> attributes,
      this.sellPrice,
      final String? $type})
      : _attributes = attributes,
        $type = $type ?? 'sword',
        super._();

  factory _$SwordItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$$SwordItemDefinitionFromJson(json);

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

  @override
  final ItemContainer? sellPrice;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ItemDefinition.sword(id: $id, name: $name, namePlural: $namePlural, description: $description, image: $image, attributes: $attributes, sellPrice: $sellPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwordItemDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.namePlural, namePlural) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            const DeepCollectionEquality().equals(other.sellPrice, sellPrice));
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
      const DeepCollectionEquality().hash(_attributes),
      const DeepCollectionEquality().hash(sellPrice));

  @JsonKey(ignore: true)
  @override
  _$$SwordItemDefinitionCopyWith<_$SwordItemDefinition> get copyWith =>
      __$$SwordItemDefinitionCopyWithImpl<_$SwordItemDefinition>(
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
            ItemContainer? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, ImageDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)
        sword,
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
        miner,
  }) {
    return sword(
        id, name, namePlural, description, image, attributes, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
  }) {
    return sword?.call(
        id, name, namePlural, description, image, attributes, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
    required TResult orElse(),
  }) {
    if (sword != null) {
      return sword(
          id, name, namePlural, description, image, attributes, sellPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralItemDefinition value) general,
    required TResult Function(ResourceItemDefinition value) resource,
    required TResult Function(DrillItemDefinition value) drill,
    required TResult Function(ToolItemDefinition value) tool,
    required TResult Function(SwordItemDefinition value) sword,
    required TResult Function(MinerItemDefinition value) miner,
  }) {
    return sword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
  }) {
    return sword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
    required TResult orElse(),
  }) {
    if (sword != null) {
      return sword(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SwordItemDefinitionToJson(
      this,
    );
  }
}

abstract class SwordItemDefinition extends ItemDefinition
    implements CanHavePluralName, CanSell {
  const factory SwordItemDefinition(
      {required final ItemDefinitionId id,
      required final String name,
      final String? namePlural,
      required final String description,
      required final ImageDefinition image,
      required final Map<WeaponAttributes, double> attributes,
      final ItemContainer? sellPrice}) = _$SwordItemDefinition;
  const SwordItemDefinition._() : super._();

  factory SwordItemDefinition.fromJson(Map<String, dynamic> json) =
      _$SwordItemDefinition.fromJson;

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
  ItemContainer? get sellPrice;
  @override
  @JsonKey(ignore: true)
  _$$SwordItemDefinitionCopyWith<_$SwordItemDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MinerItemDefinitionCopyWith<$Res>
    implements $ItemDefinitionCopyWith<$Res> {
  factory _$$MinerItemDefinitionCopyWith(_$MinerItemDefinition value,
          $Res Function(_$MinerItemDefinition) then) =
      __$$MinerItemDefinitionCopyWithImpl<$Res>;
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
  $ImageDefinitionCopyWith<$Res> get image;
}

/// @nodoc
class __$$MinerItemDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res>
    implements _$$MinerItemDefinitionCopyWith<$Res> {
  __$$MinerItemDefinitionCopyWithImpl(
      _$MinerItemDefinition _value, $Res Function(_$MinerItemDefinition) _then)
      : super(_value, (v) => _then(v as _$MinerItemDefinition));

  @override
  _$MinerItemDefinition get _value => super._value as _$MinerItemDefinition;

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
    return _then(_$MinerItemDefinition(
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
class _$MinerItemDefinition extends MinerItemDefinition {
  const _$MinerItemDefinition(
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
      : $type = $type ?? 'miner',
        super._();

  factory _$MinerItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$$MinerItemDefinitionFromJson(json);

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
    return 'ItemDefinition.miner(id: $id, name: $name, description: $description, radius: $radius, depth: $depth, baseDamage: $baseDamage, baseHopperSize: $baseHopperSize, fuelConsumption: $fuelConsumption, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinerItemDefinition &&
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
  _$$MinerItemDefinitionCopyWith<_$MinerItemDefinition> get copyWith =>
      __$$MinerItemDefinitionCopyWithImpl<_$MinerItemDefinition>(
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
            ItemContainer? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, ImageDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)
        sword,
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
        miner,
  }) {
    return miner(id, name, description, radius, depth, baseDamage,
        baseHopperSize, fuelConsumption, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
  }) {
    return miner?.call(id, name, description, radius, depth, baseDamage,
        baseHopperSize, fuelConsumption, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        general,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            ImageDefinition image, int damage)?
        drill,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            ItemContainer? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            ImageDefinition image,
            Map<WeaponAttributes, double> attributes,
            ItemContainer? sellPrice)?
        sword,
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
        miner,
    required TResult orElse(),
  }) {
    if (miner != null) {
      return miner(id, name, description, radius, depth, baseDamage,
          baseHopperSize, fuelConsumption, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeneralItemDefinition value) general,
    required TResult Function(ResourceItemDefinition value) resource,
    required TResult Function(DrillItemDefinition value) drill,
    required TResult Function(ToolItemDefinition value) tool,
    required TResult Function(SwordItemDefinition value) sword,
    required TResult Function(MinerItemDefinition value) miner,
  }) {
    return miner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
  }) {
    return miner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeneralItemDefinition value)? general,
    TResult Function(ResourceItemDefinition value)? resource,
    TResult Function(DrillItemDefinition value)? drill,
    TResult Function(ToolItemDefinition value)? tool,
    TResult Function(SwordItemDefinition value)? sword,
    TResult Function(MinerItemDefinition value)? miner,
    required TResult orElse(),
  }) {
    if (miner != null) {
      return miner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MinerItemDefinitionToJson(
      this,
    );
  }
}

abstract class MinerItemDefinition extends ItemDefinition {
  const factory MinerItemDefinition(
      {required final ItemDefinitionId id,
      required final String name,
      required final String description,
      required final int radius,
      required final int depth,
      required final int baseDamage,
      required final int baseHopperSize,
      required final int fuelConsumption,
      required final ImageDefinition image}) = _$MinerItemDefinition;
  const MinerItemDefinition._() : super._();

  factory MinerItemDefinition.fromJson(Map<String, dynamic> json) =
      _$MinerItemDefinition.fromJson;

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
  _$$MinerItemDefinitionCopyWith<_$MinerItemDefinition> get copyWith =>
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
