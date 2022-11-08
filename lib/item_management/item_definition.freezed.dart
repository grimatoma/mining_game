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

  SpriteDefinition get image => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, SpriteDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)
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
            SpriteDefinition image)
        miner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult? Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
        sword,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            SpriteDefinition image)?
        miner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
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
            SpriteDefinition image)?
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
    TResult? Function(GeneralItemDefinition value)? general,
    TResult? Function(ResourceItemDefinition value)? resource,
    TResult? Function(DrillItemDefinition value)? drill,
    TResult? Function(ToolItemDefinition value)? tool,
    TResult? Function(SwordItemDefinition value)? sword,
    TResult? Function(MinerItemDefinition value)? miner,
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
      _$ItemDefinitionCopyWithImpl<$Res, ItemDefinition>;

  @useResult
  $Res call(
      {ItemDefinitionId id,
      String name,
      String description,
      SpriteDefinition image});

  $SpriteDefinitionCopyWith<$Res> get image;
}

/// @nodoc
class _$ItemDefinitionCopyWithImpl<$Res, $Val extends ItemDefinition>
    implements $ItemDefinitionCopyWith<$Res> {
  _$ItemDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as SpriteDefinition,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpriteDefinitionCopyWith<$Res> get image {
    return $SpriteDefinitionCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
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
  @useResult
  $Res call(
      {ItemDefinitionId id,
      String name,
      String? namePlural,
      String description,
      SpriteDefinition image,
      int? sellPrice});

  @override
  $SpriteDefinitionCopyWith<$Res> get image;
}

/// @nodoc
class __$$GeneralItemDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res, _$GeneralItemDefinition>
    implements _$$GeneralItemDefinitionCopyWith<$Res> {
  __$$GeneralItemDefinitionCopyWithImpl(_$GeneralItemDefinition _value,
      $Res Function(_$GeneralItemDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? namePlural = freezed,
    Object? description = null,
    Object? image = null,
    Object? sellPrice = freezed,
  }) {
    return _then(_$GeneralItemDefinition(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural: freezed == namePlural
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as SpriteDefinition,
      sellPrice: freezed == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
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
  final SpriteDefinition image;

// required int maxStackSize,
  @override
  final int? sellPrice;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.namePlural, namePlural) ||
                other.namePlural == namePlural) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, namePlural, description, image, sellPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
            SpriteDefinition image,
            int? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, SpriteDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)
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
            SpriteDefinition image)
        miner,
  }) {
    return general(id, name, namePlural, description, image, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult? Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
        sword,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            SpriteDefinition image)?
        miner,
  }) {
    return general?.call(id, name, namePlural, description, image, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
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
            SpriteDefinition image)?
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
    TResult? Function(GeneralItemDefinition value)? general,
    TResult? Function(ResourceItemDefinition value)? resource,
    TResult? Function(DrillItemDefinition value)? drill,
    TResult? Function(ToolItemDefinition value)? tool,
    TResult? Function(SwordItemDefinition value)? sword,
    TResult? Function(MinerItemDefinition value)? miner,
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
      required final SpriteDefinition image,
      final int? sellPrice}) = _$GeneralItemDefinition;
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
  SpriteDefinition get image; // required int maxStackSize,
  int? get sellPrice;

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
  @useResult
  $Res call(
      {ItemDefinitionId id,
      String name,
      String? namePlural,
      String description,
      SpriteDefinition image,
      int? sellPrice});

  @override
  $SpriteDefinitionCopyWith<$Res> get image;
}

