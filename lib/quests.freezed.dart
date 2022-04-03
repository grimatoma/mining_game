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

Requirement _$RequirementFromJson(Map<String, dynamic> json) {
  return _Requirement.fromJson(json);
}

/// @nodoc
class _$RequirementTearOff {
  const _$RequirementTearOff();

  _Requirement call(
      {required BuiltSet<Feature> features,
      required ItemRequirement cost,
      required ItemRequirement itemsOwned}) {
    return _Requirement(
      features: features,
      cost: cost,
      itemsOwned: itemsOwned,
    );
  }

  Requirement fromJson(Map<String, Object?> json) {
    return Requirement.fromJson(json);
  }
}

/// @nodoc
const $Requirement = _$RequirementTearOff();

/// @nodoc
mixin _$Requirement {
  BuiltSet<Feature> get features => throw _privateConstructorUsedError;

  ItemRequirement get cost => throw _privateConstructorUsedError;

  ItemRequirement get itemsOwned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RequirementCopyWith<Requirement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequirementCopyWith<$Res> {
  factory $RequirementCopyWith(
          Requirement value, $Res Function(Requirement) then) =
      _$RequirementCopyWithImpl<$Res>;

  $Res call(
      {BuiltSet<Feature> features,
      ItemRequirement cost,
      ItemRequirement itemsOwned});
}

/// @nodoc
class _$RequirementCopyWithImpl<$Res> implements $RequirementCopyWith<$Res> {
  _$RequirementCopyWithImpl(this._value, this._then);

  final Requirement _value;

  // ignore: unused_field
  final $Res Function(Requirement) _then;

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
              as ItemRequirement,
      itemsOwned: itemsOwned == freezed
          ? _value.itemsOwned
          : itemsOwned // ignore: cast_nullable_to_non_nullable
              as ItemRequirement,
    ));
  }
}

/// @nodoc
abstract class _$RequirementCopyWith<$Res>
    implements $RequirementCopyWith<$Res> {
  factory _$RequirementCopyWith(
          _Requirement value, $Res Function(_Requirement) then) =
      __$RequirementCopyWithImpl<$Res>;

  @override
  $Res call(
      {BuiltSet<Feature> features,
      ItemRequirement cost,
      ItemRequirement itemsOwned});
}

