// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'garage_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GarageStateTearOff {
  const _$GarageStateTearOff();

  _GarageState call(
      @HiveField(1) SyncedMap<int, SlotState, int, SlotState> slotsSyncedMap) {
    return _GarageState(
      slotsSyncedMap,
    );
  }
}

/// @nodoc
const $GarageState = _$GarageStateTearOff();

/// @nodoc
mixin _$GarageState {
  @HiveField(1)
  SyncedMap<int, SlotState, int, SlotState> get slotsSyncedMap =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GarageStateCopyWith<GarageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GarageStateCopyWith<$Res> {
  factory $GarageStateCopyWith(
          GarageState value, $Res Function(GarageState) then) =
      _$GarageStateCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(1) SyncedMap<int, SlotState, int, SlotState> slotsSyncedMap});
}

/// @nodoc
class _$GarageStateCopyWithImpl<$Res> implements $GarageStateCopyWith<$Res> {
  _$GarageStateCopyWithImpl(this._value, this._then);

  final GarageState _value;
  // ignore: unused_field
  final $Res Function(GarageState) _then;

  @override
  $Res call({
    Object? slotsSyncedMap = freezed,
  }) {
    return _then(_value.copyWith(
      slotsSyncedMap: slotsSyncedMap == freezed
          ? _value.slotsSyncedMap
          : slotsSyncedMap // ignore: cast_nullable_to_non_nullable
              as SyncedMap<int, SlotState, int, SlotState>,
    ));
  }
}

/// @nodoc
abstract class _$GarageStateCopyWith<$Res>
    implements $GarageStateCopyWith<$Res> {
  factory _$GarageStateCopyWith(
          _GarageState value, $Res Function(_GarageState) then) =
      __$GarageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(1) SyncedMap<int, SlotState, int, SlotState> slotsSyncedMap});
}

