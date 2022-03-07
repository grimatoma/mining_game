// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'miner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MinerDefinition _$MinerDefinitionFromJson(Map<String, dynamic> json) {
  return _MinerDefinition.fromJson(json);
}

/// @nodoc
class _$MinerDefinitionTearOff {
  const _$MinerDefinitionTearOff();

  _MinerDefinition call(
      {required String name,
      required String description,
      required int radius,
      required int depth,
      required int baseDamage,
      required int baseHopperSize,
      required int fuelConsumption,
      required String image}) {
    return _MinerDefinition(
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

  MinerDefinition fromJson(Map<String, Object?> json) {
    return MinerDefinition.fromJson(json);
  }
}

/// @nodoc
const $MinerDefinition = _$MinerDefinitionTearOff();

/// @nodoc
mixin _$MinerDefinition {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get radius => throw _privateConstructorUsedError;
  int get depth => throw _privateConstructorUsedError;
  int get baseDamage =>
      throw _privateConstructorUsedError; // Should this be for all resources or per resource?
  int get baseHopperSize => throw _privateConstructorUsedError;
  int get fuelConsumption => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinerDefinitionCopyWith<MinerDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinerDefinitionCopyWith<$Res> {
  factory $MinerDefinitionCopyWith(
          MinerDefinition value, $Res Function(MinerDefinition) then) =
      _$MinerDefinitionCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      int radius,
      int depth,
      int baseDamage,
      int baseHopperSize,
      int fuelConsumption,
      String image});
}

/// @nodoc
class _$MinerDefinitionCopyWithImpl<$Res>
    implements $MinerDefinitionCopyWith<$Res> {
  _$MinerDefinitionCopyWithImpl(this._value, this._then);

  final MinerDefinition _value;
  // ignore: unused_field
  final $Res Function(MinerDefinition) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? radius = freezed,
    Object? depth = freezed,
    Object? baseDamage = freezed,
    Object? baseHopperSize = freezed,
    Object? fuelConsumption = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$MinerDefinitionCopyWith<$Res>
    implements $MinerDefinitionCopyWith<$Res> {
  factory _$MinerDefinitionCopyWith(
          _MinerDefinition value, $Res Function(_MinerDefinition) then) =
      __$MinerDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      int radius,
      int depth,
      int baseDamage,
      int baseHopperSize,
      int fuelConsumption,
      String image});
}

/// @nodoc
class __$MinerDefinitionCopyWithImpl<$Res>
    extends _$MinerDefinitionCopyWithImpl<$Res>
    implements _$MinerDefinitionCopyWith<$Res> {
  __$MinerDefinitionCopyWithImpl(
      _MinerDefinition _value, $Res Function(_MinerDefinition) _then)
      : super(_value, (v) => _then(v as _MinerDefinition));

  @override
  _MinerDefinition get _value => super._value as _MinerDefinition;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? radius = freezed,
    Object? depth = freezed,
    Object? baseDamage = freezed,
    Object? baseHopperSize = freezed,
    Object? fuelConsumption = freezed,
    Object? image = freezed,
  }) {
    return _then(_MinerDefinition(
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
class _$_MinerDefinition extends _MinerDefinition {
  const _$_MinerDefinition(
      {required this.name,
      required this.description,
      required this.radius,
      required this.depth,
      required this.baseDamage,
      required this.baseHopperSize,
      required this.fuelConsumption,
      required this.image})
      : super._();

  factory _$_MinerDefinition.fromJson(Map<String, dynamic> json) =>
      _$$_MinerDefinitionFromJson(json);

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

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MinerDefinition &&
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
  _$MinerDefinitionCopyWith<_MinerDefinition> get copyWith =>
      __$MinerDefinitionCopyWithImpl<_MinerDefinition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MinerDefinitionToJson(this);
  }
}

abstract class _MinerDefinition extends MinerDefinition {
  const factory _MinerDefinition(
      {required String name,
      required String description,
      required int radius,
      required int depth,
      required int baseDamage,
      required int baseHopperSize,
      required int fuelConsumption,
      required String image}) = _$_MinerDefinition;
  const _MinerDefinition._() : super._();

  factory _MinerDefinition.fromJson(Map<String, dynamic> json) =
      _$_MinerDefinition.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  int get radius;
  @override
  int get depth;
  @override
  int get baseDamage;
  @override // Should this be for all resources or per resource?
  int get baseHopperSize;
  @override
  int get fuelConsumption;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$MinerDefinitionCopyWith<_MinerDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MinerInstanceTearOff {
  const _$MinerInstanceTearOff();

  _MinerInstance call(
      {@HiveField(0) required InstanceId id,
      @HiveField(1) required MinerDefinition definition,
      @HiveField(2) ItemKey? drillItemId,
      @HiveField(4) required ItemContainer hopper}) {
    return _MinerInstance(
      id: id,
      definition: definition,
      drillItemId: drillItemId,
      hopper: hopper,
    );
  }
}

/// @nodoc
const $MinerInstance = _$MinerInstanceTearOff();

/// @nodoc
mixin _$MinerInstance {
  @HiveField(0)
  InstanceId get id => throw _privateConstructorUsedError;
  @HiveField(1)
  MinerDefinition get definition => throw _privateConstructorUsedError;
  @HiveField(2)
  ItemKey? get drillItemId => throw _privateConstructorUsedError;
  @HiveField(4)
  ItemContainer get hopper => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MinerInstanceCopyWith<MinerInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinerInstanceCopyWith<$Res> {
  factory $MinerInstanceCopyWith(
          MinerInstance value, $Res Function(MinerInstance) then) =
      _$MinerInstanceCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) InstanceId id,
      @HiveField(1) MinerDefinition definition,
      @HiveField(2) ItemKey? drillItemId,
      @HiveField(4) ItemContainer hopper});

  $MinerDefinitionCopyWith<$Res> get definition;
}

/// @nodoc
class _$MinerInstanceCopyWithImpl<$Res>
    implements $MinerInstanceCopyWith<$Res> {
  _$MinerInstanceCopyWithImpl(this._value, this._then);

  final MinerInstance _value;
  // ignore: unused_field
  final $Res Function(MinerInstance) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? definition = freezed,
    Object? drillItemId = freezed,
    Object? hopper = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as InstanceId,
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as MinerDefinition,
      drillItemId: drillItemId == freezed
          ? _value.drillItemId
          : drillItemId // ignore: cast_nullable_to_non_nullable
              as ItemKey?,
      hopper: hopper == freezed
          ? _value.hopper
          : hopper // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
    ));
  }

  @override
  $MinerDefinitionCopyWith<$Res> get definition {
    return $MinerDefinitionCopyWith<$Res>(_value.definition, (value) {
      return _then(_value.copyWith(definition: value));
    });
  }
}