/// @nodoc
class __$RequirementCopyWithImpl<$Res> extends _$RequirementCopyWithImpl<$Res>
    implements _$RequirementCopyWith<$Res> {
  __$RequirementCopyWithImpl(
      _Requirement _value, $Res Function(_Requirement) _then)
      : super(_value, (v) => _then(v as _Requirement));

  @override
  _Requirement get _value => super._value as _Requirement;

  @override
  $Res call({
    Object? features = freezed,
    Object? cost = freezed,
    Object? itemsOwned = freezed,
  }) {
    return _then(_Requirement(
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as BuiltSet<Feature>,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as ItemRequirement,
      itemsOwned: itemsOwned == freezed
          ? _value.itemsOwned
          : itemsOwned // ignore: cast_nullable_to_non_nullable
              as ItemRequirement,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Requirement implements _Requirement {
  const _$_Requirement(
      {required this.features, required this.cost, required this.itemsOwned});

  factory _$_Requirement.fromJson(Map<String, dynamic> json) =>
      _$$_RequirementFromJson(json);

  @override
  final BuiltSet<Feature> features;
  @override
  final ItemRequirement cost;
  @override
  final ItemRequirement itemsOwned;

  @override
  String toString() {
    return 'Requirement(features: $features, cost: $cost, itemsOwned: $itemsOwned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Requirement &&
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
  _$RequirementCopyWith<_Requirement> get copyWith =>
      __$RequirementCopyWithImpl<_Requirement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequirementToJson(this);
  }
}

abstract class _Requirement implements Requirement {
  const factory _Requirement(
      {required BuiltSet<Feature> features,
      required ItemRequirement cost,
      required ItemRequirement itemsOwned}) = _$_Requirement;

  factory _Requirement.fromJson(Map<String, dynamic> json) =
      _$_Requirement.fromJson;

  @override
  BuiltSet<Feature> get features;

  @override
  ItemRequirement get cost;

  @override
  ItemRequirement get itemsOwned;

  @override
  @JsonKey(ignore: true)
  _$RequirementCopyWith<_Requirement> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestReward _$QuestRewardFromJson(Map<String, dynamic> json) {
  return _QuestReward.fromJson(json);
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

  QuestReward fromJson(Map<String, Object?> json) {
    return QuestReward.fromJson(json);
  }
}

/// @nodoc
const $QuestReward = _$QuestRewardTearOff();

/// @nodoc
mixin _$QuestReward {
  BuiltSet<Feature>? get features => throw _privateConstructorUsedError;

  ItemContainer? get reward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
@JsonSerializable()
class _$_QuestReward implements _QuestReward {
  const _$_QuestReward({this.features, this.reward});

  factory _$_QuestReward.fromJson(Map<String, dynamic> json) =>
      _$$_QuestRewardFromJson(json);

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

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestRewardToJson(this);
  }
}

abstract class _QuestReward implements QuestReward {
  const factory _QuestReward(
      {BuiltSet<Feature>? features, ItemContainer? reward}) = _$_QuestReward;

  factory _QuestReward.fromJson(Map<String, dynamic> json) =
      _$_QuestReward.fromJson;

  @override
  BuiltSet<Feature>? get features;

  @override
  ItemContainer? get reward;

  @override
  @JsonKey(ignore: true)
  _$QuestRewardCopyWith<_QuestReward> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestDefinition _$QuestDefinitionFromJson(Map<String, dynamic> json) {
  return _QuestDefinition.fromJson(json);
}

/// @nodoc
class _$QuestDefinitionTearOff {
  const _$QuestDefinitionTearOff();

  _QuestDefinition call(
      {required int id,
      required String name,
      required String description,
      required Requirement enabledRequirement,
      required Requirement completeRequirement,
      required QuestReward reward}) {
    return _QuestDefinition(
      id: id,
      name: name,
      description: description,
      enabledRequirement: enabledRequirement,
      completeRequirement: completeRequirement,
      reward: reward,
    );
  }

  QuestDefinition fromJson(Map<String, Object?> json) {
    return QuestDefinition.fromJson(json);
  }
}

/// @nodoc
const $QuestDefinition = _$QuestDefinitionTearOff();

/// @nodoc
mixin _$QuestDefinition {
  int get id => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  String get description =>
      throw _privateConstructorUsedError; //TODO: This should be changed to look at the achievement metrics instead so it can always stay on.
  Requirement get enabledRequirement => throw _privateConstructorUsedError;

  Requirement get completeRequirement => throw _privateConstructorUsedError;

  QuestReward get reward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
      {int id,
      String name,
      String description,
      Requirement enabledRequirement,
      Requirement completeRequirement,
      QuestReward reward});

  $RequirementCopyWith<$Res> get enabledRequirement;

  $RequirementCopyWith<$Res> get completeRequirement;

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
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? enabledRequirement = freezed,
    Object? completeRequirement = freezed,
    Object? reward = freezed,
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
      enabledRequirement: enabledRequirement == freezed
          ? _value.enabledRequirement
          : enabledRequirement // ignore: cast_nullable_to_non_nullable
              as Requirement,
      completeRequirement: completeRequirement == freezed
          ? _value.completeRequirement
          : completeRequirement // ignore: cast_nullable_to_non_nullable
              as Requirement,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as QuestReward,
    ));
  }

  @override
  $RequirementCopyWith<$Res> get enabledRequirement {
    return $RequirementCopyWith<$Res>(_value.enabledRequirement, (value) {
      return _then(_value.copyWith(enabledRequirement: value));
    });
  }

  @override
  $RequirementCopyWith<$Res> get completeRequirement {
    return $RequirementCopyWith<$Res>(_value.completeRequirement, (value) {
      return _then(_value.copyWith(completeRequirement: value));
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
      {int id,
      String name,
      String description,
      Requirement enabledRequirement,
      Requirement completeRequirement,
      QuestReward reward});

  @override
  $RequirementCopyWith<$Res> get enabledRequirement;

  @override
  $RequirementCopyWith<$Res> get completeRequirement;

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
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? enabledRequirement = freezed,
    Object? completeRequirement = freezed,
    Object? reward = freezed,
  }) {
    return _then(_QuestDefinition(
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
      enabledRequirement: enabledRequirement == freezed
          ? _value.enabledRequirement
          : enabledRequirement // ignore: cast_nullable_to_non_nullable
              as Requirement,
      completeRequirement: completeRequirement == freezed
          ? _value.completeRequirement
          : completeRequirement // ignore: cast_nullable_to_non_nullable
              as Requirement,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as QuestReward,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestDefinition implements _QuestDefinition {
  const _$_QuestDefinition(
      {required this.id,
      required this.name,
      required this.description,
      required this.enabledRequirement,
      required this.completeRequirement,
      required this.reward});

  factory _$_QuestDefinition.fromJson(Map<String, dynamic> json) =>
      _$$_QuestDefinitionFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override //TODO: This should be changed to look at the achievement metrics instead so it can always stay on.
  final Requirement enabledRequirement;
  @override
  final Requirement completeRequirement;
  @override
  final QuestReward reward;

  @override
  String toString() {
    return 'QuestDefinition(id: $id, name: $name, description: $description, enabledRequirement: $enabledRequirement, completeRequirement: $completeRequirement, reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.enabledRequirement, enabledRequirement) &&
            const DeepCollectionEquality()
                .equals(other.completeRequirement, completeRequirement) &&
            const DeepCollectionEquality().equals(other.reward, reward));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(enabledRequirement),
      const DeepCollectionEquality().hash(completeRequirement),
      const DeepCollectionEquality().hash(reward));

  @JsonKey(ignore: true)
  @override
  _$QuestDefinitionCopyWith<_QuestDefinition> get copyWith =>
      __$QuestDefinitionCopyWithImpl<_QuestDefinition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestDefinitionToJson(this);
  }
}

abstract class _QuestDefinition implements QuestDefinition {
  const factory _QuestDefinition(
      {required int id,
      required String name,
      required String description,
      required Requirement enabledRequirement,
      required Requirement completeRequirement,
      required QuestReward reward}) = _$_QuestDefinition;

  factory _QuestDefinition.fromJson(Map<String, dynamic> json) =
      _$_QuestDefinition.fromJson;

  @override
  int get id;

  @override
  String get name;

  @override
  String get description;

  @override //TODO: This should be changed to look at the achievement metrics instead so it can always stay on.
  Requirement get enabledRequirement;

  @override
  Requirement get completeRequirement;

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
      required BuiltSet<Feature> featuresProgress,
      required ItemRequirement itemsProgress}) {
    return _QuestStatus(
      definition: definition,
      requirementsMet: requirementsMet,
      featuresProgress: featuresProgress,
      itemsProgress: itemsProgress,
    );
  }
}

/// @nodoc
const $QuestStatus = _$QuestStatusTearOff();

/// @nodoc
mixin _$QuestStatus {
  QuestDefinition get definition => throw _privateConstructorUsedError;

  bool get requirementsMet => throw _privateConstructorUsedError;

  BuiltSet<Feature> get featuresProgress => throw _privateConstructorUsedError;

  ItemRequirement get itemsProgress => throw _privateConstructorUsedError;

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
      BuiltSet<Feature> featuresProgress,
      ItemRequirement itemsProgress});

  $QuestDefinitionCopyWith<$Res> get definition;
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
    Object? featuresProgress = freezed,
    Object? itemsProgress = freezed,
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
      featuresProgress: featuresProgress == freezed
          ? _value.featuresProgress
          : featuresProgress // ignore: cast_nullable_to_non_nullable
              as BuiltSet<Feature>,
      itemsProgress: itemsProgress == freezed
          ? _value.itemsProgress
          : itemsProgress // ignore: cast_nullable_to_non_nullable
              as ItemRequirement,
    ));
  }

  @override
  $QuestDefinitionCopyWith<$Res> get definition {
    return $QuestDefinitionCopyWith<$Res>(_value.definition, (value) {
      return _then(_value.copyWith(definition: value));
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
      BuiltSet<Feature> featuresProgress,
      ItemRequirement itemsProgress});

  @override
  $QuestDefinitionCopyWith<$Res> get definition;
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
    Object? featuresProgress = freezed,
    Object? itemsProgress = freezed,
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
      featuresProgress: featuresProgress == freezed
          ? _value.featuresProgress
          : featuresProgress // ignore: cast_nullable_to_non_nullable
              as BuiltSet<Feature>,
      itemsProgress: itemsProgress == freezed
          ? _value.itemsProgress
          : itemsProgress // ignore: cast_nullable_to_non_nullable
              as ItemRequirement,
    ));
  }
}