/// @nodoc
class __$GarageStateCopyWithImpl<$Res> extends _$GarageStateCopyWithImpl<$Res>
    implements _$GarageStateCopyWith<$Res> {
  __$GarageStateCopyWithImpl(
      _GarageState _value, $Res Function(_GarageState) _then)
      : super(_value, (v) => _then(v as _GarageState));

  @override
  _GarageState get _value => super._value as _GarageState;

  @override
  $Res call({
    Object? slotsSyncedMap = freezed,
  }) {
    return _then(_GarageState(
      slotsSyncedMap == freezed
          ? _value.slotsSyncedMap
          : slotsSyncedMap // ignore: cast_nullable_to_non_nullable
              as SyncedMap<int, SlotState, int, SlotState>,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 42, adapterName: 'GarageStateAdapter')
class _$_GarageState extends _GarageState {
  const _$_GarageState(@HiveField(1) this.slotsSyncedMap) : super._();

  @override
  @HiveField(1)
  final SyncedMap<int, SlotState, int, SlotState> slotsSyncedMap;

  @override
  String toString() {
    return 'GarageState(slotsSyncedMap: $slotsSyncedMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GarageState &&
            const DeepCollectionEquality()
                .equals(other.slotsSyncedMap, slotsSyncedMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(slotsSyncedMap));

  @JsonKey(ignore: true)
  @override
  _$GarageStateCopyWith<_GarageState> get copyWith =>
      __$GarageStateCopyWithImpl<_GarageState>(this, _$identity);
}

abstract class _GarageState extends GarageState {
  const factory _GarageState(
          @HiveField(1)
              SyncedMap<int, SlotState, int, SlotState> slotsSyncedMap) =
      _$_GarageState;
  const _GarageState._() : super._();

  @override
  @HiveField(1)
  SyncedMap<int, SlotState, int, SlotState> get slotsSyncedMap;
  @override
  @JsonKey(ignore: true)
  _$GarageStateCopyWith<_GarageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SlotStateTearOff {
  const _$SlotStateTearOff();

  SlotWithMiner withMiner(
      {@HiveField(1) required InstanceId minerId,
      @HiveField(2) required int index}) {
    return SlotWithMiner(
      minerId: minerId,
      index: index,
    );
  }

  LockedSlot locked({@HiveField(2) required int index}) {
    return LockedSlot(
      index: index,
    );
  }

  EmptySlot empty({@HiveField(2) required int index}) {
    return EmptySlot(
      index: index,
    );
  }
}

/// @nodoc
const $SlotState = _$SlotStateTearOff();

/// @nodoc
mixin _$SlotState {
  @HiveField(2)
  int get index => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(1) InstanceId minerId, @HiveField(2) int index)
        withMiner,
    required TResult Function(@HiveField(2) int index) locked,
    required TResult Function(@HiveField(2) int index) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(1) InstanceId minerId, @HiveField(2) int index)?
        withMiner,
    TResult Function(@HiveField(2) int index)? locked,
    TResult Function(@HiveField(2) int index)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(1) InstanceId minerId, @HiveField(2) int index)?
        withMiner,
    TResult Function(@HiveField(2) int index)? locked,
    TResult Function(@HiveField(2) int index)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SlotWithMiner value) withMiner,
    required TResult Function(LockedSlot value) locked,
    required TResult Function(EmptySlot value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SlotWithMiner value)? withMiner,
    TResult Function(LockedSlot value)? locked,
    TResult Function(EmptySlot value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SlotWithMiner value)? withMiner,
    TResult Function(LockedSlot value)? locked,
    TResult Function(EmptySlot value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlotStateCopyWith<SlotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotStateCopyWith<$Res> {
  factory $SlotStateCopyWith(SlotState value, $Res Function(SlotState) then) =
      _$SlotStateCopyWithImpl<$Res>;
  $Res call({@HiveField(2) int index});
}

/// @nodoc
class _$SlotStateCopyWithImpl<$Res> implements $SlotStateCopyWith<$Res> {
  _$SlotStateCopyWithImpl(this._value, this._then);

  final SlotState _value;
  // ignore: unused_field
  final $Res Function(SlotState) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SlotWithMinerCopyWith<$Res>
    implements $SlotStateCopyWith<$Res> {
  factory $SlotWithMinerCopyWith(
          SlotWithMiner value, $Res Function(SlotWithMiner) then) =
      _$SlotWithMinerCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(1) InstanceId minerId, @HiveField(2) int index});
}

/// @nodoc
class _$SlotWithMinerCopyWithImpl<$Res> extends _$SlotStateCopyWithImpl<$Res>
    implements $SlotWithMinerCopyWith<$Res> {
  _$SlotWithMinerCopyWithImpl(
      SlotWithMiner _value, $Res Function(SlotWithMiner) _then)
      : super(_value, (v) => _then(v as SlotWithMiner));

  @override
  SlotWithMiner get _value => super._value as SlotWithMiner;

  @override
  $Res call({
    Object? minerId = freezed,
    Object? index = freezed,
  }) {
    return _then(SlotWithMiner(
      minerId: minerId == freezed
          ? _value.minerId
          : minerId // ignore: cast_nullable_to_non_nullable
              as InstanceId,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 43, adapterName: 'SlotStateMinerAdapter')
class _$SlotWithMiner implements SlotWithMiner {
  const _$SlotWithMiner(
      {@HiveField(1) required this.minerId, @HiveField(2) required this.index});

  @override
  @HiveField(1)
  final InstanceId minerId;
  @override
  @HiveField(2)
  final int index;

  @override
  String toString() {
    return 'SlotState.withMiner(minerId: $minerId, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SlotWithMiner &&
            const DeepCollectionEquality().equals(other.minerId, minerId) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(minerId),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $SlotWithMinerCopyWith<SlotWithMiner> get copyWith =>
      _$SlotWithMinerCopyWithImpl<SlotWithMiner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(1) InstanceId minerId, @HiveField(2) int index)
        withMiner,
    required TResult Function(@HiveField(2) int index) locked,
    required TResult Function(@HiveField(2) int index) empty,
  }) {
    return withMiner(minerId, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(1) InstanceId minerId, @HiveField(2) int index)?
        withMiner,
    TResult Function(@HiveField(2) int index)? locked,
    TResult Function(@HiveField(2) int index)? empty,
  }) {
    return withMiner?.call(minerId, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(1) InstanceId minerId, @HiveField(2) int index)?
        withMiner,
    TResult Function(@HiveField(2) int index)? locked,
    TResult Function(@HiveField(2) int index)? empty,
    required TResult orElse(),
  }) {
    if (withMiner != null) {
      return withMiner(minerId, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SlotWithMiner value) withMiner,
    required TResult Function(LockedSlot value) locked,
    required TResult Function(EmptySlot value) empty,
  }) {
    return withMiner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SlotWithMiner value)? withMiner,
    TResult Function(LockedSlot value)? locked,
    TResult Function(EmptySlot value)? empty,
  }) {
    return withMiner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SlotWithMiner value)? withMiner,
    TResult Function(LockedSlot value)? locked,
    TResult Function(EmptySlot value)? empty,
    required TResult orElse(),
  }) {
    if (withMiner != null) {
      return withMiner(this);
    }
    return orElse();
  }
}

abstract class SlotWithMiner implements SlotState {
  const factory SlotWithMiner(
      {@HiveField(1) required InstanceId minerId,
      @HiveField(2) required int index}) = _$SlotWithMiner;

  @HiveField(1)
  InstanceId get minerId;
  @override
  @HiveField(2)
  int get index;
  @override
  @JsonKey(ignore: true)
  $SlotWithMinerCopyWith<SlotWithMiner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockedSlotCopyWith<$Res> implements $SlotStateCopyWith<$Res> {
  factory $LockedSlotCopyWith(
          LockedSlot value, $Res Function(LockedSlot) then) =
      _$LockedSlotCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(2) int index});
}

