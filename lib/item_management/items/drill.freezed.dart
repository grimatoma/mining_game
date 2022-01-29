// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DrillDefinitionTearOff {
  const _$DrillDefinitionTearOff();

  _DrillDefinition call(
      {required ItemKey itemKey,
      required String name,
      required String description,
      required int damage}) {
    return _DrillDefinition(
      itemKey: itemKey,
      name: name,
      description: description,
      damage: damage,
    );
  }
}

/// @nodoc
const $DrillDefinition = _$DrillDefinitionTearOff();

/// @nodoc
mixin _$DrillDefinition {
  ItemKey get itemKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get damage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrillDefinitionCopyWith<DrillDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrillDefinitionCopyWith<$Res> {
  factory $DrillDefinitionCopyWith(
          DrillDefinition value, $Res Function(DrillDefinition) then) =
      _$DrillDefinitionCopyWithImpl<$Res>;
  $Res call({ItemKey itemKey, String name, String description, int damage});
}

/// @nodoc
class _$DrillDefinitionCopyWithImpl<$Res>
    implements $DrillDefinitionCopyWith<$Res> {
  _$DrillDefinitionCopyWithImpl(this._value, this._then);

  final DrillDefinition _value;
  // ignore: unused_field
  final $Res Function(DrillDefinition) _then;

  @override
  $Res call({
    Object? itemKey = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? damage = freezed,
  }) {
    return _then(_value.copyWith(
      itemKey: itemKey == freezed
          ? _value.itemKey
          : itemKey // ignore: cast_nullable_to_non_nullable
              as ItemKey,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      damage: damage == freezed
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DrillDefinitionCopyWith<$Res>
    implements $DrillDefinitionCopyWith<$Res> {
  factory _$DrillDefinitionCopyWith(
          _DrillDefinition value, $Res Function(_DrillDefinition) then) =
      __$DrillDefinitionCopyWithImpl<$Res>;
  @override
  $Res call({ItemKey itemKey, String name, String description, int damage});
}

/// @nodoc
class __$DrillDefinitionCopyWithImpl<$Res>
    extends _$DrillDefinitionCopyWithImpl<$Res>
    implements _$DrillDefinitionCopyWith<$Res> {
  __$DrillDefinitionCopyWithImpl(
      _DrillDefinition _value, $Res Function(_DrillDefinition) _then)
      : super(_value, (v) => _then(v as _DrillDefinition));

  @override
  _DrillDefinition get _value => super._value as _DrillDefinition;

  @override
  $Res call({
    Object? itemKey = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? damage = freezed,
  }) {
    return _then(_DrillDefinition(
      itemKey: itemKey == freezed
          ? _value.itemKey
          : itemKey // ignore: cast_nullable_to_non_nullable
              as ItemKey,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      damage: damage == freezed
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DrillDefinition implements _DrillDefinition {
  const _$_DrillDefinition(
      {required this.itemKey,
      required this.name,
      required this.description,
      required this.damage});

  @override
  final ItemKey itemKey;
  @override
  final String name;
  @override
  final String description;
  @override
  final int damage;

  @override
  String toString() {
    return 'DrillDefinition(itemKey: $itemKey, name: $name, description: $description, damage: $damage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DrillDefinition &&
            const DeepCollectionEquality().equals(other.itemKey, itemKey) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.damage, damage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemKey),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(damage));

  @JsonKey(ignore: true)
  @override
  _$DrillDefinitionCopyWith<_DrillDefinition> get copyWith =>
      __$DrillDefinitionCopyWithImpl<_DrillDefinition>(this, _$identity);
}

abstract class _DrillDefinition implements DrillDefinition {
  const factory _DrillDefinition(
      {required ItemKey itemKey,
      required String name,
      required String description,
      required int damage}) = _$_DrillDefinition;

  @override
  ItemKey get itemKey;
  @override
  String get name;
  @override
  String get description;
  @override
  int get damage;
  @override
  @JsonKey(ignore: true)
  _$DrillDefinitionCopyWith<_DrillDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}
