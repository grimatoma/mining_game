// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'item_definitions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SwordDefinitionTearOff {
  const _$SwordDefinitionTearOff();

  _SwordDefinition call(
      {required ItemKey itemKey,
      required String name,
      required String description,
      required BuiltMap<WeaponAttributes, double> attributes}) {
    return _SwordDefinition(
      itemKey: itemKey,
      name: name,
      description: description,
      attributes: attributes,
    );
  }
}

/// @nodoc
const $SwordDefinition = _$SwordDefinitionTearOff();

/// @nodoc
mixin _$SwordDefinition {
  ItemKey get itemKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  BuiltMap<WeaponAttributes, double> get attributes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwordDefinitionCopyWith<SwordDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwordDefinitionCopyWith<$Res> {
  factory $SwordDefinitionCopyWith(
          SwordDefinition value, $Res Function(SwordDefinition) then) =
      _$SwordDefinitionCopyWithImpl<$Res>;
  $Res call(
      {ItemKey itemKey,
      String name,
      String description,
      BuiltMap<WeaponAttributes, double> attributes});
}

/// @nodoc
class _$SwordDefinitionCopyWithImpl<$Res>
    implements $SwordDefinitionCopyWith<$Res> {
  _$SwordDefinitionCopyWithImpl(this._value, this._then);

  final SwordDefinition _value;
  // ignore: unused_field
  final $Res Function(SwordDefinition) _then;

  @override
  $Res call({
    Object? itemKey = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? attributes = freezed,
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
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BuiltMap<WeaponAttributes, double>,
    ));
  }
}

/// @nodoc
abstract class _$SwordDefinitionCopyWith<$Res>
    implements $SwordDefinitionCopyWith<$Res> {
  factory _$SwordDefinitionCopyWith(
          _SwordDefinition value, $Res Function(_SwordDefinition) then) =
      __$SwordDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemKey itemKey,
      String name,
      String description,
      BuiltMap<WeaponAttributes, double> attributes});
}

/// @nodoc
class __$SwordDefinitionCopyWithImpl<$Res>
    extends _$SwordDefinitionCopyWithImpl<$Res>
    implements _$SwordDefinitionCopyWith<$Res> {
  __$SwordDefinitionCopyWithImpl(
      _SwordDefinition _value, $Res Function(_SwordDefinition) _then)
      : super(_value, (v) => _then(v as _SwordDefinition));

  @override
  _SwordDefinition get _value => super._value as _SwordDefinition;

  @override
  $Res call({
    Object? itemKey = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_SwordDefinition(
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
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BuiltMap<WeaponAttributes, double>,
    ));
  }
}

/// @nodoc

class _$_SwordDefinition implements _SwordDefinition {
  const _$_SwordDefinition(
      {required this.itemKey,
      required this.name,
      required this.description,
      required this.attributes});

  @override
  final ItemKey itemKey;
  @override
  final String name;
  @override
  final String description;
  @override
  final BuiltMap<WeaponAttributes, double> attributes;

  @override
  String toString() {
    return 'SwordDefinition(itemKey: $itemKey, name: $name, description: $description, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SwordDefinition &&
            const DeepCollectionEquality().equals(other.itemKey, itemKey) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemKey),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(attributes));

  @JsonKey(ignore: true)
  @override
  _$SwordDefinitionCopyWith<_SwordDefinition> get copyWith =>
      __$SwordDefinitionCopyWithImpl<_SwordDefinition>(this, _$identity);
}

abstract class _SwordDefinition implements SwordDefinition {
  const factory _SwordDefinition(
          {required ItemKey itemKey,
          required String name,
          required String description,
          required BuiltMap<WeaponAttributes, double> attributes}) =
      _$_SwordDefinition;

  @override
  ItemKey get itemKey;
  @override
  String get name;
  @override
  String get description;
  @override
  BuiltMap<WeaponAttributes, double> get attributes;
  @override
  @JsonKey(ignore: true)
  _$SwordDefinitionCopyWith<_SwordDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResourceDefinitionTearOff {
  const _$ResourceDefinitionTearOff();

  _ResourceDefinition call(
      {required ItemKey itemKey,
      required String name,
      required String description}) {
    return _ResourceDefinition(
      itemKey: itemKey,
      name: name,
      description: description,
    );
  }
}

/// @nodoc
const $ResourceDefinition = _$ResourceDefinitionTearOff();

/// @nodoc
mixin _$ResourceDefinition {
  ItemKey get itemKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResourceDefinitionCopyWith<ResourceDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceDefinitionCopyWith<$Res> {
  factory $ResourceDefinitionCopyWith(
          ResourceDefinition value, $Res Function(ResourceDefinition) then) =
      _$ResourceDefinitionCopyWithImpl<$Res>;
  $Res call({ItemKey itemKey, String name, String description});
}

/// @nodoc
class _$ResourceDefinitionCopyWithImpl<$Res>
    implements $ResourceDefinitionCopyWith<$Res> {
  _$ResourceDefinitionCopyWithImpl(this._value, this._then);

  final ResourceDefinition _value;
  // ignore: unused_field
  final $Res Function(ResourceDefinition) _then;

  @override
  $Res call({
    Object? itemKey = freezed,
    Object? name = freezed,
    Object? description = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$ResourceDefinitionCopyWith<$Res>
    implements $ResourceDefinitionCopyWith<$Res> {
  factory _$ResourceDefinitionCopyWith(
          _ResourceDefinition value, $Res Function(_ResourceDefinition) then) =
      __$ResourceDefinitionCopyWithImpl<$Res>;
  @override
  $Res call({ItemKey itemKey, String name, String description});
}

/// @nodoc
class __$ResourceDefinitionCopyWithImpl<$Res>
    extends _$ResourceDefinitionCopyWithImpl<$Res>
    implements _$ResourceDefinitionCopyWith<$Res> {
  __$ResourceDefinitionCopyWithImpl(
      _ResourceDefinition _value, $Res Function(_ResourceDefinition) _then)
      : super(_value, (v) => _then(v as _ResourceDefinition));

  @override
  _ResourceDefinition get _value => super._value as _ResourceDefinition;

  @override
  $Res call({
    Object? itemKey = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_ResourceDefinition(
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
    ));
  }
}

/// @nodoc

class _$_ResourceDefinition implements _ResourceDefinition {
  const _$_ResourceDefinition(
      {required this.itemKey, required this.name, required this.description});

  @override
  final ItemKey itemKey;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'ResourceDefinition(itemKey: $itemKey, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResourceDefinition &&
            const DeepCollectionEquality().equals(other.itemKey, itemKey) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemKey),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$ResourceDefinitionCopyWith<_ResourceDefinition> get copyWith =>
      __$ResourceDefinitionCopyWithImpl<_ResourceDefinition>(this, _$identity);
}

abstract class _ResourceDefinition implements ResourceDefinition {
  const factory _ResourceDefinition(
      {required ItemKey itemKey,
      required String name,
      required String description}) = _$_ResourceDefinition;

  @override
  ItemKey get itemKey;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$ResourceDefinitionCopyWith<_ResourceDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}
