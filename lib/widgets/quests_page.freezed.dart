// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quests_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UnlockRequirementTearOff {
  const _$UnlockRequirementTearOff();

  _UnlockRequirement call(
      {BuiltList<Feature>? features,
      ItemContainer? cost,
      ItemContainer? itemsOwned}) {
    return _UnlockRequirement(
      features: features,
      cost: cost,
      itemsOwned: itemsOwned,
    );
  }
}

/// @nodoc
const $UnlockRequirement = _$UnlockRequirementTearOff();

/// @nodoc
mixin _$UnlockRequirement {
  BuiltList<Feature>? get features => throw _privateConstructorUsedError;
  ItemContainer? get cost => throw _privateConstructorUsedError;
  ItemContainer? get itemsOwned => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnlockRequirementCopyWith<UnlockRequirement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnlockRequirementCopyWith<$Res> {
  factory $UnlockRequirementCopyWith(
          UnlockRequirement value, $Res Function(UnlockRequirement) then) =
      _$UnlockRequirementCopyWithImpl<$Res>;
  $Res call(
      {BuiltList<Feature>? features,
      ItemContainer? cost,
      ItemContainer? itemsOwned});
}

/// @nodoc
class _$UnlockRequirementCopyWithImpl<$Res>
    implements $UnlockRequirementCopyWith<$Res> {
  _$UnlockRequirementCopyWithImpl(this._value, this._then);

  final UnlockRequirement _value;
  // ignore: unused_field
  final $Res Function(UnlockRequirement) _then;

  @override
  $Res call({
    Object? features = freezed,
    Object? cost = freezed,
    Object? itemsOwned = freezed,
  }) {
    return _then(_value.copyWith(
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as BuiltList<Feature>?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemContainer?,
      itemsOwned: itemsOwned == freezed
          ? _value.itemsOwned
          : itemsOwned // ignore: cast_nullable_to_non_nullable
              as ItemContainer?,
    ));
  }
}

/// @nodoc
abstract class _$UnlockRequirementCopyWith<$Res>
    implements $UnlockRequirementCopyWith<$Res> {
  factory _$UnlockRequirementCopyWith(
          _UnlockRequirement value, $Res Function(_UnlockRequirement) then) =
      __$UnlockRequirementCopyWithImpl<$Res>;
  @override
  $Res call(
      {BuiltList<Feature>? features,
      ItemContainer? cost,
      ItemContainer? itemsOwned});
}

/// @nodoc
class __$UnlockRequirementCopyWithImpl<$Res>
    extends _$UnlockRequirementCopyWithImpl<$Res>
    implements _$UnlockRequirementCopyWith<$Res> {
  __$UnlockRequirementCopyWithImpl(
      _UnlockRequirement _value, $Res Function(_UnlockRequirement) _then)
      : super(_value, (v) => _then(v as _UnlockRequirement));

  @override
  _UnlockRequirement get _value => super._value as _UnlockRequirement;

  @override
  $Res call({
    Object? features = freezed,
    Object? cost = freezed,
    Object? itemsOwned = freezed,
  }) {
    return _then(_UnlockRequirement(
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as BuiltList<Feature>?,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemContainer?,
      itemsOwned: itemsOwned == freezed
          ? _value.itemsOwned
          : itemsOwned // ignore: cast_nullable_to_non_nullable
              as ItemContainer?,
    ));
  }
}

/// @nodoc

class _$_UnlockRequirement implements _UnlockRequirement {
  const _$_UnlockRequirement({this.features, this.cost, this.itemsOwned});

  @override
  final BuiltList<Feature>? features;
  @override
  final ItemContainer? cost;
  @override
  final ItemContainer? itemsOwned;

  @override
  String toString() {
    return 'UnlockRequirement(features: $features, cost: $cost, itemsOwned: $itemsOwned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnlockRequirement &&
            const DeepCollectionEquality().equals(other.features, features) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality()
                .equals(other.itemsOwned, itemsOwned));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(features),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(itemsOwned));

  @JsonKey(ignore: true)
  @override
  _$UnlockRequirementCopyWith<_UnlockRequirement> get copyWith =>
      __$UnlockRequirementCopyWithImpl<_UnlockRequirement>(this, _$identity);
}

