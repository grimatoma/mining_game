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

/// @nodoc
class _$MinerProtoTearOff {
  const _$MinerProtoTearOff();

  _MinerProto call(
      {@HiveField(1) required ItemId itemId,
      @HiveField(2) required String name,
      @HiveField(3) required String description,
      @HiveField(4) required int radius,
      @HiveField(5) required int depth,
      @HiveField(6) required int baseDamage,
      @HiveField(7) required int hopperSize,
      @HiveField(8) required int fuelConsumption}) {
    return _MinerProto(
      itemId: itemId,
      name: name,
      description: description,
      radius: radius,
      depth: depth,
      baseDamage: baseDamage,
      hopperSize: hopperSize,
      fuelConsumption: fuelConsumption,
    );
  }
}

/// @nodoc
const $MinerProto = _$MinerProtoTearOff();

/// @nodoc
mixin _$MinerProto {
  @HiveField(1)
  ItemId get itemId => throw _privateConstructorUsedError;
  @HiveField(2)
  String get name => throw _privateConstructorUsedError;
  @HiveField(3)
  String get description => throw _privateConstructorUsedError;
  @HiveField(4)
  int get radius => throw _privateConstructorUsedError;
  @HiveField(5)
  int get depth => throw _privateConstructorUsedError;
  @HiveField(6)
  int get baseDamage => throw _privateConstructorUsedError;
  @HiveField(7)
  int get hopperSize => throw _privateConstructorUsedError;
  @HiveField(8)
  int get fuelConsumption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MinerProtoCopyWith<MinerProto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinerProtoCopyWith<$Res> {
  factory $MinerProtoCopyWith(
          MinerProto value, $Res Function(MinerProto) then) =
      _$MinerProtoCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(1) ItemId itemId,
      @HiveField(2) String name,
      @HiveField(3) String description,
      @HiveField(4) int radius,
      @HiveField(5) int depth,
      @HiveField(6) int baseDamage,
      @HiveField(7) int hopperSize,
      @HiveField(8) int fuelConsumption});

  $ItemIdCopyWith<$Res> get itemId;
}

/// @nodoc
class _$MinerProtoCopyWithImpl<$Res> implements $MinerProtoCopyWith<$Res> {
  _$MinerProtoCopyWithImpl(this._value, this._then);

  final MinerProto _value;
  // ignore: unused_field
  final $Res Function(MinerProto) _then;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? radius = freezed,
    Object? depth = freezed,
    Object? baseDamage = freezed,
    Object? hopperSize = freezed,
    Object? fuelConsumption = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
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
      hopperSize: hopperSize == freezed
          ? _value.hopperSize
          : hopperSize // ignore: cast_nullable_to_non_nullable
              as int,
      fuelConsumption: fuelConsumption == freezed
          ? _value.fuelConsumption
          : fuelConsumption // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$MinerProtoCopyWith<$Res> implements $MinerProtoCopyWith<$Res> {
  factory _$MinerProtoCopyWith(
          _MinerProto value, $Res Function(_MinerProto) then) =
      __$MinerProtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(1) ItemId itemId,
      @HiveField(2) String name,
      @HiveField(3) String description,
      @HiveField(4) int radius,
      @HiveField(5) int depth,
      @HiveField(6) int baseDamage,
      @HiveField(7) int hopperSize,
      @HiveField(8) int fuelConsumption});

  @override
  $ItemIdCopyWith<$Res> get itemId;
}

