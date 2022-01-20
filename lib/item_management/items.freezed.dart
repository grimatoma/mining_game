// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShopItemTearOff {
  const _$ShopItemTearOff();

  _ShopItem call({required Item item, required Resources cost}) {
    return _ShopItem(
      item: item,
      cost: cost,
    );
  }
}

/// @nodoc
const $ShopItem = _$ShopItemTearOff();

/// @nodoc
mixin _$ShopItem {
  Item get item => throw _privateConstructorUsedError;
  Resources get cost => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopItemCopyWith<ShopItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopItemCopyWith<$Res> {
  factory $ShopItemCopyWith(ShopItem value, $Res Function(ShopItem) then) =
      _$ShopItemCopyWithImpl<$Res>;
  $Res call({Item item, Resources cost});

  $ResourcesCopyWith<$Res> get cost;
}

/// @nodoc
class _$ShopItemCopyWithImpl<$Res> implements $ShopItemCopyWith<$Res> {
  _$ShopItemCopyWithImpl(this._value, this._then);

  final ShopItem _value;
  // ignore: unused_field
  final $Res Function(ShopItem) _then;

  @override
  $Res call({
    Object? item = freezed,
    Object? cost = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Resources,
    ));
  }

  @override
  $ResourcesCopyWith<$Res> get cost {
    return $ResourcesCopyWith<$Res>(_value.cost, (value) {
      return _then(_value.copyWith(cost: value));
    });
  }
}

/// @nodoc
abstract class _$ShopItemCopyWith<$Res> implements $ShopItemCopyWith<$Res> {
  factory _$ShopItemCopyWith(_ShopItem value, $Res Function(_ShopItem) then) =
      __$ShopItemCopyWithImpl<$Res>;
  @override
  $Res call({Item item, Resources cost});

  @override
  $ResourcesCopyWith<$Res> get cost;
}

/// @nodoc
class __$ShopItemCopyWithImpl<$Res> extends _$ShopItemCopyWithImpl<$Res>
    implements _$ShopItemCopyWith<$Res> {
  __$ShopItemCopyWithImpl(_ShopItem _value, $Res Function(_ShopItem) _then)
      : super(_value, (v) => _then(v as _ShopItem));

  @override
  _ShopItem get _value => super._value as _ShopItem;

  @override
  $Res call({
    Object? item = freezed,
    Object? cost = freezed,
  }) {
    return _then(_ShopItem(
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Resources,
    ));
  }
}

/// @nodoc

class _$_ShopItem extends _ShopItem {
  const _$_ShopItem({required this.item, required this.cost}) : super._();

  @override
  final Item item;
  @override
  final Resources cost;

  @override
  String toString() {
    return 'ShopItem(item: $item, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShopItem &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.cost, cost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(cost));

  @JsonKey(ignore: true)
  @override
  _$ShopItemCopyWith<_ShopItem> get copyWith =>
      __$ShopItemCopyWithImpl<_ShopItem>(this, _$identity);
}

abstract class _ShopItem extends ShopItem {
  const factory _ShopItem({required Item item, required Resources cost}) =
      _$_ShopItem;
  const _ShopItem._() : super._();

  @override
  Item get item;
  @override
  Resources get cost;
  @override
  @JsonKey(ignore: true)
  _$ShopItemCopyWith<_ShopItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MinerTearOff {
  const _$MinerTearOff();

  _Miner call(
      {required int id,
      required String name,
      required String description,
      required int radius,
      required int depth,
      required int damage,
      required int hopperSize,
      required int fuelConsumption}) {
    return _Miner(
      id: id,
      name: name,
      description: description,
      radius: radius,
      depth: depth,
      damage: damage,
      hopperSize: hopperSize,
      fuelConsumption: fuelConsumption,
    );
  }
}

/// @nodoc
const $Miner = _$MinerTearOff();

/// @nodoc
mixin _$Miner {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get radius => throw _privateConstructorUsedError;
  int get depth => throw _privateConstructorUsedError;
  int get damage => throw _privateConstructorUsedError;
  int get hopperSize => throw _privateConstructorUsedError;
  int get fuelConsumption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MinerCopyWith<Miner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinerCopyWith<$Res> {
  factory $MinerCopyWith(Miner value, $Res Function(Miner) then) =
      _$MinerCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String description,
      int radius,
      int depth,
      int damage,
      int hopperSize,
      int fuelConsumption});
}

/// @nodoc
class _$MinerCopyWithImpl<$Res> implements $MinerCopyWith<$Res> {
  _$MinerCopyWithImpl(this._value, this._then);

  final Miner _value;
  // ignore: unused_field
  final $Res Function(Miner) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? radius = freezed,
    Object? depth = freezed,
    Object? damage = freezed,
    Object? hopperSize = freezed,
    Object? fuelConsumption = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      damage: damage == freezed
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
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
abstract class _$MinerCopyWith<$Res> implements $MinerCopyWith<$Res> {
  factory _$MinerCopyWith(_Miner value, $Res Function(_Miner) then) =
      __$MinerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String description,
      int radius,
      int depth,
      int damage,
      int hopperSize,
      int fuelConsumption});
}

