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

GarageState _$GarageStateFromJson(Map<String, dynamic> json) {
  return _GarageState.fromJson(json);
}

/// @nodoc
mixin _$GarageState {
  BuiltMap<int, SlotState> get slots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GarageStateCopyWith<GarageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GarageStateCopyWith<$Res> {
  factory $GarageStateCopyWith(
          GarageState value, $Res Function(GarageState) then) =
      _$GarageStateCopyWithImpl<$Res, GarageState>;
  @useResult
  $Res call({BuiltMap<int, SlotState> slots});
}

/// @nodoc
class _$GarageStateCopyWithImpl<$Res, $Val extends GarageState>
    implements $GarageStateCopyWith<$Res> {
  _$GarageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slots = null,
  }) {
    return _then(_value.copyWith(
      slots: null == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as BuiltMap<int, SlotState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GarageStateCopyWith<$Res>
    implements $GarageStateCopyWith<$Res> {
  factory _$$_GarageStateCopyWith(
          _$_GarageState value, $Res Function(_$_GarageState) then) =
      __$$_GarageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuiltMap<int, SlotState> slots});
}

/// @nodoc
class __$$_GarageStateCopyWithImpl<$Res>
    extends _$GarageStateCopyWithImpl<$Res, _$_GarageState>
    implements _$$_GarageStateCopyWith<$Res> {
  __$$_GarageStateCopyWithImpl(
      _$_GarageState _value, $Res Function(_$_GarageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slots = null,
  }) {
    return _then(_$_GarageState(
      null == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as BuiltMap<int, SlotState>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GarageState extends _GarageState {
  const _$_GarageState(this.slots) : super._();

  factory _$_GarageState.fromJson(Map<String, dynamic> json) =>
      _$$_GarageStateFromJson(json);

  @override
  final BuiltMap<int, SlotState> slots;

  @override
  String toString() {
    return 'GarageState(slots: $slots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GarageState &&
            (identical(other.slots, slots) || other.slots == slots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slots);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GarageStateCopyWith<_$_GarageState> get copyWith =>
      __$$_GarageStateCopyWithImpl<_$_GarageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GarageStateToJson(
      this,
    );
  }
}

abstract class _GarageState extends GarageState {
  const factory _GarageState(final BuiltMap<int, SlotState> slots) =
      _$_GarageState;
  const _GarageState._() : super._();

  factory _GarageState.fromJson(Map<String, dynamic> json) =
      _$_GarageState.fromJson;

  @override
  BuiltMap<int, SlotState> get slots;
  @override
  @JsonKey(ignore: true)
  _$$_GarageStateCopyWith<_$_GarageState> get copyWith =>
      throw _privateConstructorUsedError;
}

SlotState _$SlotStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'withMiner':
      return SlotWithMiner.fromJson(json);
    case 'locked':
      return LockedSlot.fromJson(json);
    case 'empty':
      return EmptySlot.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SlotState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SlotState {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemInstanceId minerId, int index) withMiner,
    required TResult Function(int index) locked,
    required TResult Function(int index) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemInstanceId minerId, int index)? withMiner,
    TResult? Function(int index)? locked,
    TResult? Function(int index)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemInstanceId minerId, int index)? withMiner,
    TResult Function(int index)? locked,
    TResult Function(int index)? empty,
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
    TResult? Function(SlotWithMiner value)? withMiner,
    TResult? Function(LockedSlot value)? locked,
    TResult? Function(EmptySlot value)? empty,
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
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlotStateCopyWith<SlotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotStateCopyWith<$Res> {
  factory $SlotStateCopyWith(SlotState value, $Res Function(SlotState) then) =
      _$SlotStateCopyWithImpl<$Res, SlotState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$SlotStateCopyWithImpl<$Res, $Val extends SlotState>
    implements $SlotStateCopyWith<$Res> {
  _$SlotStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlotWithMinerCopyWith<$Res>
    implements $SlotStateCopyWith<$Res> {
  factory _$$SlotWithMinerCopyWith(
          _$SlotWithMiner value, $Res Function(_$SlotWithMiner) then) =
      __$$SlotWithMinerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemInstanceId minerId, int index});

  $ItemInstanceIdCopyWith<$Res> get minerId;
}

/// @nodoc
class __$$SlotWithMinerCopyWithImpl<$Res>
    extends _$SlotStateCopyWithImpl<$Res, _$SlotWithMiner>
    implements _$$SlotWithMinerCopyWith<$Res> {
  __$$SlotWithMinerCopyWithImpl(
      _$SlotWithMiner _value, $Res Function(_$SlotWithMiner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minerId = null,
    Object? index = null,
  }) {
    return _then(_$SlotWithMiner(
      minerId: null == minerId
          ? _value.minerId
          : minerId // ignore: cast_nullable_to_non_nullable
              as ItemInstanceId,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemInstanceIdCopyWith<$Res> get minerId {
    return $ItemInstanceIdCopyWith<$Res>(_value.minerId, (value) {
      return _then(_value.copyWith(minerId: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SlotWithMiner implements SlotWithMiner {
  const _$SlotWithMiner(
      {required this.minerId, required this.index, final String? $type})
      : $type = $type ?? 'withMiner';

  factory _$SlotWithMiner.fromJson(Map<String, dynamic> json) =>
      _$$SlotWithMinerFromJson(json);

  @override
  final ItemInstanceId minerId;
  @override
  final int index;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SlotState.withMiner(minerId: $minerId, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotWithMiner &&
            (identical(other.minerId, minerId) || other.minerId == minerId) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minerId, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotWithMinerCopyWith<_$SlotWithMiner> get copyWith =>
      __$$SlotWithMinerCopyWithImpl<_$SlotWithMiner>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemInstanceId minerId, int index) withMiner,
    required TResult Function(int index) locked,
    required TResult Function(int index) empty,
  }) {
    return withMiner(minerId, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemInstanceId minerId, int index)? withMiner,
    TResult? Function(int index)? locked,
    TResult? Function(int index)? empty,
  }) {
    return withMiner?.call(minerId, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemInstanceId minerId, int index)? withMiner,
    TResult Function(int index)? locked,
    TResult Function(int index)? empty,
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
    TResult? Function(SlotWithMiner value)? withMiner,
    TResult? Function(LockedSlot value)? locked,
    TResult? Function(EmptySlot value)? empty,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$SlotWithMinerToJson(
      this,
    );
  }
}

abstract class SlotWithMiner implements SlotState {
  const factory SlotWithMiner(
      {required final ItemInstanceId minerId,
      required final int index}) = _$SlotWithMiner;

  factory SlotWithMiner.fromJson(Map<String, dynamic> json) =
      _$SlotWithMiner.fromJson;

  ItemInstanceId get minerId;
  @override
  int get index;
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
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$LockedSlotCopyWithImpl<$Res>
    extends _$SlotStateCopyWithImpl<$Res, _$LockedSlot>
    implements _$$LockedSlotCopyWith<$Res> {
  __$$LockedSlotCopyWithImpl(
      _$LockedSlot _value, $Res Function(_$LockedSlot) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$LockedSlot(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LockedSlot implements LockedSlot {
  const _$LockedSlot({required this.index, final String? $type})
      : $type = $type ?? 'locked';

  factory _$LockedSlot.fromJson(Map<String, dynamic> json) =>
      _$$LockedSlotFromJson(json);

  @override
  final int index;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SlotState.locked(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LockedSlot &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LockedSlotCopyWith<_$LockedSlot> get copyWith =>
      __$$LockedSlotCopyWithImpl<_$LockedSlot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemInstanceId minerId, int index) withMiner,
    required TResult Function(int index) locked,
    required TResult Function(int index) empty,
  }) {
    return locked(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemInstanceId minerId, int index)? withMiner,
    TResult? Function(int index)? locked,
    TResult? Function(int index)? empty,
  }) {
    return locked?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemInstanceId minerId, int index)? withMiner,
    TResult Function(int index)? locked,
    TResult Function(int index)? empty,
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
    TResult? Function(SlotWithMiner value)? withMiner,
    TResult? Function(LockedSlot value)? locked,
    TResult? Function(EmptySlot value)? empty,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$LockedSlotToJson(
      this,
    );
  }
}

abstract class LockedSlot implements SlotState {
  const factory LockedSlot({required final int index}) = _$LockedSlot;

  factory LockedSlot.fromJson(Map<String, dynamic> json) =
      _$LockedSlot.fromJson;

  @override
  int get index;
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
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$EmptySlotCopyWithImpl<$Res>
    extends _$SlotStateCopyWithImpl<$Res, _$EmptySlot>
    implements _$$EmptySlotCopyWith<$Res> {
  __$$EmptySlotCopyWithImpl(
      _$EmptySlot _value, $Res Function(_$EmptySlot) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$EmptySlot(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmptySlot implements EmptySlot {
  const _$EmptySlot({required this.index, final String? $type})
      : $type = $type ?? 'empty';

  factory _$EmptySlot.fromJson(Map<String, dynamic> json) =>
      _$$EmptySlotFromJson(json);

  @override
  final int index;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SlotState.empty(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptySlot &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptySlotCopyWith<_$EmptySlot> get copyWith =>
      __$$EmptySlotCopyWithImpl<_$EmptySlot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemInstanceId minerId, int index) withMiner,
    required TResult Function(int index) locked,
    required TResult Function(int index) empty,
  }) {
    return empty(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemInstanceId minerId, int index)? withMiner,
    TResult? Function(int index)? locked,
    TResult? Function(int index)? empty,
  }) {
    return empty?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemInstanceId minerId, int index)? withMiner,
    TResult Function(int index)? locked,
    TResult Function(int index)? empty,
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
    TResult? Function(SlotWithMiner value)? withMiner,
    TResult? Function(LockedSlot value)? locked,
    TResult? Function(EmptySlot value)? empty,
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

  @override
  Map<String, dynamic> toJson() {
    return _$$EmptySlotToJson(
      this,
    );
  }
}

abstract class EmptySlot implements SlotState {
  const factory EmptySlot({required final int index}) = _$EmptySlot;

  factory EmptySlot.fromJson(Map<String, dynamic> json) = _$EmptySlot.fromJson;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$EmptySlotCopyWith<_$EmptySlot> get copyWith =>
      throw _privateConstructorUsedError;
}