/// @nodoc
class __$$ResourceItemDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res, _$ResourceItemDefinition>
    implements _$$ResourceItemDefinitionCopyWith<$Res> {
  __$$ResourceItemDefinitionCopyWithImpl(_$ResourceItemDefinition _value,
      $Res Function(_$ResourceItemDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? namePlural = freezed,
    Object? description = null,
    Object? image = null,
    Object? sellPrice = freezed,
  }) {
    return _then(_$ResourceItemDefinition(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural: freezed == namePlural
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as SpriteDefinition,
      sellPrice: freezed == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
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
  final SpriteDefinition image;

// required int maxStackSize,
  @override
  final int? sellPrice;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.namePlural, namePlural) ||
                other.namePlural == namePlural) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, namePlural, description, image, sellPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
            SpriteDefinition image,
            int? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, SpriteDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)
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
            SpriteDefinition image)
        miner,
  }) {
    return resource(id, name, namePlural, description, image, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult? Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
        sword,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            SpriteDefinition image)?
        miner,
  }) {
    return resource?.call(id, name, namePlural, description, image, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
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
            SpriteDefinition image)?
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
    TResult? Function(GeneralItemDefinition value)? general,
    TResult? Function(ResourceItemDefinition value)? resource,
    TResult? Function(DrillItemDefinition value)? drill,
    TResult? Function(ToolItemDefinition value)? tool,
    TResult? Function(SwordItemDefinition value)? sword,
    TResult? Function(MinerItemDefinition value)? miner,
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
      required final SpriteDefinition image,
      final int? sellPrice}) = _$ResourceItemDefinition;
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
  SpriteDefinition get image; // required int maxStackSize,
  int? get sellPrice;

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
  @useResult
  $Res call(
      {ItemDefinitionId id,
      String name,
      String description,
      SpriteDefinition image,
      int damage});

  @override
  $SpriteDefinitionCopyWith<$Res> get image;
}

/// @nodoc
class __$$DrillItemDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res, _$DrillItemDefinition>
    implements _$$DrillItemDefinitionCopyWith<$Res> {
  __$$DrillItemDefinitionCopyWithImpl(
      _$DrillItemDefinition _value, $Res Function(_$DrillItemDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? damage = null,
  }) {
    return _then(_$DrillItemDefinition(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as SpriteDefinition,
      damage: null == damage
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
  final SpriteDefinition image;
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.damage, damage) || other.damage == damage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, image, damage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
            SpriteDefinition image,
            int? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, SpriteDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)
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
            SpriteDefinition image)
        miner,
  }) {
    return drill(id, name, description, image, damage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult? Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
        sword,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            SpriteDefinition image)?
        miner,
  }) {
    return drill?.call(id, name, description, image, damage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
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
            SpriteDefinition image)?
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
    TResult? Function(GeneralItemDefinition value)? general,
    TResult? Function(ResourceItemDefinition value)? resource,
    TResult? Function(DrillItemDefinition value)? drill,
    TResult? Function(ToolItemDefinition value)? tool,
    TResult? Function(SwordItemDefinition value)? sword,
    TResult? Function(MinerItemDefinition value)? miner,
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
      required final SpriteDefinition image,
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
  SpriteDefinition get image;

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
  @useResult
  $Res call(
      {ItemDefinitionId id,
      String name,
      String? namePlural,
      String description,
      SpriteDefinition image,
      int? sellPrice});

  @override
  $SpriteDefinitionCopyWith<$Res> get image;
}

/// @nodoc
class __$$ToolItemDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res, _$ToolItemDefinition>
    implements _$$ToolItemDefinitionCopyWith<$Res> {
  __$$ToolItemDefinitionCopyWithImpl(
      _$ToolItemDefinition _value, $Res Function(_$ToolItemDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? namePlural = freezed,
    Object? description = null,
    Object? image = null,
    Object? sellPrice = freezed,
  }) {
    return _then(_$ToolItemDefinition(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural: freezed == namePlural
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as SpriteDefinition,
      sellPrice: freezed == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
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
  final SpriteDefinition image;
  @override
  final int? sellPrice;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.namePlural, namePlural) ||
                other.namePlural == namePlural) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, namePlural, description, image, sellPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
            SpriteDefinition image,
            int? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, SpriteDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)
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
            SpriteDefinition image)
        miner,
  }) {
    return tool(id, name, namePlural, description, image, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult? Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
        sword,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            SpriteDefinition image)?
        miner,
  }) {
    return tool?.call(id, name, namePlural, description, image, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
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
            SpriteDefinition image)?
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
    TResult? Function(GeneralItemDefinition value)? general,
    TResult? Function(ResourceItemDefinition value)? resource,
    TResult? Function(DrillItemDefinition value)? drill,
    TResult? Function(ToolItemDefinition value)? tool,
    TResult? Function(SwordItemDefinition value)? sword,
    TResult? Function(MinerItemDefinition value)? miner,
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
      required final SpriteDefinition image,
      final int? sellPrice}) = _$ToolItemDefinition;
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
  SpriteDefinition get image;

  int? get sellPrice;
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
  @useResult
  $Res call(
      {ItemDefinitionId id,
      String name,
      String? namePlural,
      String description,
      SpriteDefinition image,
      Map<WeaponAttributes, double> attributes,
      int? sellPrice});

  @override
  $SpriteDefinitionCopyWith<$Res> get image;
}

