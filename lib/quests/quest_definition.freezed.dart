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

QuestReward _$QuestRewardFromJson(Map<String, dynamic> json) {
  return _QuestReward.fromJson(json);
}

/// @nodoc
mixin _$QuestReward {
  Set<Feature>? get features => throw _privateConstructorUsedError;
  ItemContainer? get items => throw _privateConstructorUsedError;

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
  $Res call({Set<Feature>? features, ItemContainer? items});

  $ItemContainerCopyWith<$Res>? get items;
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
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Set<Feature>?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ItemContainer?,
    ));
  }

  @override
  $ItemContainerCopyWith<$Res>? get items {
    if (_value.items == null) {
      return null;
    }

    return $ItemContainerCopyWith<$Res>(_value.items!, (value) {
      return _then(_value.copyWith(items: value));
    });
  }
}

/// @nodoc
abstract class _$$_QuestRewardCopyWith<$Res>
    implements $QuestRewardCopyWith<$Res> {
  factory _$$_QuestRewardCopyWith(
          _$_QuestReward value, $Res Function(_$_QuestReward) then) =
      __$$_QuestRewardCopyWithImpl<$Res>;
  @override
  $Res call({Set<Feature>? features, ItemContainer? items});

  @override
  $ItemContainerCopyWith<$Res>? get items;
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
    Object? items = freezed,
  }) {
    return _then(_$_QuestReward(
      features: features == freezed
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as Set<Feature>?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ItemContainer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestReward implements _QuestReward {
  const _$_QuestReward({final Set<Feature>? features, this.items})
      : _features = features;

  factory _$_QuestReward.fromJson(Map<String, dynamic> json) =>
      _$$_QuestRewardFromJson(json);

  final Set<Feature>? _features;
  @override
  Set<Feature>? get features {
    final value = _features;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  final ItemContainer? items;

  @override
  String toString() {
    return 'QuestReward(features: $features, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestReward &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_features),
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$$_QuestRewardCopyWith<_$_QuestReward> get copyWith =>
      __$$_QuestRewardCopyWithImpl<_$_QuestReward>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestRewardToJson(
      this,
    );
  }
}

abstract class _QuestReward implements QuestReward {
  const factory _QuestReward(
      {final Set<Feature>? features,
      final ItemContainer? items}) = _$_QuestReward;

  factory _QuestReward.fromJson(Map<String, dynamic> json) =
      _$_QuestReward.fromJson;

  @override
  Set<Feature>? get features;
  @override
  ItemContainer? get items;
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
  QuestDefinitionId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  TownsfolkDefinitionId? get questGiver =>
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
      {QuestDefinitionId id,
      String name,
      String description,
      TownsfolkDefinitionId? questGiver,
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
    Object? questGiver = freezed,
    Object? enabledRequirement = freezed,
    Object? completeRequirement = freezed,
    Object? reward = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as QuestDefinitionId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      questGiver: questGiver == freezed
          ? _value.questGiver
          : questGiver // ignore: cast_nullable_to_non_nullable
              as TownsfolkDefinitionId?,
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
      {QuestDefinitionId id,
      String name,
      String description,
      TownsfolkDefinitionId? questGiver,
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
    Object? questGiver = freezed,
    Object? enabledRequirement = freezed,
    Object? completeRequirement = freezed,
    Object? reward = freezed,
  }) {
    return _then(_$_QuestDefinition(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as QuestDefinitionId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      questGiver: questGiver == freezed
          ? _value.questGiver
          : questGiver // ignore: cast_nullable_to_non_nullable
              as TownsfolkDefinitionId?,
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
      this.questGiver,
      required this.enabledRequirement,
      required this.completeRequirement,
      required this.reward});

  factory _$_QuestDefinition.fromJson(Map<String, dynamic> json) =>
      _$$_QuestDefinitionFromJson(json);

  @override
  final QuestDefinitionId id;
  @override
  final String name;
  @override
  final String description;
  @override
  final TownsfolkDefinitionId? questGiver;
//TODO: This should be changed to look at the achievement metrics instead so it can always stay on.
  @override
  final Requirement enabledRequirement;
  @override
  final Requirement completeRequirement;
  @override
  final QuestReward reward;

  @override
  String toString() {
    return 'QuestDefinition(id: $id, name: $name, description: $description, questGiver: $questGiver, enabledRequirement: $enabledRequirement, completeRequirement: $completeRequirement, reward: $reward)';
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
                .equals(other.questGiver, questGiver) &&
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
      const DeepCollectionEquality().hash(questGiver),
      const DeepCollectionEquality().hash(enabledRequirement),
      const DeepCollectionEquality().hash(completeRequirement),
      const DeepCollectionEquality().hash(reward));

  @JsonKey(ignore: true)
  @override
  _$$_QuestDefinitionCopyWith<_$_QuestDefinition> get copyWith =>
      __$$_QuestDefinitionCopyWithImpl<_$_QuestDefinition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestDefinitionToJson(
      this,
    );
  }
}

abstract class _QuestDefinition implements QuestDefinition {
  const factory _QuestDefinition(
      {required final QuestDefinitionId id,
      required final String name,
      required final String description,
      final TownsfolkDefinitionId? questGiver,
      required final Requirement enabledRequirement,
      required final Requirement completeRequirement,
      required final QuestReward reward}) = _$_QuestDefinition;

  factory _QuestDefinition.fromJson(Map<String, dynamic> json) =
      _$_QuestDefinition.fromJson;

  @override
  QuestDefinitionId get id;
  @override
  String get name;
  @override
  String get description;
  @override
  TownsfolkDefinitionId? get questGiver;
  @override //TODO: This should be changed to look at the achievement metrics instead so it can always stay on.
  Requirement get enabledRequirement;
  @override
  Requirement get completeRequirement;
  @override
  QuestReward get reward;
  @override
  @JsonKey(ignore: true)
  _$$_QuestDefinitionCopyWith<_$_QuestDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestStatus {
  QuestDefinition get definition => throw _privateConstructorUsedError;
  bool get requirementsMet => throw _privateConstructorUsedError;
  Set<Feature> get featuresProgress => throw _privateConstructorUsedError;
  ItemContainer get itemsProgress => throw _privateConstructorUsedError;

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
      Set<Feature> featuresProgress,
      ItemContainer itemsProgress});

  $QuestDefinitionCopyWith<$Res> get definition;
  $ItemContainerCopyWith<$Res> get itemsProgress;
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
              as Set<Feature>,
      itemsProgress: itemsProgress == freezed
          ? _value.itemsProgress
          : itemsProgress // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
    ));
  }

  @override
  $QuestDefinitionCopyWith<$Res> get definition {
    return $QuestDefinitionCopyWith<$Res>(_value.definition, (value) {
      return _then(_value.copyWith(definition: value));
    });
  }

  @override
  $ItemContainerCopyWith<$Res> get itemsProgress {
    return $ItemContainerCopyWith<$Res>(_value.itemsProgress, (value) {
      return _then(_value.copyWith(itemsProgress: value));
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
      Set<Feature> featuresProgress,
      ItemContainer itemsProgress});

  @override
  $QuestDefinitionCopyWith<$Res> get definition;
  @override
  $ItemContainerCopyWith<$Res> get itemsProgress;
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
          ? _value._featuresProgress
          : featuresProgress // ignore: cast_nullable_to_non_nullable
              as Set<Feature>,
      itemsProgress: itemsProgress == freezed
          ? _value.itemsProgress
          : itemsProgress // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
    ));
  }
}

/// @nodoc

class _$_QuestStatus implements _QuestStatus {
  const _$_QuestStatus(
      {required this.definition,
      required this.requirementsMet,
      required final Set<Feature> featuresProgress,
      required this.itemsProgress})
      : _featuresProgress = featuresProgress;

  @override
  final QuestDefinition definition;
  @override
  final bool requirementsMet;
  final Set<Feature> _featuresProgress;
  @override
  Set<Feature> get featuresProgress {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_featuresProgress);
  }

  @override
  final ItemContainer itemsProgress;

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
                .equals(other._featuresProgress, _featuresProgress) &&
            const DeepCollectionEquality()
                .equals(other.itemsProgress, itemsProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(definition),
      const DeepCollectionEquality().hash(requirementsMet),
      const DeepCollectionEquality().hash(_featuresProgress),
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
      required final Set<Feature> featuresProgress,
      required final ItemContainer itemsProgress}) = _$_QuestStatus;

  @override
  QuestDefinition get definition;
  @override
  bool get requirementsMet;
  @override
  Set<Feature> get featuresProgress;
  @override
  ItemContainer get itemsProgress;
  @override
  @JsonKey(ignore: true)
  _$$_QuestStatusCopyWith<_$_QuestStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
