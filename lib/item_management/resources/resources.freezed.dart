// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resources.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResourceDetailsTearOff {
  const _$ResourceDetailsTearOff();

  _ResourceDetails call({required String name, required String description}) {
    return _ResourceDetails(
      name: name,
      description: description,
    );
  }
}

/// @nodoc
const $ResourceDetails = _$ResourceDetailsTearOff();

/// @nodoc
mixin _$ResourceDetails {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResourceDetailsCopyWith<ResourceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceDetailsCopyWith<$Res> {
  factory $ResourceDetailsCopyWith(
          ResourceDetails value, $Res Function(ResourceDetails) then) =
      _$ResourceDetailsCopyWithImpl<$Res>;
  $Res call({String name, String description});
}

/// @nodoc
class _$ResourceDetailsCopyWithImpl<$Res>
    implements $ResourceDetailsCopyWith<$Res> {
  _$ResourceDetailsCopyWithImpl(this._value, this._then);

  final ResourceDetails _value;
  // ignore: unused_field
  final $Res Function(ResourceDetails) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$ResourceDetailsCopyWith<$Res>
    implements $ResourceDetailsCopyWith<$Res> {
  factory _$ResourceDetailsCopyWith(
          _ResourceDetails value, $Res Function(_ResourceDetails) then) =
      __$ResourceDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description});
}

/// @nodoc
class __$ResourceDetailsCopyWithImpl<$Res>
    extends _$ResourceDetailsCopyWithImpl<$Res>
    implements _$ResourceDetailsCopyWith<$Res> {
  __$ResourceDetailsCopyWithImpl(
      _ResourceDetails _value, $Res Function(_ResourceDetails) _then)
      : super(_value, (v) => _then(v as _ResourceDetails));

  @override
  _ResourceDetails get _value => super._value as _ResourceDetails;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_ResourceDetails(
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

class _$_ResourceDetails extends _ResourceDetails {
  const _$_ResourceDetails({required this.name, required this.description})
      : super._();

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'ResourceDetails(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResourceDetails &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$ResourceDetailsCopyWith<_ResourceDetails> get copyWith =>
      __$ResourceDetailsCopyWithImpl<_ResourceDetails>(this, _$identity);
}

abstract class _ResourceDetails extends ResourceDetails {
  const factory _ResourceDetails(
      {required String name, required String description}) = _$_ResourceDetails;
  const _ResourceDetails._() : super._();

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$ResourceDetailsCopyWith<_ResourceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
