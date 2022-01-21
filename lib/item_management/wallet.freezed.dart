// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResourcesTearOff {
  const _$ResourcesTearOff();

  _Resources call({int iron = 0}) {
    return _Resources(
      iron: iron,
    );
  }
}

/// @nodoc
const $Resources = _$ResourcesTearOff();

/// @nodoc
mixin _$Resources {
  int get iron => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResourcesCopyWith<Resources> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourcesCopyWith<$Res> {
  factory $ResourcesCopyWith(Resources value, $Res Function(Resources) then) =
      _$ResourcesCopyWithImpl<$Res>;
  $Res call({int iron});
}

/// @nodoc
class _$ResourcesCopyWithImpl<$Res> implements $ResourcesCopyWith<$Res> {
  _$ResourcesCopyWithImpl(this._value, this._then);

  final Resources _value;
  // ignore: unused_field
  final $Res Function(Resources) _then;

  @override
  $Res call({
    Object? iron = freezed,
  }) {
    return _then(_value.copyWith(
      iron: iron == freezed
          ? _value.iron
          : iron // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ResourcesCopyWith<$Res> implements $ResourcesCopyWith<$Res> {
  factory _$ResourcesCopyWith(
          _Resources value, $Res Function(_Resources) then) =
      __$ResourcesCopyWithImpl<$Res>;
  @override
  $Res call({int iron});
}

/// @nodoc
class __$ResourcesCopyWithImpl<$Res> extends _$ResourcesCopyWithImpl<$Res>
    implements _$ResourcesCopyWith<$Res> {
  __$ResourcesCopyWithImpl(_Resources _value, $Res Function(_Resources) _then)
      : super(_value, (v) => _then(v as _Resources));

  @override
  _Resources get _value => super._value as _Resources;

  @override
  $Res call({
    Object? iron = freezed,
  }) {
    return _then(_Resources(
      iron: iron == freezed
          ? _value.iron
          : iron // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Resources extends _Resources with DiagnosticableTreeMixin {
  const _$_Resources({this.iron = 0}) : super._();

  @JsonKey()
  @override
  final int iron;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Resources(iron: $iron)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Resources'))
      ..add(DiagnosticsProperty('iron', iron));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Resources &&
            const DeepCollectionEquality().equals(other.iron, iron));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(iron));

  @JsonKey(ignore: true)
  @override
  _$ResourcesCopyWith<_Resources> get copyWith =>
      __$ResourcesCopyWithImpl<_Resources>(this, _$identity);
}

abstract class _Resources extends Resources {
  const factory _Resources({int iron}) = _$_Resources;
  const _Resources._() : super._();

  @override
  int get iron;
  @override
  @JsonKey(ignore: true)
  _$ResourcesCopyWith<_Resources> get copyWith =>
      throw _privateConstructorUsedError;
}