/// @nodoc
class __$$SwordItemDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res, _$SwordItemDefinition>
    implements _$$SwordItemDefinitionCopyWith<$Res> {
  __$$SwordItemDefinitionCopyWithImpl(
      _$SwordItemDefinition _value, $Res Function(_$SwordItemDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? namePlural = freezed,
    Object? description = null,
    Object? image = null,
    Object? attributes = null,
    Object? sellPrice = freezed,
  }) {
    return _then(_$SwordItemDefinition(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      namePlural: freezed == namePlural
          ? _value.namePlural
          : namePlural // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as SpriteDefinition,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<WeaponAttributes, double>,
      sellPrice: freezed == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
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
  final SpriteDefinition image;
  final Map<WeaponAttributes, double> _attributes;

  @override
  Map<WeaponAttributes, double> get attributes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attributes);
  }

  @override
  final int? sellPrice;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.namePlural, namePlural) ||
                other.namePlural == namePlural) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      namePlural,
      description,
      image,
      const DeepCollectionEquality().hash(_attributes),
      sellPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
            SpriteDefinition image,
            int? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, SpriteDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)
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
            SpriteDefinition image)
        miner,
  }) {
    return sword(
        id, name, namePlural, description, image, attributes, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult? Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
        sword,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            SpriteDefinition image)?
        miner,
  }) {
    return sword?.call(
        id, name, namePlural, description, image, attributes, sellPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
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
            SpriteDefinition image)?
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
    TResult? Function(GeneralItemDefinition value)? general,
    TResult? Function(ResourceItemDefinition value)? resource,
    TResult? Function(DrillItemDefinition value)? drill,
    TResult? Function(ToolItemDefinition value)? tool,
    TResult? Function(SwordItemDefinition value)? sword,
    TResult? Function(MinerItemDefinition value)? miner,
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
      required final SpriteDefinition image,
      required final Map<WeaponAttributes, double> attributes,
      final int? sellPrice}) = _$SwordItemDefinition;
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
  SpriteDefinition get image;

  Map<WeaponAttributes, double> get attributes;
  int? get sellPrice;
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
  @useResult
  $Res call(
      {ItemDefinitionId id,
      String name,
      String description,
      int radius,
      int depth,
      int baseDamage,
      int baseHopperSize,
      int fuelConsumption,
      SpriteDefinition image});

  @override
  $SpriteDefinitionCopyWith<$Res> get image;
}

