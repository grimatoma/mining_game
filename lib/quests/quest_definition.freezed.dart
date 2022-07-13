// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quest_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Requirement _$RequirementFromJson(Map<String, dynamic> json) {
  return _Requirement.fromJson(json);
}

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
abstract class _$$_RequirementCopyWith<$Res>
    implements $RequirementCopyWith<$Res> {
  factory _$$_RequirementCopyWith(
          _$_Requirement value, $Res Function(_$_Requirement) then) =
      __$$_RequirementCopyWithImpl<$Res>;

  @override
  $Res call(
      {BuiltSet<Feature> features,
      ItemRequirement cost,
      ItemRequirement itemsOwned});
}

/// @nodoc
class __$$_RequirementCopyWithImpl<$Res> extends _$RequirementCopyWithImpl<$Res>
    implements _$$_RequirementCopyWith<$Res> {
  __$$_RequirementCopyWithImpl(
      _$_Requirement _value, $Res Function(_$_Requirement) _then)
      : super(_value, (v) => _then(v as _$_Requirement));

  @override
  _$_Requirement get _value => super._value as _$_Requirement;

  @override
  $Res call({
    Object? features = freezed,
    Object? cost = freezed,
    Object? itemsOwned = freezed,
  }) {
    return _then(_$_Requirement(
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
            other is _$_Requirement &&
            const DeepCollectionEquality().equals(other.features, features) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality()
                .equals(other.itemsOwned, itemsOwned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(features),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(itemsOwned));

  @JsonKey(ignore: true)
  @override
  _$$_RequirementCopyWith<_$_Requirement> get copyWith =>
      __$$_RequirementCopyWithImpl<_$_Requirement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequirementToJson(this);
  }
}

abstract class _Requirement implements Requirement {
  const factory _Requirement(
      {required final BuiltSet<Feature> features,
      required final ItemRequirement cost,
      required final ItemRequirement itemsOwned}) = _$_Requirement;

  factory _Requirement.fromJson(Map<String, dynamic> json) =
      _$_Requirement.fromJson;

  @override
  BuiltSet<Feature> get features => throw _privateConstructorUsedError;

  @override
  ItemRequirement get cost => throw _privateConstructorUsedError;

  @override
  ItemRequirement get itemsOwned => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_RequirementCopyWith<_$_Requirement> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestReward _$QuestRewardFromJson(Map<String, dynamic> json) {
  return _QuestReward.fromJson(json);
}

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
abstract class _$$_QuestRewardCopyWith<$Res>
    implements $QuestRewardCopyWith<$Res> {
  factory _$$_QuestRewardCopyWith(
          _$_QuestReward value, $Res Function(_$_QuestReward) then) =
      __$$_QuestRewardCopyWithImpl<$Res>;

  @override
  $Res call({BuiltSet<Feature>? features, ItemContainer? reward});
}

/// @nodoc
class __$$_QuestRewardCopyWithImpl<$Res> extends _$QuestRewardCopyWithImpl<$Res>
    implements _$$_QuestRewardCopyWith<$Res> {
  __$$_QuestRewardCopyWithImpl(
      _$_QuestReward _value, $Res Function(_$_QuestReward) _then)
      : super(_value, (v) => _then(v as _$_QuestReward));

  @override
  _$_QuestReward get _value => super._value as _$_QuestReward;

  @override
  $Res call({
    Object? features = freezed,
    Object? reward = freezed,
  }) {
    return _then(_$_QuestReward(
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
            other is _$_QuestReward &&
            const DeepCollectionEquality().equals(other.features, features) &&
            const DeepCollectionEquality().equals(other.reward, reward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(features),
      const DeepCollectionEquality().hash(reward));

  @JsonKey(ignore: true)
  @override
  _$$_QuestRewardCopyWith<_$_QuestReward> get copyWith =>
      __$$_QuestRewardCopyWithImpl<_$_QuestReward>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestRewardToJson(this);
  }
}

abstract class _QuestReward implements QuestReward {
  const factory _QuestReward(
      {final BuiltSet<Feature>? features,
      final ItemContainer? reward}) = _$_QuestReward;

  factory _QuestReward.fromJson(Map<String, dynamic> json) =
      _$_QuestReward.fromJson;

  @override
  BuiltSet<Feature>? get features => throw _privateConstructorUsedError;

  @override
  ItemContainer? get reward => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_QuestRewardCopyWith<_$_QuestReward> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestDefinition _$QuestDefinitionFromJson(Map<String, dynamic> json) {
  return _QuestDefinition.fromJson(json);
}

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
abstract class _$$_QuestDefinitionCopyWith<$Res>
    implements $QuestDefinitionCopyWith<$Res> {
  factory _$$_QuestDefinitionCopyWith(
          _$_QuestDefinition value, $Res Function(_$_QuestDefinition) then) =
      __$$_QuestDefinitionCopyWithImpl<$Res>;

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
class __$$_QuestDefinitionCopyWithImpl<$Res>
    extends _$QuestDefinitionCopyWithImpl<$Res>
    implements _$$_QuestDefinitionCopyWith<$Res> {
  __$$_QuestDefinitionCopyWithImpl(
      _$_QuestDefinition _value, $Res Function(_$_QuestDefinition) _then)
      : super(_value, (v) => _then(v as _$_QuestDefinition));

  @override
  _$_QuestDefinition get _value => super._value as _$_QuestDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? enabledRequirement = freezed,
    Object? completeRequirement = freezed,
    Object? reward = freezed,
  }) {
    return _then(_$_QuestDefinition(
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

//TODO: This should be changed to look at the achievement metrics instead so it can always stay on.
  @override
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
            other is _$_QuestDefinition &&
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

  @JsonKey(ignore: true)
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
  _$$_QuestDefinitionCopyWith<_$_QuestDefinition> get copyWith =>
      __$$_QuestDefinitionCopyWithImpl<_$_QuestDefinition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestDefinitionToJson(this);
  }
}

abstract class _QuestDefinition implements QuestDefinition {
  const factory _QuestDefinition(
      {required final int id,
      required final String name,
      required final String description,
      required final Requirement enabledRequirement,
      required final Requirement completeRequirement,
      required final QuestReward reward}) = _$_QuestDefinition;

  factory _QuestDefinition.fromJson(Map<String, dynamic> json) =
      _$_QuestDefinition.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;

  @override
  String get name => throw _privateConstructorUsedError;

  @override
  String get description => throw _privateConstructorUsedError;

  @override //TODO: This should be changed to look at the achievement metrics instead so it can always stay on.
  Requirement get enabledRequirement => throw _privateConstructorUsedError;

  @override
  Requirement get completeRequirement => throw _privateConstructorUsedError;

  @override
  QuestReward get reward => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_QuestDefinitionCopyWith<_$_QuestDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$_QuestStatusCopyWith<$Res>
    implements $QuestStatusCopyWith<$Res> {
  factory _$$_QuestStatusCopyWith(
          _$_QuestStatus value, $Res Function(_$_QuestStatus) then) =
      __$$_QuestStatusCopyWithImpl<$Res>;

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
class __$$_QuestStatusCopyWithImpl<$Res> extends _$QuestStatusCopyWithImpl<$Res>
    implements _$$_QuestStatusCopyWith<$Res> {
  __$$_QuestStatusCopyWithImpl(
      _$_QuestStatus _value, $Res Function(_$_QuestStatus) _then)
      : super(_value, (v) => _then(v as _$_QuestStatus));

  @override
  _$_QuestStatus get _value => super._value as _$_QuestStatus;

  @override
  $Res call({
    Object? definition = freezed,
    Object? requirementsMet = freezed,
    Object? featuresProgress = freezed,
    Object? itemsProgress = freezed,
  }) {
    return _then(_$_QuestStatus(
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
            other is _$_QuestStatus &&
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
  _$$_QuestStatusCopyWith<_$_QuestStatus> get copyWith =>
      __$$_QuestStatusCopyWithImpl<_$_QuestStatus>(this, _$identity);
}

abstract class _QuestStatus implements QuestStatus {
  const factory _QuestStatus(
      {required final QuestDefinition definition,
      required final bool requirementsMet,
      required final BuiltSet<Feature> featuresProgress,
      required final ItemRequirement itemsProgress}) = _$_QuestStatus;

  @override
  QuestDefinition get definition => throw _privateConstructorUsedError;

  @override
  bool get requirementsMet => throw _privateConstructorUsedError;

  @override
  BuiltSet<Feature> get featuresProgress => throw _privateConstructorUsedError;

  @override
  ItemRequirement get itemsProgress => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_QuestStatusCopyWith<_$_QuestStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
