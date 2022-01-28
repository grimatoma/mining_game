// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RockProtoTearOff {
  const _$RockProtoTearOff();

  _RockProto call(
      {required ItemId itemId,
      required String name,
      required String description,
      required int maxStackSize}) {
    return _RockProto(
      itemId: itemId,
      name: name,
      description: description,
      maxStackSize: maxStackSize,
    );
  }
}

/// @nodoc
const $RockProto = _$RockProtoTearOff();

/// @nodoc
mixin _$RockProto {
  ItemId get itemId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get maxStackSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RockProtoCopyWith<RockProto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RockProtoCopyWith<$Res> {
  factory $RockProtoCopyWith(RockProto value, $Res Function(RockProto) then) =
      _$RockProtoCopyWithImpl<$Res>;
  $Res call({ItemId itemId, String name, String description, int maxStackSize});

  $ItemIdCopyWith<$Res> get itemId;
}

/// @nodoc
class _$RockProtoCopyWithImpl<$Res> implements $RockProtoCopyWith<$Res> {
  _$RockProtoCopyWithImpl(this._value, this._then);

  final RockProto _value;
  // ignore: unused_field
  final $Res Function(RockProto) _then;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? maxStackSize = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      maxStackSize: maxStackSize == freezed
          ? _value.maxStackSize
          : maxStackSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ItemIdCopyWith<$Res> get itemId {
    return $ItemIdCopyWith<$Res>(_value.itemId, (value) {
      return _then(_value.copyWith(itemId: value));
    });
  }
}

/// @nodoc
abstract class _$RockProtoCopyWith<$Res> implements $RockProtoCopyWith<$Res> {
  factory _$RockProtoCopyWith(
          _RockProto value, $Res Function(_RockProto) then) =
      __$RockProtoCopyWithImpl<$Res>;
  @override
  $Res call({ItemId itemId, String name, String description, int maxStackSize});

  @override
  $ItemIdCopyWith<$Res> get itemId;
}

/// @nodoc
class __$RockProtoCopyWithImpl<$Res> extends _$RockProtoCopyWithImpl<$Res>
    implements _$RockProtoCopyWith<$Res> {
  __$RockProtoCopyWithImpl(_RockProto _value, $Res Function(_RockProto) _then)
      : super(_value, (v) => _then(v as _RockProto));

  @override
  _RockProto get _value => super._value as _RockProto;

  @override
  $Res call({
    Object? itemId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? maxStackSize = freezed,
  }) {
    return _then(_RockProto(
      itemId: itemId == freezed
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as ItemId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      maxStackSize: maxStackSize == freezed
          ? _value.maxStackSize
          : maxStackSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RockProto extends _RockProto {
  const _$_RockProto(
      {required this.itemId,
      required this.name,
      required this.description,
      required this.maxStackSize})
      : super._();

  @override
  final ItemId itemId;
  @override
  final String name;
  @override
  final String description;
  @override
  final int maxStackSize;

  @override
  String toString() {
    return 'RockProto(itemId: $itemId, name: $name, description: $description, maxStackSize: $maxStackSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RockProto &&
            const DeepCollectionEquality().equals(other.itemId, itemId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.maxStackSize, maxStackSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(maxStackSize));

  @JsonKey(ignore: true)
  @override
  _$RockProtoCopyWith<_RockProto> get copyWith =>
      __$RockProtoCopyWithImpl<_RockProto>(this, _$identity);
}

abstract class _RockProto extends RockProto {
  const factory _RockProto(
      {required ItemId itemId,
      required String name,
      required String description,
      required int maxStackSize}) = _$_RockProto;
  const _RockProto._() : super._();

  @override
  ItemId get itemId;
  @override
  String get name;
  @override
  String get description;
  @override
  int get maxStackSize;
  @override
  @JsonKey(ignore: true)
  _$RockProtoCopyWith<_RockProto> get copyWith =>
      throw _privateConstructorUsedError;
}