/// @nodoc
class __$MinerCopyWithImpl<$Res> extends _$MinerCopyWithImpl<$Res>
    implements _$MinerCopyWith<$Res> {
  __$MinerCopyWithImpl(_Miner _value, $Res Function(_Miner) _then)
      : super(_value, (v) => _then(v as _Miner));

  @override
  _Miner get _value => super._value as _Miner;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? radius = freezed,
    Object? depth = freezed,
    Object? damage = freezed,
    Object? hopperSize = freezed,
    Object? fuelConsumption = freezed,
  }) {
    return _then(_Miner(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      damage: damage == freezed
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
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

class _$_Miner extends _Miner {
  const _$_Miner(
      {required this.id,
      required this.name,
      required this.description,
      required this.radius,
      required this.depth,
      required this.damage,
      required this.hopperSize,
      required this.fuelConsumption})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int radius;
  @override
  final int depth;
  @override
  final int damage;
  @override
  final int hopperSize;
  @override
  final int fuelConsumption;

  @override
  String toString() {
    return 'Miner(id: $id, name: $name, description: $description, radius: $radius, depth: $depth, damage: $damage, hopperSize: $hopperSize, fuelConsumption: $fuelConsumption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Miner &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.radius, radius) &&
            const DeepCollectionEquality().equals(other.depth, depth) &&
            const DeepCollectionEquality().equals(other.damage, damage) &&
            const DeepCollectionEquality()
                .equals(other.hopperSize, hopperSize) &&
            const DeepCollectionEquality()
                .equals(other.fuelConsumption, fuelConsumption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(radius),
      const DeepCollectionEquality().hash(depth),
      const DeepCollectionEquality().hash(damage),
      const DeepCollectionEquality().hash(hopperSize),
      const DeepCollectionEquality().hash(fuelConsumption));

  @JsonKey(ignore: true)
  @override
  _$MinerCopyWith<_Miner> get copyWith =>
      __$MinerCopyWithImpl<_Miner>(this, _$identity);
}

abstract class _Miner extends Miner {
  const factory _Miner(
      {required int id,
      required String name,
      required String description,
      required int radius,
      required int depth,
      required int damage,
      required int hopperSize,
      required int fuelConsumption}) = _$_Miner;
  const _Miner._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get radius;
  @override
  int get depth;
  @override
  int get damage;
  @override
  int get hopperSize;
  @override
  int get fuelConsumption;
  @override
  @JsonKey(ignore: true)
  _$MinerCopyWith<_Miner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ScannerTearOff {
  const _$ScannerTearOff();

  _Scanner call(
      {required int id,
      required String name,
      required String description,
      required int radius,
      required int depth}) {
    return _Scanner(
      id: id,
      name: name,
      description: description,
      radius: radius,
      depth: depth,
    );
  }
}

/// @nodoc
const $Scanner = _$ScannerTearOff();

/// @nodoc
mixin _$Scanner {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get radius => throw _privateConstructorUsedError;
  int get depth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScannerCopyWith<Scanner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannerCopyWith<$Res> {
  factory $ScannerCopyWith(Scanner value, $Res Function(Scanner) then) =
      _$ScannerCopyWithImpl<$Res>;
  $Res call({int id, String name, String description, int radius, int depth});
}

/// @nodoc
class _$ScannerCopyWithImpl<$Res> implements $ScannerCopyWith<$Res> {
  _$ScannerCopyWithImpl(this._value, this._then);

  final Scanner _value;
  // ignore: unused_field
  final $Res Function(Scanner) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? radius = freezed,
    Object? depth = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
abstract class _$ScannerCopyWith<$Res> implements $ScannerCopyWith<$Res> {
  factory _$ScannerCopyWith(_Scanner value, $Res Function(_Scanner) then) =
      __$ScannerCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String description, int radius, int depth});
}

/// @nodoc
class __$ScannerCopyWithImpl<$Res> extends _$ScannerCopyWithImpl<$Res>
    implements _$ScannerCopyWith<$Res> {
  __$ScannerCopyWithImpl(_Scanner _value, $Res Function(_Scanner) _then)
      : super(_value, (v) => _then(v as _Scanner));

  @override
  _Scanner get _value => super._value as _Scanner;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? radius = freezed,
    Object? depth = freezed,
  }) {
    return _then(_Scanner(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc

class _$_Scanner extends _Scanner {
  const _$_Scanner(
      {required this.id,
      required this.name,
      required this.description,
      required this.radius,
      required this.depth})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int radius;
  @override
  final int depth;

  @override
  String toString() {
    return 'Scanner(id: $id, name: $name, description: $description, radius: $radius, depth: $depth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Scanner &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.radius, radius) &&
            const DeepCollectionEquality().equals(other.depth, depth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(radius),
      const DeepCollectionEquality().hash(depth));

  @JsonKey(ignore: true)
  @override
  _$ScannerCopyWith<_Scanner> get copyWith =>
      __$ScannerCopyWithImpl<_Scanner>(this, _$identity);
}

abstract class _Scanner extends Scanner {
  const factory _Scanner(
      {required int id,
      required String name,
      required String description,
      required int radius,
      required int depth}) = _$_Scanner;
  const _Scanner._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get radius;
  @override
  int get depth;
  @override
  @JsonKey(ignore: true)
  _$ScannerCopyWith<_Scanner> get copyWith =>
      throw _privateConstructorUsedError;
}