/// @nodoc
abstract class _$MinerInstanceCopyWith<$Res>
    implements $MinerInstanceCopyWith<$Res> {
  factory _$MinerInstanceCopyWith(
          _MinerInstance value, $Res Function(_MinerInstance) then) =
      __$MinerInstanceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) InstanceId id,
      @HiveField(1) MinerDefinition definition,
      @HiveField(2) ItemKey? drillItemId,
      @HiveField(4) ItemContainer hopper});

  @override
  $MinerDefinitionCopyWith<$Res> get definition;
}

/// @nodoc
class __$MinerInstanceCopyWithImpl<$Res>
    extends _$MinerInstanceCopyWithImpl<$Res>
    implements _$MinerInstanceCopyWith<$Res> {
  __$MinerInstanceCopyWithImpl(
      _MinerInstance _value, $Res Function(_MinerInstance) _then)
      : super(_value, (v) => _then(v as _MinerInstance));

  @override
  _MinerInstance get _value => super._value as _MinerInstance;

  @override
  $Res call({
    Object? id = freezed,
    Object? definition = freezed,
    Object? drillItemId = freezed,
    Object? hopper = freezed,
  }) {
    return _then(_MinerInstance(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as InstanceId,
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as MinerDefinition,
      drillItemId: drillItemId == freezed
          ? _value.drillItemId
          : drillItemId // ignore: cast_nullable_to_non_nullable
              as ItemKey?,
      hopper: hopper == freezed
          ? _value.hopper
          : hopper // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 10, adapterName: 'MinerInstanceAdapter')
class _$_MinerInstance extends _MinerInstance {
  const _$_MinerInstance(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.definition,
      @HiveField(2) this.drillItemId,
      @HiveField(4) required this.hopper})
      : super._();

  @override
  @HiveField(0)
  final InstanceId id;
  @override
  @HiveField(1)
  final MinerDefinition definition;
  @override
  @HiveField(2)
  final ItemKey? drillItemId;
  @override
  @HiveField(4)
  final ItemContainer hopper;

  @override
  String toString() {
    return 'MinerInstance(id: $id, definition: $definition, drillItemId: $drillItemId, hopper: $hopper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MinerInstance &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.definition, definition) &&
            const DeepCollectionEquality()
                .equals(other.drillItemId, drillItemId) &&
            const DeepCollectionEquality().equals(other.hopper, hopper));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(definition),
      const DeepCollectionEquality().hash(drillItemId),
      const DeepCollectionEquality().hash(hopper));

  @JsonKey(ignore: true)
  @override
  _$MinerInstanceCopyWith<_MinerInstance> get copyWith =>
      __$MinerInstanceCopyWithImpl<_MinerInstance>(this, _$identity);
}

abstract class _MinerInstance extends MinerInstance {
  const factory _MinerInstance(
      {@HiveField(0) required InstanceId id,
      @HiveField(1) required MinerDefinition definition,
      @HiveField(2) ItemKey? drillItemId,
      @HiveField(4) required ItemContainer hopper}) = _$_MinerInstance;
  const _MinerInstance._() : super._();

  @override
  @HiveField(0)
  InstanceId get id;
  @override
  @HiveField(1)
  MinerDefinition get definition;
  @override
  @HiveField(2)
  ItemKey? get drillItemId;
  @override
  @HiveField(4)
  ItemContainer get hopper;
  @override
  @JsonKey(ignore: true)
  _$MinerInstanceCopyWith<_MinerInstance> get copyWith =>
      throw _privateConstructorUsedError;
}
