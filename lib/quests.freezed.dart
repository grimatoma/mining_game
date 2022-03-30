// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quests.dart';

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
      {required BuiltSet<Feature> features,
      required ItemContainer cost,
      required ItemContainer itemsOwned}) {
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
  BuiltSet<Feature> get features => throw _privateConstructorUsedError;
  ItemContainer get cost => throw _privateConstructorUsedError;
  ItemContainer get itemsOwned => throw _privateConstructorUsedError;

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
      {BuiltSet<Feature> features,
      ItemContainer cost,
      ItemContainer itemsOwned});
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
              as BuiltSet<Feature>,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      itemsOwned: itemsOwned == freezed
          ? _value.itemsOwned
          : itemsOwned // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
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
      {BuiltSet<Feature> features,
      ItemContainer cost,
      ItemContainer itemsOwned});
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
              as BuiltSet<Feature>,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      itemsOwned: itemsOwned == freezed
          ? _value.itemsOwned
          : itemsOwned // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
    ));
  }
}

/// @nodoc

class _$_UnlockRequirement implements _UnlockRequirement {
  const _$_UnlockRequirement(
      {required this.features, required this.cost, required this.itemsOwned});

  @override
  final BuiltSet<Feature> features;
  @override
  final ItemContainer cost;
  @override
  final ItemContainer itemsOwned;

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
      {required BuiltSet<Feature> features,
      required ItemContainer cost,
      required ItemContainer itemsOwned}) = _$_UnlockRequirement;

  @override
  BuiltSet<Feature> get features;
  @override
  ItemContainer get cost;
  @override
  ItemContainer get itemsOwned;
  @override
  @JsonKey(ignore: true)
  _$UnlockRequirementCopyWith<_UnlockRequirement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QuestRewardTearOff {
  const _$QuestRewardTearOff();

  _QuestReward call({BuiltSet<Feature>? features, ItemContainer? reward}) {
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
  BuiltSet<Feature>? get features => throw _privateConstructorUsedError;
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
  $Res call({BuiltSet<Feature>? features, ItemContainer? reward});
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
              as BuiltSet<Feature>?,
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
  $Res call({BuiltSet<Feature>? features, ItemContainer? reward});
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
              as BuiltSet<Feature>?,
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
  final BuiltSet<Feature>? features;
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
      {BuiltSet<Feature>? features, ItemContainer? reward}) = _$_QuestReward;

  @override
  BuiltSet<Feature>? get features;
  @override
  ItemContainer? get reward;
  @override
  @JsonKey(ignore: true)
  _$QuestRewardCopyWith<_QuestReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QuestDefinitionTearOff {
  const _$QuestDefinitionTearOff();

  _QuestDefinition call(
      {required String name,
      required String description,
      required UnlockRequirement unlockRequirement,
      required QuestReward reward}) {
    return _QuestDefinition(
      name: name,
      description: description,
      unlockRequirement: unlockRequirement,
      reward: reward,
    );
  }
}

/// @nodoc
const $QuestDefinition = _$QuestDefinitionTearOff();

/// @nodoc
mixin _$QuestDefinition {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  UnlockRequirement get unlockRequirement => throw _privateConstructorUsedError;
  QuestReward get reward => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestDefinitionCopyWith<QuestDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestDefinitionCopyWith<$Res> {
  factory $QuestDefinitionCopyWith(
          QuestDefinition value, $Res Function(QuestDefinition) then) =
      _$QuestDefinitionCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      UnlockRequirement unlockRequirement,
      QuestReward reward});

  $UnlockRequirementCopyWith<$Res> get unlockRequirement;
  $QuestRewardCopyWith<$Res> get reward;
}