/// @nodoc
class _$LockedSlotCopyWithImpl<$Res> extends _$SlotStateCopyWithImpl<$Res>
    implements $LockedSlotCopyWith<$Res> {
  _$LockedSlotCopyWithImpl(LockedSlot _value, $Res Function(LockedSlot) _then)
      : super(_value, (v) => _then(v as LockedSlot));

  @override
  LockedSlot get _value => super._value as LockedSlot;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(LockedSlot(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 44, adapterName: 'SlotStateLockedAdapter')
class _$LockedSlot implements LockedSlot {
  const _$LockedSlot({@HiveField(2) required this.index});

  @override
  @HiveField(2)
  final int index;

  @override
  String toString() {
    return 'SlotState.locked(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LockedSlot &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $LockedSlotCopyWith<LockedSlot> get copyWith =>
      _$LockedSlotCopyWithImpl<LockedSlot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(1) InstanceId minerId, @HiveField(2) int index)
        withMiner,
    required TResult Function(@HiveField(2) int index) locked,
    required TResult Function(@HiveField(2) int index) empty,
  }) {
    return locked(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(1) InstanceId minerId, @HiveField(2) int index)?
        withMiner,
    TResult Function(@HiveField(2) int index)? locked,
    TResult Function(@HiveField(2) int index)? empty,
  }) {
    return locked?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(1) InstanceId minerId, @HiveField(2) int index)?
        withMiner,
    TResult Function(@HiveField(2) int index)? locked,
    TResult Function(@HiveField(2) int index)? empty,
    required TResult orElse(),
  }) {
    if (locked != null) {
      return locked(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SlotWithMiner value) withMiner,
    required TResult Function(LockedSlot value) locked,
    required TResult Function(EmptySlot value) empty,
  }) {
    return locked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SlotWithMiner value)? withMiner,
    TResult Function(LockedSlot value)? locked,
    TResult Function(EmptySlot value)? empty,
  }) {
    return locked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SlotWithMiner value)? withMiner,
    TResult Function(LockedSlot value)? locked,
    TResult Function(EmptySlot value)? empty,
    required TResult orElse(),
  }) {
    if (locked != null) {
      return locked(this);
    }
    return orElse();
  }
}

abstract class LockedSlot implements SlotState {
  const factory LockedSlot({@HiveField(2) required int index}) = _$LockedSlot;

  @override
  @HiveField(2)
  int get index;
  @override
  @JsonKey(ignore: true)
  $LockedSlotCopyWith<LockedSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptySlotCopyWith<$Res> implements $SlotStateCopyWith<$Res> {
  factory $EmptySlotCopyWith(EmptySlot value, $Res Function(EmptySlot) then) =
      _$EmptySlotCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(2) int index});
}

/// @nodoc
class _$EmptySlotCopyWithImpl<$Res> extends _$SlotStateCopyWithImpl<$Res>
    implements $EmptySlotCopyWith<$Res> {
  _$EmptySlotCopyWithImpl(EmptySlot _value, $Res Function(EmptySlot) _then)
      : super(_value, (v) => _then(v as EmptySlot));

  @override
  EmptySlot get _value => super._value as EmptySlot;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(EmptySlot(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 45, adapterName: 'SlotStateEmptyAdapter')
class _$EmptySlot implements EmptySlot {
  const _$EmptySlot({@HiveField(2) required this.index});

  @override
  @HiveField(2)
  final int index;

  @override
  String toString() {
    return 'SlotState.empty(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmptySlot &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  $EmptySlotCopyWith<EmptySlot> get copyWith =>
      _$EmptySlotCopyWithImpl<EmptySlot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(1) InstanceId minerId, @HiveField(2) int index)
        withMiner,
    required TResult Function(@HiveField(2) int index) locked,
    required TResult Function(@HiveField(2) int index) empty,
  }) {
    return empty(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(@HiveField(1) InstanceId minerId, @HiveField(2) int index)?
        withMiner,
    TResult Function(@HiveField(2) int index)? locked,
    TResult Function(@HiveField(2) int index)? empty,
  }) {
    return empty?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@HiveField(1) InstanceId minerId, @HiveField(2) int index)?
        withMiner,
    TResult Function(@HiveField(2) int index)? locked,
    TResult Function(@HiveField(2) int index)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SlotWithMiner value) withMiner,
    required TResult Function(LockedSlot value) locked,
    required TResult Function(EmptySlot value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SlotWithMiner value)? withMiner,
    TResult Function(LockedSlot value)? locked,
    TResult Function(EmptySlot value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SlotWithMiner value)? withMiner,
    TResult Function(LockedSlot value)? locked,
    TResult Function(EmptySlot value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptySlot implements SlotState {
  const factory EmptySlot({@HiveField(2) required int index}) = _$EmptySlot;

  @override
  @HiveField(2)
  int get index;
  @override
  @JsonKey(ignore: true)
  $EmptySlotCopyWith<EmptySlot> get copyWith =>
      throw _privateConstructorUsedError;
}
