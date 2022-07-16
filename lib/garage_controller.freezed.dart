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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GarageState {
// @HiveField(1)
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
  $Res call({SyncedMap<int, SlotState, int, SlotState> slotsSyncedMap});
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
abstract class _$$_GarageStateCopyWith<$Res>
    implements $GarageStateCopyWith<$Res> {
  factory _$$_GarageStateCopyWith(
          _$_GarageState value, $Res Function(_$_GarageState) then) =
      __$$_GarageStateCopyWithImpl<$Res>;
  @override
  $Res call({SyncedMap<int, SlotState, int, SlotState> slotsSyncedMap});
}

/// @nodoc
class __$$_GarageStateCopyWithImpl<$Res> extends _$GarageStateCopyWithImpl<$Res>
    implements _$$_GarageStateCopyWith<$Res> {
  __$$_GarageStateCopyWithImpl(
      _$_GarageState _value, $Res Function(_$_GarageState) _then)
      : super(_value, (v) => _then(v as _$_GarageState));

  @override
  _$_GarageState get _value => super._value as _$_GarageState;

  @override
  $Res call({
    Object? slotsSyncedMap = freezed,
  }) {
    return _then(_$_GarageState(
      slotsSyncedMap == freezed
          ? _value.slotsSyncedMap
          : slotsSyncedMap // ignore: cast_nullable_to_non_nullable
              as SyncedMap<int, SlotState, int, SlotState>,
    ));
  }
}

/// @nodoc

class _$_GarageState extends _GarageState {
  const _$_GarageState(this.slotsSyncedMap) : super._();

// @HiveField(1)
  @override
  final SyncedMap<int, SlotState, int, SlotState> slotsSyncedMap;

  @override
  String toString() {
    return 'GarageState(slotsSyncedMap: $slotsSyncedMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GarageState &&
            const DeepCollectionEquality()
                .equals(other.slotsSyncedMap, slotsSyncedMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(slotsSyncedMap));

  @JsonKey(ignore: true)
  @override
  _$$_GarageStateCopyWith<_$_GarageState> get copyWith =>
      __$$_GarageStateCopyWithImpl<_$_GarageState>(this, _$identity);
}

abstract class _GarageState extends GarageState {
  const factory _GarageState(
          final SyncedMap<int, SlotState, int, SlotState> slotsSyncedMap) =
      _$_GarageState;
  const _GarageState._() : super._();

  @override // @HiveField(1)
  SyncedMap<int, SlotState, int, SlotState> get slotsSyncedMap =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GarageStateCopyWith<_$_GarageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SlotState {
  @HiveField(2)
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(1) ItemInstanceId minerId, @HiveField(2) int index)
        withMiner,
    required TResult Function(@HiveField(2) int index) locked,
    required TResult Function(@HiveField(2) int index) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @HiveField(1) ItemInstanceId minerId, @HiveField(2) int index)?
        withMiner,
    TResult Function(@HiveField(2) int index)? locked,
    TResult Function(@HiveField(2) int index)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @HiveField(1) ItemInstanceId minerId, @HiveField(2) int index)?
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
abstract class _$$SlotWithMinerCopyWith<$Res>
    implements $SlotStateCopyWith<$Res> {
  factory _$$SlotWithMinerCopyWith(
          _$SlotWithMiner value, $Res Function(_$SlotWithMiner) then) =
      __$$SlotWithMinerCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(1) ItemInstanceId minerId, @HiveField(2) int index});
}