/// @nodoc
class _$QuestDefinitionCopyWithImpl<$Res>
    implements $QuestDefinitionCopyWith<$Res> {
  _$QuestDefinitionCopyWithImpl(this._value, this._then);

  final QuestDefinition _value;
  // ignore: unused_field
  final $Res Function(QuestDefinition) _then;

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
abstract class _$QuestDefinitionCopyWith<$Res>
    implements $QuestDefinitionCopyWith<$Res> {
  factory _$QuestDefinitionCopyWith(
          _QuestDefinition value, $Res Function(_QuestDefinition) then) =
      __$QuestDefinitionCopyWithImpl<$Res>;
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
class __$QuestDefinitionCopyWithImpl<$Res>
    extends _$QuestDefinitionCopyWithImpl<$Res>
    implements _$QuestDefinitionCopyWith<$Res> {
  __$QuestDefinitionCopyWithImpl(
      _QuestDefinition _value, $Res Function(_QuestDefinition) _then)
      : super(_value, (v) => _then(v as _QuestDefinition));

  @override
  _QuestDefinition get _value => super._value as _QuestDefinition;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? unlockRequirement = freezed,
    Object? reward = freezed,
  }) {
    return _then(_QuestDefinition(
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

class _$_QuestDefinition implements _QuestDefinition {
  const _$_QuestDefinition(
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
    return 'QuestDefinition(name: $name, description: $description, unlockRequirement: $unlockRequirement, reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestDefinition &&
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
  _$QuestDefinitionCopyWith<_QuestDefinition> get copyWith =>
      __$QuestDefinitionCopyWithImpl<_QuestDefinition>(this, _$identity);
}

abstract class _QuestDefinition implements QuestDefinition {
  const factory _QuestDefinition(
      {required String name,
      required String description,
      required UnlockRequirement unlockRequirement,
      required QuestReward reward}) = _$_QuestDefinition;

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
  _$QuestDefinitionCopyWith<_QuestDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QuestStatusTearOff {
  const _$QuestStatusTearOff();

  _QuestStatus call(
      {required QuestDefinition definition,
      required bool requirementsMet,
      required UnlockRequirement progress}) {
    return _QuestStatus(
      definition: definition,
      requirementsMet: requirementsMet,
      progress: progress,
    );
  }
}

/// @nodoc
const $QuestStatus = _$QuestStatusTearOff();

/// @nodoc
mixin _$QuestStatus {
  QuestDefinition get definition => throw _privateConstructorUsedError;
  bool get requirementsMet => throw _privateConstructorUsedError;
  UnlockRequirement get progress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestStatusCopyWith<QuestStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestStatusCopyWith<$Res> {
  factory $QuestStatusCopyWith(
          QuestStatus value, $Res Function(QuestStatus) then) =
      _$QuestStatusCopyWithImpl<$Res>;
  $Res call(
      {QuestDefinition definition,
      bool requirementsMet,
      UnlockRequirement progress});

  $QuestDefinitionCopyWith<$Res> get definition;
  $UnlockRequirementCopyWith<$Res> get progress;
}

/// @nodoc
class _$QuestStatusCopyWithImpl<$Res> implements $QuestStatusCopyWith<$Res> {
  _$QuestStatusCopyWithImpl(this._value, this._then);

  final QuestStatus _value;
  // ignore: unused_field
  final $Res Function(QuestStatus) _then;

  @override
  $Res call({
    Object? definition = freezed,
    Object? requirementsMet = freezed,
    Object? progress = freezed,
  }) {
    return _then(_value.copyWith(
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as QuestDefinition,
      requirementsMet: requirementsMet == freezed
          ? _value.requirementsMet
          : requirementsMet // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as UnlockRequirement,
    ));
  }

  @override
  $QuestDefinitionCopyWith<$Res> get definition {
    return $QuestDefinitionCopyWith<$Res>(_value.definition, (value) {
      return _then(_value.copyWith(definition: value));
    });
  }

  @override
  $UnlockRequirementCopyWith<$Res> get progress {
    return $UnlockRequirementCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value));
    });
  }
}

/// @nodoc
abstract class _$QuestStatusCopyWith<$Res>
    implements $QuestStatusCopyWith<$Res> {
  factory _$QuestStatusCopyWith(
          _QuestStatus value, $Res Function(_QuestStatus) then) =
      __$QuestStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {QuestDefinition definition,
      bool requirementsMet,
      UnlockRequirement progress});

  @override
  $QuestDefinitionCopyWith<$Res> get definition;
  @override
  $UnlockRequirementCopyWith<$Res> get progress;
}

/// @nodoc
class __$QuestStatusCopyWithImpl<$Res> extends _$QuestStatusCopyWithImpl<$Res>
    implements _$QuestStatusCopyWith<$Res> {
  __$QuestStatusCopyWithImpl(
      _QuestStatus _value, $Res Function(_QuestStatus) _then)
      : super(_value, (v) => _then(v as _QuestStatus));

  @override
  _QuestStatus get _value => super._value as _QuestStatus;

  @override
  $Res call({
    Object? definition = freezed,
    Object? requirementsMet = freezed,
    Object? progress = freezed,
  }) {
    return _then(_QuestStatus(
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as QuestDefinition,
      requirementsMet: requirementsMet == freezed
          ? _value.requirementsMet
          : requirementsMet // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as UnlockRequirement,
    ));
  }
}

/// @nodoc

class _$_QuestStatus implements _QuestStatus {
  const _$_QuestStatus(
      {required this.definition,
      required this.requirementsMet,
      required this.progress});

  @override
  final QuestDefinition definition;
  @override
  final bool requirementsMet;
  @override
  final UnlockRequirement progress;

  @override
  String toString() {
    return 'QuestStatus(definition: $definition, requirementsMet: $requirementsMet, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestStatus &&
            const DeepCollectionEquality()
                .equals(other.definition, definition) &&
            const DeepCollectionEquality()
                .equals(other.requirementsMet, requirementsMet) &&
            const DeepCollectionEquality().equals(other.progress, progress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(definition),
      const DeepCollectionEquality().hash(requirementsMet),
      const DeepCollectionEquality().hash(progress));

  @JsonKey(ignore: true)
  @override
  _$QuestStatusCopyWith<_QuestStatus> get copyWith =>
      __$QuestStatusCopyWithImpl<_QuestStatus>(this, _$identity);
}

abstract class _QuestStatus implements QuestStatus {
  const factory _QuestStatus(
      {required QuestDefinition definition,
      required bool requirementsMet,
      required UnlockRequirement progress}) = _$_QuestStatus;

  @override
  QuestDefinition get definition;
  @override
  bool get requirementsMet;
  @override
  UnlockRequirement get progress;
  @override
  @JsonKey(ignore: true)
  _$QuestStatusCopyWith<_QuestStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
