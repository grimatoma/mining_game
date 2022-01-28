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
class _$SwordTearOff {
  const _$SwordTearOff();

  _Sword call(
      {required ItemKey itemKey,
      required String name,
      required String description,
      required BuiltMap<WeaponAttributes, double> attributes}) {
    return _Sword(
      itemKey: itemKey,
      name: name,
      description: description,
      attributes: attributes,
    );
  }
}

/// @nodoc
const $Sword = _$SwordTearOff();

/// @nodoc
mixin _$Sword {
  ItemKey get itemKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  BuiltMap<WeaponAttributes, double> get attributes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwordCopyWith<Sword> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwordCopyWith<$Res> {
  factory $SwordCopyWith(Sword value, $Res Function(Sword) then) =
      _$SwordCopyWithImpl<$Res>;
  $Res call(
      {ItemKey itemKey,
      String name,
      String description,
      BuiltMap<WeaponAttributes, double> attributes});
}

/// @nodoc
class _$SwordCopyWithImpl<$Res> implements $SwordCopyWith<$Res> {
  _$SwordCopyWithImpl(this._value, this._then);

  final Sword _value;
  // ignore: unused_field
  final $Res Function(Sword) _then;

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
abstract class _$SwordCopyWith<$Res> implements $SwordCopyWith<$Res> {
  factory _$SwordCopyWith(_Sword value, $Res Function(_Sword) then) =
      __$SwordCopyWithImpl<$Res>;
  @override
  $Res call(
      {ItemKey itemKey,
      String name,
      String description,
      BuiltMap<WeaponAttributes, double> attributes});
}

/// @nodoc
class __$SwordCopyWithImpl<$Res> extends _$SwordCopyWithImpl<$Res>
    implements _$SwordCopyWith<$Res> {
  __$SwordCopyWithImpl(_Sword _value, $Res Function(_Sword) _then)
      : super(_value, (v) => _then(v as _Sword));

  @override
  _Sword get _value => super._value as _Sword;

  @override
  $Res call({
    Object? itemKey = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_Sword(
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

class _$_Sword implements _Sword {
  const _$_Sword(
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
    return 'Sword(itemKey: $itemKey, name: $name, description: $description, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sword &&
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
  _$SwordCopyWith<_Sword> get copyWith =>
      __$SwordCopyWithImpl<_Sword>(this, _$identity);
}

abstract class _Sword implements Sword {
  const factory _Sword(
      {required ItemKey itemKey,
      required String name,
      required String description,
      required BuiltMap<WeaponAttributes, double> attributes}) = _$_Sword;

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
  _$SwordCopyWith<_Sword> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResourceTearOff {
  const _$ResourceTearOff();

  _Resource call(
      {required ItemKey itemKey,
      required String name,
      required String description}) {
    return _Resource(
      itemKey: itemKey,
      name: name,
      description: description,
    );
  }
}

/// @nodoc
const $Resource = _$ResourceTearOff();

/// @nodoc
mixin _$Resource {
  ItemKey get itemKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResourceCopyWith<Resource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<$Res> {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) then) =
      _$ResourceCopyWithImpl<$Res>;
  $Res call({ItemKey itemKey, String name, String description});
}

/// @nodoc
class _$ResourceCopyWithImpl<$Res> implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

  final Resource _value;
  // ignore: unused_field
  final $Res Function(Resource) _then;

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
abstract class _$ResourceCopyWith<$Res> implements $ResourceCopyWith<$Res> {
  factory _$ResourceCopyWith(_Resource value, $Res Function(_Resource) then) =
      __$ResourceCopyWithImpl<$Res>;
  @override
  $Res call({ItemKey itemKey, String name, String description});
}

/// @nodoc
class __$ResourceCopyWithImpl<$Res> extends _$ResourceCopyWithImpl<$Res>
    implements _$ResourceCopyWith<$Res> {
  __$ResourceCopyWithImpl(_Resource _value, $Res Function(_Resource) _then)
      : super(_value, (v) => _then(v as _Resource));

  @override
  _Resource get _value => super._value as _Resource;

  @override
  $Res call({
    Object? itemKey = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_Resource(
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

class _$_Resource implements _Resource {
  const _$_Resource(
      {required this.itemKey, required this.name, required this.description});

  @override
  final ItemKey itemKey;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'Resource(itemKey: $itemKey, name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Resource &&
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
  _$ResourceCopyWith<_Resource> get copyWith =>
      __$ResourceCopyWithImpl<_Resource>(this, _$identity);
}

abstract class _Resource implements Resource {
  const factory _Resource(
      {required ItemKey itemKey,
      required String name,
      required String description}) = _$_Resource;

  @override
  ItemKey get itemKey;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$ResourceCopyWith<_Resource> get copyWith =>
      throw _privateConstructorUsedError;
}