/// @nodoc
class __$$MinerItemDefinitionCopyWithImpl<$Res>
    extends _$ItemDefinitionCopyWithImpl<$Res, _$MinerItemDefinition>
    implements _$$MinerItemDefinitionCopyWith<$Res> {
  __$$MinerItemDefinitionCopyWithImpl(
      _$MinerItemDefinition _value, $Res Function(_$MinerItemDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? radius = null,
    Object? depth = null,
    Object? baseDamage = null,
    Object? baseHopperSize = null,
    Object? fuelConsumption = null,
    Object? image = null,
  }) {
    return _then(_$MinerItemDefinition(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
      baseDamage: null == baseDamage
          ? _value.baseDamage
          : baseDamage // ignore: cast_nullable_to_non_nullable
              as int,
      baseHopperSize: null == baseHopperSize
          ? _value.baseHopperSize
          : baseHopperSize // ignore: cast_nullable_to_non_nullable
              as int,
      fuelConsumption: null == fuelConsumption
          ? _value.fuelConsumption
          : fuelConsumption // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as SpriteDefinition,
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
  final SpriteDefinition image;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.baseDamage, baseDamage) ||
                other.baseDamage == baseDamage) &&
            (identical(other.baseHopperSize, baseHopperSize) ||
                other.baseHopperSize == baseHopperSize) &&
            (identical(other.fuelConsumption, fuelConsumption) ||
                other.fuelConsumption == fuelConsumption) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, radius,
      depth, baseDamage, baseHopperSize, fuelConsumption, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
            SpriteDefinition image,
            int? sellPrice)
        general,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        resource,
    required TResult Function(ItemDefinitionId id, String name,
            String description, SpriteDefinition image, int damage)
        drill,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            int? sellPrice)
        tool,
    required TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)
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
            SpriteDefinition image)
        miner,
  }) {
    return miner(id, name, description, radius, depth, baseDamage,
        baseHopperSize, fuelConsumption, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult? Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult? Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
        sword,
    TResult? Function(
            ItemDefinitionId id,
            String name,
            String description,
            int radius,
            int depth,
            int baseDamage,
            int baseHopperSize,
            int fuelConsumption,
            SpriteDefinition image)?
        miner,
  }) {
    return miner?.call(id, name, description, radius, depth, baseDamage,
        baseHopperSize, fuelConsumption, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        general,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        resource,
    TResult Function(ItemDefinitionId id, String name, String description,
            SpriteDefinition image, int damage)?
        drill,
    TResult Function(ItemDefinitionId id, String name, String? namePlural,
            String description, SpriteDefinition image, int? sellPrice)?
        tool,
    TResult Function(
            ItemDefinitionId id,
            String name,
            String? namePlural,
            String description,
            SpriteDefinition image,
            Map<WeaponAttributes, double> attributes,
            int? sellPrice)?
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
            SpriteDefinition image)?
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
    TResult? Function(GeneralItemDefinition value)? general,
    TResult? Function(ResourceItemDefinition value)? resource,
    TResult? Function(DrillItemDefinition value)? drill,
    TResult? Function(ToolItemDefinition value)? tool,
    TResult? Function(SwordItemDefinition value)? sword,
    TResult? Function(MinerItemDefinition value)? miner,
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
      required final SpriteDefinition image}) = _$MinerItemDefinition;
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
  SpriteDefinition get image;

  @override
  @JsonKey(ignore: true)
  _$$MinerItemDefinitionCopyWith<_$MinerItemDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

