// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'requirement.dart';

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
  @ItemDefinitionIdKeyedMapConverter()
  Map<ItemDefinitionId, int> get requiredItems =>
      throw _privateConstructorUsedError;

  Set<Feature> get requiredFeatures => throw _privateConstructorUsedError;

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
      {@ItemDefinitionIdKeyedMapConverter()
          Map<ItemDefinitionId, int> requiredItems,
      Set<Feature> requiredFeatures});
}

/// @nodoc
class _$RequirementCopyWithImpl<$Res> implements $RequirementCopyWith<$Res> {
  _$RequirementCopyWithImpl(this._value, this._then);

  final Requirement _value;

  // ignore: unused_field
  final $Res Function(Requirement) _then;

  @override
  $Res call({
    Object? requiredItems = freezed,
    Object? requiredFeatures = freezed,
  }) {
    return _then(_value.copyWith(
      requiredItems: requiredItems == freezed
          ? _value.requiredItems
          : requiredItems // ignore: cast_nullable_to_non_nullable
              as Map<ItemDefinitionId, int>,
      requiredFeatures: requiredFeatures == freezed
          ? _value.requiredFeatures
          : requiredFeatures // ignore: cast_nullable_to_non_nullable
              as Set<Feature>,
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
      {@ItemDefinitionIdKeyedMapConverter()
          Map<ItemDefinitionId, int> requiredItems,
      Set<Feature> requiredFeatures});
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
    Object? requiredItems = freezed,
    Object? requiredFeatures = freezed,
  }) {
    return _then(_$_Requirement(
      requiredItems: requiredItems == freezed
          ? _value._requiredItems
          : requiredItems // ignore: cast_nullable_to_non_nullable
              as Map<ItemDefinitionId, int>,
      requiredFeatures: requiredFeatures == freezed
          ? _value._requiredFeatures
          : requiredFeatures // ignore: cast_nullable_to_non_nullable
              as Set<Feature>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Requirement extends _Requirement {
  const _$_Requirement(
      {@ItemDefinitionIdKeyedMapConverter()
          required final Map<ItemDefinitionId, int> requiredItems,
      required final Set<Feature> requiredFeatures})
      : _requiredItems = requiredItems,
        _requiredFeatures = requiredFeatures,
        super._();

  factory _$_Requirement.fromJson(Map<String, dynamic> json) =>
      _$$_RequirementFromJson(json);

  final Map<ItemDefinitionId, int> _requiredItems;

  @override
  @ItemDefinitionIdKeyedMapConverter()
  Map<ItemDefinitionId, int> get requiredItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_requiredItems);
  }

  final Set<Feature> _requiredFeatures;

  @override
  Set<Feature> get requiredFeatures {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_requiredFeatures);
  }

  @override
  String toString() {
    return 'Requirement(requiredItems: $requiredItems, requiredFeatures: $requiredFeatures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Requirement &&
            const DeepCollectionEquality()
                .equals(other._requiredItems, _requiredItems) &&
            const DeepCollectionEquality()
                .equals(other._requiredFeatures, _requiredFeatures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_requiredItems),
      const DeepCollectionEquality().hash(_requiredFeatures));

  @JsonKey(ignore: true)
  @override
  _$$_RequirementCopyWith<_$_Requirement> get copyWith =>
      __$$_RequirementCopyWithImpl<_$_Requirement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequirementToJson(
      this,
    );
  }
}

abstract class _Requirement extends Requirement {
  const factory _Requirement(
      {@ItemDefinitionIdKeyedMapConverter()
          required final Map<ItemDefinitionId, int> requiredItems,
      required final Set<Feature> requiredFeatures}) = _$_Requirement;

  const _Requirement._() : super._();

  factory _Requirement.fromJson(Map<String, dynamic> json) =
      _$_Requirement.fromJson;

  @override
  @ItemDefinitionIdKeyedMapConverter()
  Map<ItemDefinitionId, int> get requiredItems;

  @override
  Set<Feature> get requiredFeatures;

  @override
  @JsonKey(ignore: true)
  _$$_RequirementCopyWith<_$_Requirement> get copyWith =>
      throw _privateConstructorUsedError;
}
