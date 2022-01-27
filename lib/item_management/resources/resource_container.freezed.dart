// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resource_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResourceContainerTearOff {
  const _$ResourceContainerTearOff();

  _ResourceContainer call(@HiveField(1) BuiltMap<Resource, int> resources) {
    return _ResourceContainer(
      resources,
    );
  }
}

/// @nodoc
const $ResourceContainer = _$ResourceContainerTearOff();

/// @nodoc
mixin _$ResourceContainer {
  @HiveField(1)
  BuiltMap<Resource, int> get resources => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResourceContainerCopyWith<ResourceContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceContainerCopyWith<$Res> {
  factory $ResourceContainerCopyWith(
          ResourceContainer value, $Res Function(ResourceContainer) then) =
      _$ResourceContainerCopyWithImpl<$Res>;
  $Res call({@HiveField(1) BuiltMap<Resource, int> resources});
}

/// @nodoc
class _$ResourceContainerCopyWithImpl<$Res>
    implements $ResourceContainerCopyWith<$Res> {
  _$ResourceContainerCopyWithImpl(this._value, this._then);

  final ResourceContainer _value;
  // ignore: unused_field
  final $Res Function(ResourceContainer) _then;

  @override
  $Res call({
    Object? resources = freezed,
  }) {
    return _then(_value.copyWith(
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as BuiltMap<Resource, int>,
    ));
  }
}

/// @nodoc
abstract class _$ResourceContainerCopyWith<$Res>
    implements $ResourceContainerCopyWith<$Res> {
  factory _$ResourceContainerCopyWith(
          _ResourceContainer value, $Res Function(_ResourceContainer) then) =
      __$ResourceContainerCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(1) BuiltMap<Resource, int> resources});
}

/// @nodoc
class __$ResourceContainerCopyWithImpl<$Res>
    extends _$ResourceContainerCopyWithImpl<$Res>
    implements _$ResourceContainerCopyWith<$Res> {
  __$ResourceContainerCopyWithImpl(
      _ResourceContainer _value, $Res Function(_ResourceContainer) _then)
      : super(_value, (v) => _then(v as _ResourceContainer));

  @override
  _ResourceContainer get _value => super._value as _ResourceContainer;

  @override
  $Res call({
    Object? resources = freezed,
  }) {
    return _then(_ResourceContainer(
      resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as BuiltMap<Resource, int>,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 12, adapterName: 'ResourceContainerAdapter')
class _$_ResourceContainer extends _ResourceContainer {
  const _$_ResourceContainer(@HiveField(1) this.resources) : super._();

  @override
  @HiveField(1)
  final BuiltMap<Resource, int> resources;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResourceContainer &&
            const DeepCollectionEquality().equals(other.resources, resources));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(resources));

  @JsonKey(ignore: true)
  @override
  _$ResourceContainerCopyWith<_ResourceContainer> get copyWith =>
      __$ResourceContainerCopyWithImpl<_ResourceContainer>(this, _$identity);
}

abstract class _ResourceContainer extends ResourceContainer {
  const factory _ResourceContainer(
      @HiveField(1) BuiltMap<Resource, int> resources) = _$_ResourceContainer;
  const _ResourceContainer._() : super._();

  @override
  @HiveField(1)
  BuiltMap<Resource, int> get resources;
  @override
  @JsonKey(ignore: true)
  _$ResourceContainerCopyWith<_ResourceContainer> get copyWith =>
      throw _privateConstructorUsedError;
}