/// @nodoc
class __$$SlotWithMinerCopyWithImpl<$Res> extends _$SlotStateCopyWithImpl<$Res>
    implements _$$SlotWithMinerCopyWith<$Res> {
  __$$SlotWithMinerCopyWithImpl(
      _$SlotWithMiner _value, $Res Function(_$SlotWithMiner) _then)
      : super(_value, (v) => _then(v as _$SlotWithMiner));

  @override
  _$SlotWithMiner get _value => super._value as _$SlotWithMiner;

  @override
  $Res call({
    Object? minerId = freezed,
    Object? index = freezed,
  }) {
    return _then(_$SlotWithMiner(
      minerId: minerId == freezed
          ? _value.minerId
          : minerId // ignore: cast_nullable_to_non_nullable
              as ItemInstanceId,
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
  final ItemInstanceId minerId;
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
            other is _$SlotWithMiner &&
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
  _$$SlotWithMinerCopyWith<_$SlotWithMiner> get copyWith =>
      __$$SlotWithMinerCopyWithImpl<_$SlotWithMiner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(1) ItemInstanceId minerId, @HiveField(2) int index)
        withMiner,
    required TResult Function(@HiveField(2) int index) locked,
    required TResult Function(@HiveField(2) int index) empty,
  }) {
    return withMiner(minerId, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @HiveField(1) ItemInstanceId minerId, @HiveField(2) int index)?
        withMiner,
    TResult Function(@HiveField(2) int index)? locked,
    TResult Function(@HiveField(2) int index)? empty,
  }) {
    return withMiner?.call(minerId, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @HiveField(1) ItemInstanceId minerId, @HiveField(2) int index)?
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
      {@HiveField(1) required final ItemInstanceId minerId,
      @HiveField(2) required final int index}) = _$SlotWithMiner;

  @HiveField(1)
  ItemInstanceId get minerId => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  int get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SlotWithMinerCopyWith<_$SlotWithMiner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LockedSlotCopyWith<$Res> implements $SlotStateCopyWith<$Res> {
  factory _$$LockedSlotCopyWith(
          _$LockedSlot value, $Res Function(_$LockedSlot) then) =
      __$$LockedSlotCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(2) int index});
}

/// @nodoc
class __$$LockedSlotCopyWithImpl<$Res> extends _$SlotStateCopyWithImpl<$Res>
    implements _$$LockedSlotCopyWith<$Res> {
  __$$LockedSlotCopyWithImpl(
      _$LockedSlot _value, $Res Function(_$LockedSlot) _then)
      : super(_value, (v) => _then(v as _$LockedSlot));

  @override
  _$LockedSlot get _value => super._value as _$LockedSlot;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$LockedSlot(
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
            other is _$LockedSlot &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$LockedSlotCopyWith<_$LockedSlot> get copyWith =>
      __$$LockedSlotCopyWithImpl<_$LockedSlot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(1) ItemInstanceId minerId, @HiveField(2) int index)
        withMiner,
    required TResult Function(@HiveField(2) int index) locked,
    required TResult Function(@HiveField(2) int index) empty,
  }) {
    return locked(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @HiveField(1) ItemInstanceId minerId, @HiveField(2) int index)?
        withMiner,
    TResult Function(@HiveField(2) int index)? locked,
    TResult Function(@HiveField(2) int index)? empty,
  }) {
    return locked?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @HiveField(1) ItemInstanceId minerId, @HiveField(2) int index)?
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
  const factory LockedSlot({@HiveField(2) required final int index}) =
      _$LockedSlot;

  @override
  @HiveField(2)
  int get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$LockedSlotCopyWith<_$LockedSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptySlotCopyWith<$Res> implements $SlotStateCopyWith<$Res> {
  factory _$$EmptySlotCopyWith(
          _$EmptySlot value, $Res Function(_$EmptySlot) then) =
      __$$EmptySlotCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(2) int index});
}

/// @nodoc
class __$$EmptySlotCopyWithImpl<$Res> extends _$SlotStateCopyWithImpl<$Res>
    implements _$$EmptySlotCopyWith<$Res> {
  __$$EmptySlotCopyWithImpl(
      _$EmptySlot _value, $Res Function(_$EmptySlot) _then)
      : super(_value, (v) => _then(v as _$EmptySlot));

  @override
  _$EmptySlot get _value => super._value as _$EmptySlot;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$EmptySlot(
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
            other is _$EmptySlot &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$EmptySlotCopyWith<_$EmptySlot> get copyWith =>
      __$$EmptySlotCopyWithImpl<_$EmptySlot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @HiveField(1) ItemInstanceId minerId, @HiveField(2) int index)
        withMiner,
    required TResult Function(@HiveField(2) int index) locked,
    required TResult Function(@HiveField(2) int index) empty,
  }) {
    return empty(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @HiveField(1) ItemInstanceId minerId, @HiveField(2) int index)?
        withMiner,
    TResult Function(@HiveField(2) int index)? locked,
    TResult Function(@HiveField(2) int index)? empty,
  }) {
    return empty?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @HiveField(1) ItemInstanceId minerId, @HiveField(2) int index)?
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
  const factory EmptySlot({@HiveField(2) required final int index}) =
      _$EmptySlot;

  @override
  @HiveField(2)
  int get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$EmptySlotCopyWith<_$EmptySlot> get copyWith =>
      throw _privateConstructorUsedError;
}