/// @nodoc
class __$MinerProtoCopyWithImpl<$Res> extends _$MinerProtoCopyWithImpl<$Res>
    implements _$MinerProtoCopyWith<$Res> {
  __$MinerProtoCopyWithImpl(
      _MinerProto _value, $Res Function(_MinerProto) _then)
      : super(_value, (v) => _then(v as _MinerProto));

  @override
  _MinerProto get _value => super._value as _MinerProto;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? radius = freezed,
    Object? depth = freezed,
    Object? baseDamage = freezed,
    Object? hopperSize = freezed,
    Object? fuelConsumption = freezed,
  }) {
    return _then(_MinerProto(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
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
      hopperSize: hopperSize == freezed
          ? _value.hopperSize
          : hopperSize // ignore: cast_nullable_to_non_nullable
              as int,
      fuelConsumption: fuelConsumption == freezed
          ? _value.fuelConsumption
          : fuelConsumption // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 11, adapterName: 'MinerProtoAdapter')
class _$_MinerProto extends _MinerProto {
  const _$_MinerProto(
      {@HiveField(1) required this.itemId,
      @HiveField(2) required this.name,
      @HiveField(3) required this.description,
      @HiveField(4) required this.radius,
      @HiveField(5) required this.depth,
      @HiveField(6) required this.baseDamage,
      @HiveField(7) required this.hopperSize,
      @HiveField(8) required this.fuelConsumption})
      : super._();

  @override
  @HiveField(1)
  final ItemId itemId;
  @override
  @HiveField(2)
  final String name;
  @override
  @HiveField(3)
  final String description;
  @override
  @HiveField(4)
  final int radius;
  @override
  @HiveField(5)
  final int depth;
  @override
  @HiveField(6)
  final int baseDamage;
  @override
  @HiveField(7)
  final int hopperSize;
  @override
  @HiveField(8)
  final int fuelConsumption;

  @override
  String toString() {
    return 'MinerProto(itemId: $itemId, name: $name, description: $description, radius: $radius, depth: $depth, baseDamage: $baseDamage, hopperSize: $hopperSize, fuelConsumption: $fuelConsumption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MinerProto &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.radius, radius) &&
            const DeepCollectionEquality().equals(other.depth, depth) &&
            const DeepCollectionEquality()
                .equals(other.baseDamage, baseDamage) &&
            const DeepCollectionEquality()
                .equals(other.hopperSize, hopperSize) &&
            const DeepCollectionEquality()
                .equals(other.fuelConsumption, fuelConsumption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(radius),
      const DeepCollectionEquality().hash(depth),
      const DeepCollectionEquality().hash(baseDamage),
      const DeepCollectionEquality().hash(hopperSize),
      const DeepCollectionEquality().hash(fuelConsumption));

  @JsonKey(ignore: true)
  @override
  _$MinerProtoCopyWith<_MinerProto> get copyWith =>
      __$MinerProtoCopyWithImpl<_MinerProto>(this, _$identity);
}

abstract class _MinerProto extends MinerProto {
  const factory _MinerProto(
      {@HiveField(1) required ItemId itemId,
      @HiveField(2) required String name,
      @HiveField(3) required String description,
      @HiveField(4) required int radius,
      @HiveField(5) required int depth,
      @HiveField(6) required int baseDamage,
      @HiveField(7) required int hopperSize,
      @HiveField(8) required int fuelConsumption}) = _$_MinerProto;
  const _MinerProto._() : super._();

  @override
  @HiveField(1)
  ItemId get itemId;
  @override
  @HiveField(2)
  String get name;
  @override
  @HiveField(3)
  String get description;
  @override
  @HiveField(4)
  int get radius;
  @override
  @HiveField(5)
  int get depth;
  @override
  @HiveField(6)
  int get baseDamage;
  @override
  @HiveField(7)
  int get hopperSize;
  @override
  @HiveField(8)
  int get fuelConsumption;
  @override
  @JsonKey(ignore: true)
  _$MinerProtoCopyWith<_MinerProto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MinerInstanceTearOff {
  const _$MinerInstanceTearOff();

  _MinerInstance call(
      {@HiveField(1) required MinerProto proto,
      @HiveField(2) required InstanceId instanceId,
      @HiveField(3) ItemId? drillItemId,
      @HiveField(4) PlanetTile? planetTile}) {
    return _MinerInstance(
      proto: proto,
      instanceId: instanceId,
      drillItemId: drillItemId,
      planetTile: planetTile,
    );
  }
}

/// @nodoc
const $MinerInstance = _$MinerInstanceTearOff();

/// @nodoc
mixin _$MinerInstance {
  @HiveField(1)
  MinerProto get proto => throw _privateConstructorUsedError;
  @HiveField(2)
  InstanceId get instanceId => throw _privateConstructorUsedError;
  @HiveField(3)
  ItemId? get drillItemId => throw _privateConstructorUsedError;
  @HiveField(4)
  PlanetTile? get planetTile => throw _privateConstructorUsedError;

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
      {@HiveField(1) MinerProto proto,
      @HiveField(2) InstanceId instanceId,
      @HiveField(3) ItemId? drillItemId,
      @HiveField(4) PlanetTile? planetTile});

  $MinerProtoCopyWith<$Res> get proto;
  $InstanceIdCopyWith<$Res> get instanceId;
  $ItemIdCopyWith<$Res>? get drillItemId;
  $PlanetTileCopyWith<$Res>? get planetTile;
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
    Object? proto = freezed,
    Object? instanceId = freezed,
    Object? drillItemId = freezed,
    Object? planetTile = freezed,
  }) {
    return _then(_value.copyWith(
      proto: proto == freezed
          ? _value.proto
          : proto // ignore: cast_nullable_to_non_nullable
              as MinerProto,
      instanceId: instanceId == freezed
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as InstanceId,
      drillItemId: drillItemId == freezed
          ? _value.drillItemId
          : drillItemId // ignore: cast_nullable_to_non_nullable
              as ItemId?,
      planetTile: planetTile == freezed
          ? _value.planetTile
          : planetTile // ignore: cast_nullable_to_non_nullable
              as PlanetTile?,
    ));
  }

  @override
  $MinerProtoCopyWith<$Res> get proto {
    return $MinerProtoCopyWith<$Res>(_value.proto, (value) {
      return _then(_value.copyWith(proto: value));
    });
  }

  @override
  $InstanceIdCopyWith<$Res> get instanceId {
    return $InstanceIdCopyWith<$Res>(_value.instanceId, (value) {
      return _then(_value.copyWith(instanceId: value));
    });
  }

  @override
  $ItemIdCopyWith<$Res>? get drillItemId {
    if (_value.drillItemId == null) {
      return null;
    }

    return $ItemIdCopyWith<$Res>(_value.drillItemId!, (value) {
      return _then(_value.copyWith(drillItemId: value));
    });
  }

  @override
  $PlanetTileCopyWith<$Res>? get planetTile {
    if (_value.planetTile == null) {
      return null;
    }

    return $PlanetTileCopyWith<$Res>(_value.planetTile!, (value) {
      return _then(_value.copyWith(planetTile: value));
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
      {@HiveField(1) MinerProto proto,
      @HiveField(2) InstanceId instanceId,
      @HiveField(3) ItemId? drillItemId,
      @HiveField(4) PlanetTile? planetTile});

  @override
  $MinerProtoCopyWith<$Res> get proto;
  @override
  $InstanceIdCopyWith<$Res> get instanceId;
  @override
  $ItemIdCopyWith<$Res>? get drillItemId;
  @override
  $PlanetTileCopyWith<$Res>? get planetTile;
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
    Object? proto = freezed,
    Object? instanceId = freezed,
    Object? drillItemId = freezed,
    Object? planetTile = freezed,
  }) {
    return _then(_MinerInstance(
      proto: proto == freezed
          ? _value.proto
          : proto // ignore: cast_nullable_to_non_nullable
              as MinerProto,
      instanceId: instanceId == freezed
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as InstanceId,
      drillItemId: drillItemId == freezed
          ? _value.drillItemId
          : drillItemId // ignore: cast_nullable_to_non_nullable
              as ItemId?,
      planetTile: planetTile == freezed
          ? _value.planetTile
          : planetTile // ignore: cast_nullable_to_non_nullable
              as PlanetTile?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 10, adapterName: 'MinerInstanceAdapter')
class _$_MinerInstance implements _MinerInstance {
  const _$_MinerInstance(
      {@HiveField(1) required this.proto,
      @HiveField(2) required this.instanceId,
      @HiveField(3) this.drillItemId,
      @HiveField(4) this.planetTile});

  @override
  @HiveField(1)
  final MinerProto proto;
  @override
  @HiveField(2)
  final InstanceId instanceId;
  @override
  @HiveField(3)
  final ItemId? drillItemId;
  @override
  @HiveField(4)
  final PlanetTile? planetTile;

  @override
  String toString() {
    return 'MinerInstance(proto: $proto, instanceId: $instanceId, drillItemId: $drillItemId, planetTile: $planetTile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MinerInstance &&
            const DeepCollectionEquality().equals(other.proto, proto) &&
            const DeepCollectionEquality()
                .equals(other.instanceId, instanceId) &&
            const DeepCollectionEquality()
                .equals(other.drillItemId, drillItemId) &&
            const DeepCollectionEquality()
                .equals(other.planetTile, planetTile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(proto),
      const DeepCollectionEquality().hash(instanceId),
      const DeepCollectionEquality().hash(drillItemId),
      const DeepCollectionEquality().hash(planetTile));

  @JsonKey(ignore: true)
  @override
  _$MinerInstanceCopyWith<_MinerInstance> get copyWith =>
      __$MinerInstanceCopyWithImpl<_MinerInstance>(this, _$identity);
}

abstract class _MinerInstance implements MinerInstance {
  const factory _MinerInstance(
      {@HiveField(1) required MinerProto proto,
      @HiveField(2) required InstanceId instanceId,
      @HiveField(3) ItemId? drillItemId,
      @HiveField(4) PlanetTile? planetTile}) = _$_MinerInstance;

  @override
  @HiveField(1)
  MinerProto get proto;
  @override
  @HiveField(2)
  InstanceId get instanceId;
  @override
  @HiveField(3)
  ItemId? get drillItemId;
  @override
  @HiveField(4)
  PlanetTile? get planetTile;
  @override
  @JsonKey(ignore: true)
  _$MinerInstanceCopyWith<_MinerInstance> get copyWith =>
      throw _privateConstructorUsedError;
}