abstract class _UnlockRequirement implements UnlockRequirement {
  const factory _UnlockRequirement(
      {BuiltList<Feature>? features,
      ItemContainer? cost,
      ItemContainer? itemsOwned}) = _$_UnlockRequirement;

  @override
  BuiltList<Feature>? get features;
  @override
  ItemContainer? get cost;
  @override
  ItemContainer? get itemsOwned;
  @override
  @JsonKey(ignore: true)
  _$UnlockRequirementCopyWith<_UnlockRequirement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QuestRewardTearOff {
  const _$QuestRewardTearOff();

  _QuestReward call({BuiltList<Feature>? features, ItemContainer? reward}) {
    return _QuestReward(
      features: features,
      reward: reward,
    );
  }
}

/// @nodoc
const $QuestReward = _$QuestRewardTearOff();

/// @nodoc
mixin _$QuestReward {
  BuiltList<Feature>? get features => throw _privateConstructorUsedError;
  ItemContainer? get reward => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestRewardCopyWith<QuestReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestRewardCopyWith<$Res> {
  factory $QuestRewardCopyWith(
          QuestReward value, $Res Function(QuestReward) then) =
      _$QuestRewardCopyWithImpl<$Res>;
  $Res call({BuiltList<Feature>? features, ItemContainer? reward});
}

/// @nodoc
class _$QuestRewardCopyWithImpl<$Res> implements $QuestRewardCopyWith<$Res> {
  _$QuestRewardCopyWithImpl(this._value, this._then);

  final QuestReward _value;
  // ignore: unused_field
  final $Res Function(QuestReward) _then;

  @override
  $Res call({
    Object? features = freezed,
    Object? reward = freezed,
  }) {
    return _then(_value.copyWith(
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as BuiltList<Feature>?,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as ItemContainer?,
    ));
  }
}

/// @nodoc
abstract class _$QuestRewardCopyWith<$Res>
    implements $QuestRewardCopyWith<$Res> {
  factory _$QuestRewardCopyWith(
          _QuestReward value, $Res Function(_QuestReward) then) =
      __$QuestRewardCopyWithImpl<$Res>;
  @override
  $Res call({BuiltList<Feature>? features, ItemContainer? reward});
}

/// @nodoc
class __$QuestRewardCopyWithImpl<$Res> extends _$QuestRewardCopyWithImpl<$Res>
    implements _$QuestRewardCopyWith<$Res> {
  __$QuestRewardCopyWithImpl(
      _QuestReward _value, $Res Function(_QuestReward) _then)
      : super(_value, (v) => _then(v as _QuestReward));

  @override
  _QuestReward get _value => super._value as _QuestReward;

  @override
  $Res call({
    Object? features = freezed,
    Object? reward = freezed,
  }) {
    return _then(_QuestReward(
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as BuiltList<Feature>?,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as ItemContainer?,
    ));
  }
}

/// @nodoc

class _$_QuestReward implements _QuestReward {
  const _$_QuestReward({this.features, this.reward});

  @override
  final BuiltList<Feature>? features;
  @override
  final ItemContainer? reward;

  @override
  String toString() {
    return 'QuestReward(features: $features, reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestReward &&
            const DeepCollectionEquality().equals(other.features, features) &&
            const DeepCollectionEquality().equals(other.reward, reward));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(features),
      const DeepCollectionEquality().hash(reward));

  @JsonKey(ignore: true)
  @override
  _$QuestRewardCopyWith<_QuestReward> get copyWith =>
      __$QuestRewardCopyWithImpl<_QuestReward>(this, _$identity);
}

abstract class _QuestReward implements QuestReward {
  const factory _QuestReward(
      {BuiltList<Feature>? features, ItemContainer? reward}) = _$_QuestReward;

