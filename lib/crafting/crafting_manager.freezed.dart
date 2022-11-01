// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crafting_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CraftingSession _$CraftingSessionFromJson(Map<String, dynamic> json) {
  return _CraftingSession.fromJson(json);
}

/// @nodoc
mixin _$CraftingSession {
  CraftingRecipe get recipe => throw _privateConstructorUsedError;
  int get remaining => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CraftingSessionCopyWith<CraftingSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CraftingSessionCopyWith<$Res> {
  factory $CraftingSessionCopyWith(
          CraftingSession value, $Res Function(CraftingSession) then) =
      _$CraftingSessionCopyWithImpl<$Res, CraftingSession>;
  @useResult
  $Res call({CraftingRecipe recipe, int remaining});

  $CraftingRecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class _$CraftingSessionCopyWithImpl<$Res, $Val extends CraftingSession>
    implements $CraftingSessionCopyWith<$Res> {
  _$CraftingSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? remaining = null,
  }) {
    return _then(_value.copyWith(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as CraftingRecipe,
      remaining: null == remaining
          ? _value.remaining
          : remaining // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CraftingRecipeCopyWith<$Res> get recipe {
    return $CraftingRecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CraftingSessionCopyWith<$Res>
    implements $CraftingSessionCopyWith<$Res> {
  factory _$$_CraftingSessionCopyWith(
          _$_CraftingSession value, $Res Function(_$_CraftingSession) then) =
      __$$_CraftingSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CraftingRecipe recipe, int remaining});

  @override
  $CraftingRecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$_CraftingSessionCopyWithImpl<$Res>
    extends _$CraftingSessionCopyWithImpl<$Res, _$_CraftingSession>
    implements _$$_CraftingSessionCopyWith<$Res> {
  __$$_CraftingSessionCopyWithImpl(
      _$_CraftingSession _value, $Res Function(_$_CraftingSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? remaining = null,
  }) {
    return _then(_$_CraftingSession(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as CraftingRecipe,
      remaining: null == remaining
          ? _value.remaining
          : remaining // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CraftingSession implements _CraftingSession {
  const _$_CraftingSession({required this.recipe, required this.remaining});

  factory _$_CraftingSession.fromJson(Map<String, dynamic> json) =>
      _$$_CraftingSessionFromJson(json);

  @override
  final CraftingRecipe recipe;
  @override
  final int remaining;

  @override
  String toString() {
    return 'CraftingSession(recipe: $recipe, remaining: $remaining)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CraftingSession &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.remaining, remaining) ||
                other.remaining == remaining));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recipe, remaining);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CraftingSessionCopyWith<_$_CraftingSession> get copyWith =>
      __$$_CraftingSessionCopyWithImpl<_$_CraftingSession>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CraftingSessionToJson(
      this,
    );
  }
}

abstract class _CraftingSession implements CraftingSession {
  const factory _CraftingSession(
      {required final CraftingRecipe recipe,
      required final int remaining}) = _$_CraftingSession;

  factory _CraftingSession.fromJson(Map<String, dynamic> json) =
      _$_CraftingSession.fromJson;

  @override
  CraftingRecipe get recipe;
  @override
  int get remaining;
  @override
  @JsonKey(ignore: true)
  _$$_CraftingSessionCopyWith<_$_CraftingSession> get copyWith =>
      throw _privateConstructorUsedError;
}