/// @nodoc

class _$_QuestStatus implements _QuestStatus {
  const _$_QuestStatus(
      {required this.definition,
      required this.requirementsMet,
      required this.featuresProgress,
      required this.itemsProgress});

  @override
  final QuestDefinition definition;
  @override
  final bool requirementsMet;
  @override
  final BuiltSet<Feature> featuresProgress;
  @override
  final ItemRequirement itemsProgress;

  @override
  String toString() {
    return 'QuestStatus(definition: $definition, requirementsMet: $requirementsMet, featuresProgress: $featuresProgress, itemsProgress: $itemsProgress)';
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
            const DeepCollectionEquality()
                .equals(other.featuresProgress, featuresProgress) &&
            const DeepCollectionEquality()
                .equals(other.itemsProgress, itemsProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(definition),
      const DeepCollectionEquality().hash(requirementsMet),
      const DeepCollectionEquality().hash(featuresProgress),
      const DeepCollectionEquality().hash(itemsProgress));

  @JsonKey(ignore: true)
  @override
  _$QuestStatusCopyWith<_QuestStatus> get copyWith =>
      __$QuestStatusCopyWithImpl<_QuestStatus>(this, _$identity);
}

abstract class _QuestStatus implements QuestStatus {
  const factory _QuestStatus(
      {required QuestDefinition definition,
      required bool requirementsMet,
      required BuiltSet<Feature> featuresProgress,
      required ItemRequirement itemsProgress}) = _$_QuestStatus;

  @override
  QuestDefinition get definition;

  @override
  bool get requirementsMet;

  @override
  BuiltSet<Feature> get featuresProgress;

  @override
  ItemRequirement get itemsProgress;

  @override
  @JsonKey(ignore: true)
  _$QuestStatusCopyWith<_QuestStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