  @override
  BuiltList<Feature>? get features;
  @override
  ItemContainer? get reward;
  @override
  @JsonKey(ignore: true)
  _$QuestRewardCopyWith<_QuestReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QuestTearOff {
  const _$QuestTearOff();

  _Quest call(
      {required String name,
      required String description,
      required UnlockRequirement unlockRequirement,
      required QuestReward reward}) {
    return _Quest(
      name: name,
      description: description,
      unlockRequirement: unlockRequirement,
      reward: reward,
    );
  }
}

/// @nodoc
const $Quest = _$QuestTearOff();

/// @nodoc
mixin _$Quest {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  UnlockRequirement get unlockRequirement => throw _privateConstructorUsedError;
  QuestReward get reward => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestCopyWith<Quest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestCopyWith<$Res> {
  factory $QuestCopyWith(Quest value, $Res Function(Quest) then) =
      _$QuestCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      UnlockRequirement unlockRequirement,
      QuestReward reward});

  $UnlockRequirementCopyWith<$Res> get unlockRequirement;
  $QuestRewardCopyWith<$Res> get reward;
}

/// @nodoc
class _$QuestCopyWithImpl<$Res> implements $QuestCopyWith<$Res> {
  _$QuestCopyWithImpl(this._value, this._then);

  final Quest _value;
  // ignore: unused_field
  final $Res Function(Quest) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? unlockRequirement = freezed,
    Object? reward = freezed,
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
      unlockRequirement: unlockRequirement == freezed
          ? _value.unlockRequirement
          : unlockRequirement // ignore: cast_nullable_to_non_nullable
              as UnlockRequirement,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as QuestReward,
    ));
  }

  @override
  $UnlockRequirementCopyWith<$Res> get unlockRequirement {
    return $UnlockRequirementCopyWith<$Res>(_value.unlockRequirement, (value) {
      return _then(_value.copyWith(unlockRequirement: value));
    });
  }

  @override
  $QuestRewardCopyWith<$Res> get reward {
    return $QuestRewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value));
    });
  }
}

/// @nodoc
abstract class _$QuestCopyWith<$Res> implements $QuestCopyWith<$Res> {
  factory _$QuestCopyWith(_Quest value, $Res Function(_Quest) then) =
      __$QuestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      UnlockRequirement unlockRequirement,
      QuestReward reward});

  @override
  $UnlockRequirementCopyWith<$Res> get unlockRequirement;
  @override
  $QuestRewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$QuestCopyWithImpl<$Res> extends _$QuestCopyWithImpl<$Res>
    implements _$QuestCopyWith<$Res> {
  __$QuestCopyWithImpl(_Quest _value, $Res Function(_Quest) _then)
      : super(_value, (v) => _then(v as _Quest));

  @override
  _Quest get _value => super._value as _Quest;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? unlockRequirement = freezed,
    Object? reward = freezed,
  }) {
    return _then(_Quest(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      unlockRequirement: unlockRequirement == freezed
          ? _value.unlockRequirement
          : unlockRequirement // ignore: cast_nullable_to_non_nullable
              as UnlockRequirement,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as QuestReward,
    ));
  }
}

/// @nodoc

class _$_Quest implements _Quest {
  const _$_Quest(
      {required this.name,
      required this.description,
      required this.unlockRequirement,
      required this.reward});

  @override
  final String name;
  @override
  final String description;
  @override
  final UnlockRequirement unlockRequirement;
  @override
  final QuestReward reward;

  @override
  String toString() {
    return 'Quest(name: $name, description: $description, unlockRequirement: $unlockRequirement, reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Quest &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.unlockRequirement, unlockRequirement) &&
            const DeepCollectionEquality().equals(other.reward, reward));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(unlockRequirement),
      const DeepCollectionEquality().hash(reward));

  @JsonKey(ignore: true)
  @override
  _$QuestCopyWith<_Quest> get copyWith =>
      __$QuestCopyWithImpl<_Quest>(this, _$identity);
}

abstract class _Quest implements Quest {
  const factory _Quest(
      {required String name,
      required String description,
      required UnlockRequirement unlockRequirement,
      required QuestReward reward}) = _$_Quest;

  @override
  String get name;
  @override
  String get description;
  @override
  UnlockRequirement get unlockRequirement;
  @override
  QuestReward get reward;
  @override
  @JsonKey(ignore: true)
  _$QuestCopyWith<_Quest> get copyWith => throw _privateConstructorUsedError;
}