SpriteDefinition _$SpriteDefinitionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _SpriteDefinition.fromJson(json);
    case 'fromSheet':
      return SheetSpriteDefinition.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SpriteDefinition',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SpriteDefinition {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String path) $default, {
    required TResult Function(SpriteSheetDefinition sheet, int columnIndex,
            int rowIndex, int length, int height)
        fromSheet,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String path)? $default, {
    TResult? Function(SpriteSheetDefinition sheet, int columnIndex,
            int rowIndex, int length, int height)?
        fromSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String path)? $default, {
    TResult Function(SpriteSheetDefinition sheet, int columnIndex, int rowIndex,
            int length, int height)?
        fromSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SpriteDefinition value) $default, {
    required TResult Function(SheetSpriteDefinition value) fromSheet,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SpriteDefinition value)? $default, {
    TResult? Function(SheetSpriteDefinition value)? fromSheet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SpriteDefinition value)? $default, {
    TResult Function(SheetSpriteDefinition value)? fromSheet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpriteDefinitionCopyWith<$Res> {
  factory $SpriteDefinitionCopyWith(
          SpriteDefinition value, $Res Function(SpriteDefinition) then) =
      _$SpriteDefinitionCopyWithImpl<$Res, SpriteDefinition>;
}

/// @nodoc
class _$SpriteDefinitionCopyWithImpl<$Res, $Val extends SpriteDefinition>
    implements $SpriteDefinitionCopyWith<$Res> {
  _$SpriteDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SpriteDefinitionCopyWith<$Res> {
  factory _$$_SpriteDefinitionCopyWith(
          _$_SpriteDefinition value, $Res Function(_$_SpriteDefinition) then) =
      __$$_SpriteDefinitionCopyWithImpl<$Res>;

  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$_SpriteDefinitionCopyWithImpl<$Res>
    extends _$SpriteDefinitionCopyWithImpl<$Res, _$_SpriteDefinition>
    implements _$$_SpriteDefinitionCopyWith<$Res> {
  __$$_SpriteDefinitionCopyWithImpl(
      _$_SpriteDefinition _value, $Res Function(_$_SpriteDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$_SpriteDefinition(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpriteDefinition extends _SpriteDefinition {
  const _$_SpriteDefinition(this.path, {final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$_SpriteDefinition.fromJson(Map<String, dynamic> json) =>
      _$$_SpriteDefinitionFromJson(json);

  @override
  final String path;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SpriteDefinition(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpriteDefinition &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpriteDefinitionCopyWith<_$_SpriteDefinition> get copyWith =>
      __$$_SpriteDefinitionCopyWithImpl<_$_SpriteDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String path) $default, {
    required TResult Function(SpriteSheetDefinition sheet, int columnIndex,
            int rowIndex, int length, int height)
        fromSheet,
  }) {
    return $default(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String path)? $default, {
    TResult? Function(SpriteSheetDefinition sheet, int columnIndex,
            int rowIndex, int length, int height)?
        fromSheet,
  }) {
    return $default?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String path)? $default, {
    TResult Function(SpriteSheetDefinition sheet, int columnIndex, int rowIndex,
            int length, int height)?
        fromSheet,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SpriteDefinition value) $default, {
    required TResult Function(SheetSpriteDefinition value) fromSheet,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SpriteDefinition value)? $default, {
    TResult? Function(SheetSpriteDefinition value)? fromSheet,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SpriteDefinition value)? $default, {
    TResult Function(SheetSpriteDefinition value)? fromSheet,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpriteDefinitionToJson(
      this,
    );
  }
}

abstract class _SpriteDefinition extends SpriteDefinition {
  const factory _SpriteDefinition(final String path) = _$_SpriteDefinition;

  const _SpriteDefinition._() : super._();

  factory _SpriteDefinition.fromJson(Map<String, dynamic> json) =
      _$_SpriteDefinition.fromJson;

  String get path;

  @JsonKey(ignore: true)
  _$$_SpriteDefinitionCopyWith<_$_SpriteDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SheetSpriteDefinitionCopyWith<$Res> {
  factory _$$SheetSpriteDefinitionCopyWith(_$SheetSpriteDefinition value,
          $Res Function(_$SheetSpriteDefinition) then) =
      __$$SheetSpriteDefinitionCopyWithImpl<$Res>;

  @useResult
  $Res call(
      {SpriteSheetDefinition sheet,
      int columnIndex,
      int rowIndex,
      int length,
      int height});

  $SpriteSheetDefinitionCopyWith<$Res> get sheet;
}

/// @nodoc
class __$$SheetSpriteDefinitionCopyWithImpl<$Res>
    extends _$SpriteDefinitionCopyWithImpl<$Res, _$SheetSpriteDefinition>
    implements _$$SheetSpriteDefinitionCopyWith<$Res> {
  __$$SheetSpriteDefinitionCopyWithImpl(_$SheetSpriteDefinition _value,
      $Res Function(_$SheetSpriteDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sheet = null,
    Object? columnIndex = null,
    Object? rowIndex = null,
    Object? length = null,
    Object? height = null,
  }) {
    return _then(_$SheetSpriteDefinition(
      null == sheet
          ? _value.sheet
          : sheet // ignore: cast_nullable_to_non_nullable
              as SpriteSheetDefinition,
      columnIndex: null == columnIndex
          ? _value.columnIndex
          : columnIndex // ignore: cast_nullable_to_non_nullable
              as int,
      rowIndex: null == rowIndex
          ? _value.rowIndex
          : rowIndex // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SpriteSheetDefinitionCopyWith<$Res> get sheet {
    return $SpriteSheetDefinitionCopyWith<$Res>(_value.sheet, (value) {
      return _then(_value.copyWith(sheet: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SheetSpriteDefinition extends SheetSpriteDefinition {
  const _$SheetSpriteDefinition(this.sheet,
      {required this.columnIndex,
      required this.rowIndex,
      this.length = 1,
      this.height = 1,
      final String? $type})
      : $type = $type ?? 'fromSheet',
        super._();

  factory _$SheetSpriteDefinition.fromJson(Map<String, dynamic> json) =>
      _$$SheetSpriteDefinitionFromJson(json);

  @override
  final SpriteSheetDefinition sheet;
  @override
  final int columnIndex;
  @override
  final int rowIndex;
  @override
  @JsonKey()
  final int length;
  @override
  @JsonKey()
  final int height;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SpriteDefinition.fromSheet(sheet: $sheet, columnIndex: $columnIndex, rowIndex: $rowIndex, length: $length, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SheetSpriteDefinition &&
            (identical(other.sheet, sheet) || other.sheet == sheet) &&
            (identical(other.columnIndex, columnIndex) ||
                other.columnIndex == columnIndex) &&
            (identical(other.rowIndex, rowIndex) ||
                other.rowIndex == rowIndex) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sheet, columnIndex, rowIndex, length, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SheetSpriteDefinitionCopyWith<_$SheetSpriteDefinition> get copyWith =>
      __$$SheetSpriteDefinitionCopyWithImpl<_$SheetSpriteDefinition>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String path) $default, {
    required TResult Function(SpriteSheetDefinition sheet, int columnIndex,
            int rowIndex, int length, int height)
        fromSheet,
  }) {
    return fromSheet(sheet, columnIndex, rowIndex, length, height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String path)? $default, {
    TResult? Function(SpriteSheetDefinition sheet, int columnIndex,
            int rowIndex, int length, int height)?
        fromSheet,
  }) {
    return fromSheet?.call(sheet, columnIndex, rowIndex, length, height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String path)? $default, {
    TResult Function(SpriteSheetDefinition sheet, int columnIndex, int rowIndex,
            int length, int height)?
        fromSheet,
    required TResult orElse(),
  }) {
    if (fromSheet != null) {
      return fromSheet(sheet, columnIndex, rowIndex, length, height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SpriteDefinition value) $default, {
    required TResult Function(SheetSpriteDefinition value) fromSheet,
  }) {
    return fromSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SpriteDefinition value)? $default, {
    TResult? Function(SheetSpriteDefinition value)? fromSheet,
  }) {
    return fromSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SpriteDefinition value)? $default, {
    TResult Function(SheetSpriteDefinition value)? fromSheet,
    required TResult orElse(),
  }) {
    if (fromSheet != null) {
      return fromSheet(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SheetSpriteDefinitionToJson(
      this,
    );
  }
}

abstract class SheetSpriteDefinition extends SpriteDefinition {
  const factory SheetSpriteDefinition(final SpriteSheetDefinition sheet,
      {required final int columnIndex,
      required final int rowIndex,
      final int length,
      final int height}) = _$SheetSpriteDefinition;

  const SheetSpriteDefinition._() : super._();

  factory SheetSpriteDefinition.fromJson(Map<String, dynamic> json) =
      _$SheetSpriteDefinition.fromJson;

  SpriteSheetDefinition get sheet;

  int get columnIndex;

  int get rowIndex;

  int get length;

  int get height;

  @JsonKey(ignore: true)
  _$$SheetSpriteDefinitionCopyWith<_$SheetSpriteDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

SpriteSheetDefinition _$SpriteSheetDefinitionFromJson(
    Map<String, dynamic> json) {
  return _SpriteSheetDefinition.fromJson(json);
}

/// @nodoc
mixin _$SpriteSheetDefinition {
  String get path => throw _privateConstructorUsedError;

  int get columnsNumber => throw _privateConstructorUsedError;

  int get rowsNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpriteSheetDefinitionCopyWith<SpriteSheetDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpriteSheetDefinitionCopyWith<$Res> {
  factory $SpriteSheetDefinitionCopyWith(SpriteSheetDefinition value,
          $Res Function(SpriteSheetDefinition) then) =
      _$SpriteSheetDefinitionCopyWithImpl<$Res, SpriteSheetDefinition>;

  @useResult
  $Res call({String path, int columnsNumber, int rowsNumber});
}

/// @nodoc
class _$SpriteSheetDefinitionCopyWithImpl<$Res,
        $Val extends SpriteSheetDefinition>
    implements $SpriteSheetDefinitionCopyWith<$Res> {
  _$SpriteSheetDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? columnsNumber = null,
    Object? rowsNumber = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      columnsNumber: null == columnsNumber
          ? _value.columnsNumber
          : columnsNumber // ignore: cast_nullable_to_non_nullable
              as int,
      rowsNumber: null == rowsNumber
          ? _value.rowsNumber
          : rowsNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpriteSheetDefinitionCopyWith<$Res>
    implements $SpriteSheetDefinitionCopyWith<$Res> {
  factory _$$_SpriteSheetDefinitionCopyWith(_$_SpriteSheetDefinition value,
          $Res Function(_$_SpriteSheetDefinition) then) =
      __$$_SpriteSheetDefinitionCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String path, int columnsNumber, int rowsNumber});
}

/// @nodoc
class __$$_SpriteSheetDefinitionCopyWithImpl<$Res>
    extends _$SpriteSheetDefinitionCopyWithImpl<$Res, _$_SpriteSheetDefinition>
    implements _$$_SpriteSheetDefinitionCopyWith<$Res> {
  __$$_SpriteSheetDefinitionCopyWithImpl(_$_SpriteSheetDefinition _value,
      $Res Function(_$_SpriteSheetDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? columnsNumber = null,
    Object? rowsNumber = null,
  }) {
    return _then(_$_SpriteSheetDefinition(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      columnsNumber: null == columnsNumber
          ? _value.columnsNumber
          : columnsNumber // ignore: cast_nullable_to_non_nullable
              as int,
      rowsNumber: null == rowsNumber
          ? _value.rowsNumber
          : rowsNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpriteSheetDefinition extends _SpriteSheetDefinition {
  const _$_SpriteSheetDefinition(this.path,
      {required this.columnsNumber, required this.rowsNumber})
      : super._();

  factory _$_SpriteSheetDefinition.fromJson(Map<String, dynamic> json) =>
      _$$_SpriteSheetDefinitionFromJson(json);

  @override
  final String path;
  @override
  final int columnsNumber;
  @override
  final int rowsNumber;

  @override
  String toString() {
    return 'SpriteSheetDefinition(path: $path, columnsNumber: $columnsNumber, rowsNumber: $rowsNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpriteSheetDefinition &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.columnsNumber, columnsNumber) ||
                other.columnsNumber == columnsNumber) &&
            (identical(other.rowsNumber, rowsNumber) ||
                other.rowsNumber == rowsNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path, columnsNumber, rowsNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpriteSheetDefinitionCopyWith<_$_SpriteSheetDefinition> get copyWith =>
      __$$_SpriteSheetDefinitionCopyWithImpl<_$_SpriteSheetDefinition>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpriteSheetDefinitionToJson(
      this,
    );
  }
}

abstract class _SpriteSheetDefinition extends SpriteSheetDefinition {
  const factory _SpriteSheetDefinition(final String path,
      {required final int columnsNumber,
      required final int rowsNumber}) = _$_SpriteSheetDefinition;

  const _SpriteSheetDefinition._() : super._();

  factory _SpriteSheetDefinition.fromJson(Map<String, dynamic> json) =
      _$_SpriteSheetDefinition.fromJson;

  @override
  String get path;

  @override
  int get columnsNumber;

  @override
  int get rowsNumber;

  @override
  @JsonKey(ignore: true)
  _$$_SpriteSheetDefinitionCopyWith<_$_SpriteSheetDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}
