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
      _$QuestRewardCopyWithImpl<$Res, QuestReward>;
  @useResult
  $Res call({Set<Feature>? features, ItemContainer? items});

  $ItemContainerCopyWith<$Res>? get items;
}

/// @nodoc
class _$QuestRewardCopyWithImpl<$Res, $Val extends QuestReward>
    implements $QuestRewardCopyWith<$Res> {
  _$QuestRewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Set<Feature>?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ItemContainer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemContainerCopyWith<$Res>? get items {
    if (_value.items == null) {
      return null;
    }

    return $ItemContainerCopyWith<$Res>(_value.items!, (value) {
      return _then(_value.copyWith(items: value) as $Val);
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
  @useResult
  $Res call({Set<Feature>? features, ItemContainer? items});

  @override
  $ItemContainerCopyWith<$Res>? get items;
}

/// @nodoc
class __$$_QuestRewardCopyWithImpl<$Res>
    extends _$QuestRewardCopyWithImpl<$Res, _$_QuestReward>
    implements _$$_QuestRewardCopyWith<$Res> {
  __$$_QuestRewardCopyWithImpl(
      _$_QuestReward _value, $Res Function(_$_QuestReward) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_QuestReward(
      features: freezed == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as Set<Feature>?,
      items: freezed == items
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
            (identical(other.items, items) || other.items == items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_features), items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      _$QuestDefinitionCopyWithImpl<$Res, QuestDefinition>;
  @useResult
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
class _$QuestDefinitionCopyWithImpl<$Res, $Val extends QuestDefinition>
    implements $QuestDefinitionCopyWith<$Res> {
  _$QuestDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? questGiver = freezed,
    Object? enabledRequirement = null,
    Object? completeRequirement = null,
    Object? reward = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as QuestDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      questGiver: freezed == questGiver
          ? _value.questGiver
          : questGiver // ignore: cast_nullable_to_non_nullable
              as TownsfolkDefinitionId?,
      enabledRequirement: null == enabledRequirement
          ? _value.enabledRequirement
          : enabledRequirement // ignore: cast_nullable_to_non_nullable
              as Requirement,
      completeRequirement: null == completeRequirement
          ? _value.completeRequirement
          : completeRequirement // ignore: cast_nullable_to_non_nullable
              as Requirement,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as QuestReward,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequirementCopyWith<$Res> get enabledRequirement {
    return $RequirementCopyWith<$Res>(_value.enabledRequirement, (value) {
      return _then(_value.copyWith(enabledRequirement: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequirementCopyWith<$Res> get completeRequirement {
    return $RequirementCopyWith<$Res>(_value.completeRequirement, (value) {
      return _then(_value.copyWith(completeRequirement: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestRewardCopyWith<$Res> get reward {
    return $QuestRewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value) as $Val);
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
  @useResult
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
    extends _$QuestDefinitionCopyWithImpl<$Res, _$_QuestDefinition>
    implements _$$_QuestDefinitionCopyWith<$Res> {
  __$$_QuestDefinitionCopyWithImpl(
      _$_QuestDefinition _value, $Res Function(_$_QuestDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? questGiver = freezed,
    Object? enabledRequirement = null,
    Object? completeRequirement = null,
    Object? reward = null,
  }) {
    return _then(_$_QuestDefinition(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as QuestDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      questGiver: freezed == questGiver
          ? _value.questGiver
          : questGiver // ignore: cast_nullable_to_non_nullable
              as TownsfolkDefinitionId?,
      enabledRequirement: null == enabledRequirement
          ? _value.enabledRequirement
          : enabledRequirement // ignore: cast_nullable_to_non_nullable
              as Requirement,
      completeRequirement: null == completeRequirement
          ? _value.completeRequirement
          : completeRequirement // ignore: cast_nullable_to_non_nullable
              as Requirement,
      reward: null == reward
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.questGiver, questGiver) ||
                other.questGiver == questGiver) &&
            (identical(other.enabledRequirement, enabledRequirement) ||
                other.enabledRequirement == enabledRequirement) &&
            (identical(other.completeRequirement, completeRequirement) ||
                other.completeRequirement == completeRequirement) &&
            (identical(other.reward, reward) || other.reward == reward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      questGiver, enabledRequirement, completeRequirement, reward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  bool get hasRequiredFeatures => throw _privateConstructorUsedError;
  ItemContainer get itemsProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestStatusCopyWith<QuestStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestStatusCopyWith<$Res> {
  factory $QuestStatusCopyWith(
          QuestStatus value, $Res Function(QuestStatus) then) =
      _$QuestStatusCopyWithImpl<$Res, QuestStatus>;
  @useResult
  $Res call(
      {QuestDefinition definition,
      bool requirementsMet,
      bool hasRequiredFeatures,
      ItemContainer itemsProgress});

  $QuestDefinitionCopyWith<$Res> get definition;
  $ItemContainerCopyWith<$Res> get itemsProgress;
}

/// @nodoc
class _$QuestStatusCopyWithImpl<$Res, $Val extends QuestStatus>
    implements $QuestStatusCopyWith<$Res> {
  _$QuestStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definition = null,
    Object? requirementsMet = null,
    Object? hasRequiredFeatures = null,
    Object? itemsProgress = null,
  }) {
    return _then(_value.copyWith(
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as QuestDefinition,
      requirementsMet: null == requirementsMet
          ? _value.requirementsMet
          : requirementsMet // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRequiredFeatures: null == hasRequiredFeatures
          ? _value.hasRequiredFeatures
          : hasRequiredFeatures // ignore: cast_nullable_to_non_nullable
              as bool,
      itemsProgress: null == itemsProgress
          ? _value.itemsProgress
          : itemsProgress // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestDefinitionCopyWith<$Res> get definition {
    return $QuestDefinitionCopyWith<$Res>(_value.definition, (value) {
      return _then(_value.copyWith(definition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemContainerCopyWith<$Res> get itemsProgress {
    return $ItemContainerCopyWith<$Res>(_value.itemsProgress, (value) {
      return _then(_value.copyWith(itemsProgress: value) as $Val);
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
  @useResult
  $Res call(
      {QuestDefinition definition,
      bool requirementsMet,
      bool hasRequiredFeatures,
      ItemContainer itemsProgress});

  @override
  $QuestDefinitionCopyWith<$Res> get definition;
  @override
  $ItemContainerCopyWith<$Res> get itemsProgress;
}

/// @nodoc
class __$$_QuestStatusCopyWithImpl<$Res>
    extends _$QuestStatusCopyWithImpl<$Res, _$_QuestStatus>
    implements _$$_QuestStatusCopyWith<$Res> {
  __$$_QuestStatusCopyWithImpl(
      _$_QuestStatus _value, $Res Function(_$_QuestStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definition = null,
    Object? requirementsMet = null,
    Object? hasRequiredFeatures = null,
    Object? itemsProgress = null,
  }) {
    return _then(_$_QuestStatus(
      definition: null == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as QuestDefinition,
      requirementsMet: null == requirementsMet
          ? _value.requirementsMet
          : requirementsMet // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRequiredFeatures: null == hasRequiredFeatures
          ? _value.hasRequiredFeatures
          : hasRequiredFeatures // ignore: cast_nullable_to_non_nullable
              as bool,
      itemsProgress: null == itemsProgress
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
      required this.hasRequiredFeatures,
      required this.itemsProgress});

  @override
  final QuestDefinition definition;
  @override
  final bool requirementsMet;
  @override
  final bool hasRequiredFeatures;
  @override
  final ItemContainer itemsProgress;

  @override
  String toString() {
    return 'QuestStatus(definition: $definition, requirementsMet: $requirementsMet, hasRequiredFeatures: $hasRequiredFeatures, itemsProgress: $itemsProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestStatus &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            (identical(other.requirementsMet, requirementsMet) ||
                other.requirementsMet == requirementsMet) &&
            (identical(other.hasRequiredFeatures, hasRequiredFeatures) ||
                other.hasRequiredFeatures == hasRequiredFeatures) &&
            (identical(other.itemsProgress, itemsProgress) ||
                other.itemsProgress == itemsProgress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, definition, requirementsMet,
      hasRequiredFeatures, itemsProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestStatusCopyWith<_$_QuestStatus> get copyWith =>
      __$$_QuestStatusCopyWithImpl<_$_QuestStatus>(this, _$identity);
}

abstract class _QuestStatus implements QuestStatus {
  const factory _QuestStatus(
      {required final QuestDefinition definition,
      required final bool requirementsMet,
      required final bool hasRequiredFeatures,
      required final ItemContainer itemsProgress}) = _$_QuestStatus;

  @override
  QuestDefinition get definition;
  @override
  bool get requirementsMet;
  @override
  bool get hasRequiredFeatures;
  @override
  ItemContainer get itemsProgress;
  @override
  @JsonKey(ignore: true)
  _$$_QuestStatusCopyWith<_$_QuestStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
