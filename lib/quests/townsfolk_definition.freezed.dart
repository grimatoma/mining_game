// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'townsfolk_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DefinitionId _$DefinitionIdFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'item':
      return ItemDefinitionId.fromJson(json);
    case 'townsfolk':
      return TownsfolkDefinitionId.fromJson(json);
    case 'quest':
      return QuestDefinitionId.fromJson(json);
    case 'shop':
      return ShopDefinitionId.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DefinitionId',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DefinitionId {
  String get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) item,
    required TResult Function(String id) townsfolk,
    required TResult Function(String id) quest,
    required TResult Function(String id) shop,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemDefinitionId value) item,
    required TResult Function(TownsfolkDefinitionId value) townsfolk,
    required TResult Function(QuestDefinitionId value) quest,
    required TResult Function(ShopDefinitionId value) shop,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopDefinitionId value)? shop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopDefinitionId value)? shop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DefinitionIdCopyWith<DefinitionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefinitionIdCopyWith<$Res> {
  factory $DefinitionIdCopyWith(
          DefinitionId value, $Res Function(DefinitionId) then) =
      _$DefinitionIdCopyWithImpl<$Res>;

  $Res call({String id});
}

/// @nodoc
class _$DefinitionIdCopyWithImpl<$Res> implements $DefinitionIdCopyWith<$Res> {
  _$DefinitionIdCopyWithImpl(this._value, this._then);

  final DefinitionId _value;

  // ignore: unused_field
  final $Res Function(DefinitionId) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ItemDefinitionIdCopyWith<$Res>
    implements $DefinitionIdCopyWith<$Res> {
  factory _$$ItemDefinitionIdCopyWith(
          _$ItemDefinitionId value, $Res Function(_$ItemDefinitionId) then) =
      __$$ItemDefinitionIdCopyWithImpl<$Res>;

  @override
  $Res call({String id});
}

/// @nodoc
class __$$ItemDefinitionIdCopyWithImpl<$Res>
    extends _$DefinitionIdCopyWithImpl<$Res>
    implements _$$ItemDefinitionIdCopyWith<$Res> {
  __$$ItemDefinitionIdCopyWithImpl(
      _$ItemDefinitionId _value, $Res Function(_$ItemDefinitionId) _then)
      : super(_value, (v) => _then(v as _$ItemDefinitionId));

  @override
  _$ItemDefinitionId get _value => super._value as _$ItemDefinitionId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ItemDefinitionId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemDefinitionId extends ItemDefinitionId {
  const _$ItemDefinitionId(this.id, {final String? $type})
      : $type = $type ?? 'item',
        super._();

  factory _$ItemDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$$ItemDefinitionIdFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemDefinitionId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$ItemDefinitionIdCopyWith<_$ItemDefinitionId> get copyWith =>
      __$$ItemDefinitionIdCopyWithImpl<_$ItemDefinitionId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) item,
    required TResult Function(String id) townsfolk,
    required TResult Function(String id) quest,
    required TResult Function(String id) shop,
  }) {
    return item(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
  }) {
    return item?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemDefinitionId value) item,
    required TResult Function(TownsfolkDefinitionId value) townsfolk,
    required TResult Function(QuestDefinitionId value) quest,
    required TResult Function(ShopDefinitionId value) shop,
  }) {
    return item(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopDefinitionId value)? shop,
  }) {
    return item?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopDefinitionId value)? shop,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemDefinitionIdToJson(
      this,
    );
  }
}

abstract class ItemDefinitionId extends DefinitionId {
  const factory ItemDefinitionId(final String id) = _$ItemDefinitionId;

  const ItemDefinitionId._() : super._();

  factory ItemDefinitionId.fromJson(Map<String, dynamic> json) =
      _$ItemDefinitionId.fromJson;

  @override
  String get id;

  @override
  @JsonKey(ignore: true)
  _$$ItemDefinitionIdCopyWith<_$ItemDefinitionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TownsfolkDefinitionIdCopyWith<$Res>
    implements $DefinitionIdCopyWith<$Res> {
  factory _$$TownsfolkDefinitionIdCopyWith(_$TownsfolkDefinitionId value,
          $Res Function(_$TownsfolkDefinitionId) then) =
      __$$TownsfolkDefinitionIdCopyWithImpl<$Res>;

  @override
  $Res call({String id});
}

/// @nodoc
class __$$TownsfolkDefinitionIdCopyWithImpl<$Res>
    extends _$DefinitionIdCopyWithImpl<$Res>
    implements _$$TownsfolkDefinitionIdCopyWith<$Res> {
  __$$TownsfolkDefinitionIdCopyWithImpl(_$TownsfolkDefinitionId _value,
      $Res Function(_$TownsfolkDefinitionId) _then)
      : super(_value, (v) => _then(v as _$TownsfolkDefinitionId));

  @override
  _$TownsfolkDefinitionId get _value => super._value as _$TownsfolkDefinitionId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$TownsfolkDefinitionId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TownsfolkDefinitionId extends TownsfolkDefinitionId {
  const _$TownsfolkDefinitionId(this.id, {final String? $type})
      : $type = $type ?? 'townsfolk',
        super._();

  factory _$TownsfolkDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$$TownsfolkDefinitionIdFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TownsfolkDefinitionId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$TownsfolkDefinitionIdCopyWith<_$TownsfolkDefinitionId> get copyWith =>
      __$$TownsfolkDefinitionIdCopyWithImpl<_$TownsfolkDefinitionId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) item,
    required TResult Function(String id) townsfolk,
    required TResult Function(String id) quest,
    required TResult Function(String id) shop,
  }) {
    return townsfolk(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
  }) {
    return townsfolk?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    required TResult orElse(),
  }) {
    if (townsfolk != null) {
      return townsfolk(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemDefinitionId value) item,
    required TResult Function(TownsfolkDefinitionId value) townsfolk,
    required TResult Function(QuestDefinitionId value) quest,
    required TResult Function(ShopDefinitionId value) shop,
  }) {
    return townsfolk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopDefinitionId value)? shop,
  }) {
    return townsfolk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopDefinitionId value)? shop,
    required TResult orElse(),
  }) {
    if (townsfolk != null) {
      return townsfolk(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TownsfolkDefinitionIdToJson(
      this,
    );
  }
}

abstract class TownsfolkDefinitionId extends DefinitionId {
  const factory TownsfolkDefinitionId(final String id) =
      _$TownsfolkDefinitionId;

  const TownsfolkDefinitionId._() : super._();

  factory TownsfolkDefinitionId.fromJson(Map<String, dynamic> json) =
      _$TownsfolkDefinitionId.fromJson;

  @override
  String get id;

  @override
  @JsonKey(ignore: true)
  _$$TownsfolkDefinitionIdCopyWith<_$TownsfolkDefinitionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestDefinitionIdCopyWith<$Res>
    implements $DefinitionIdCopyWith<$Res> {
  factory _$$QuestDefinitionIdCopyWith(
          _$QuestDefinitionId value, $Res Function(_$QuestDefinitionId) then) =
      __$$QuestDefinitionIdCopyWithImpl<$Res>;

  @override
  $Res call({String id});
}

/// @nodoc
class __$$QuestDefinitionIdCopyWithImpl<$Res>
    extends _$DefinitionIdCopyWithImpl<$Res>
    implements _$$QuestDefinitionIdCopyWith<$Res> {
  __$$QuestDefinitionIdCopyWithImpl(
      _$QuestDefinitionId _value, $Res Function(_$QuestDefinitionId) _then)
      : super(_value, (v) => _then(v as _$QuestDefinitionId));

  @override
  _$QuestDefinitionId get _value => super._value as _$QuestDefinitionId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$QuestDefinitionId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestDefinitionId extends QuestDefinitionId {
  const _$QuestDefinitionId(this.id, {final String? $type})
      : $type = $type ?? 'quest',
        super._();

  factory _$QuestDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$$QuestDefinitionIdFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestDefinitionId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$QuestDefinitionIdCopyWith<_$QuestDefinitionId> get copyWith =>
      __$$QuestDefinitionIdCopyWithImpl<_$QuestDefinitionId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) item,
    required TResult Function(String id) townsfolk,
    required TResult Function(String id) quest,
    required TResult Function(String id) shop,
  }) {
    return quest(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
  }) {
    return quest?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    required TResult orElse(),
  }) {
    if (quest != null) {
      return quest(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemDefinitionId value) item,
    required TResult Function(TownsfolkDefinitionId value) townsfolk,
    required TResult Function(QuestDefinitionId value) quest,
    required TResult Function(ShopDefinitionId value) shop,
  }) {
    return quest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopDefinitionId value)? shop,
  }) {
    return quest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopDefinitionId value)? shop,
    required TResult orElse(),
  }) {
    if (quest != null) {
      return quest(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestDefinitionIdToJson(
      this,
    );
  }
}

abstract class QuestDefinitionId extends DefinitionId {
  const factory QuestDefinitionId(final String id) = _$QuestDefinitionId;

  const QuestDefinitionId._() : super._();

  factory QuestDefinitionId.fromJson(Map<String, dynamic> json) =
      _$QuestDefinitionId.fromJson;

  @override
  String get id;

  @override
  @JsonKey(ignore: true)
  _$$QuestDefinitionIdCopyWith<_$QuestDefinitionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShopDefinitionIdCopyWith<$Res>
    implements $DefinitionIdCopyWith<$Res> {
  factory _$$ShopDefinitionIdCopyWith(
          _$ShopDefinitionId value, $Res Function(_$ShopDefinitionId) then) =
      __$$ShopDefinitionIdCopyWithImpl<$Res>;

  @override
  $Res call({String id});
}

/// @nodoc
class __$$ShopDefinitionIdCopyWithImpl<$Res>
    extends _$DefinitionIdCopyWithImpl<$Res>
    implements _$$ShopDefinitionIdCopyWith<$Res> {
  __$$ShopDefinitionIdCopyWithImpl(
      _$ShopDefinitionId _value, $Res Function(_$ShopDefinitionId) _then)
      : super(_value, (v) => _then(v as _$ShopDefinitionId));

  @override
  _$ShopDefinitionId get _value => super._value as _$ShopDefinitionId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$ShopDefinitionId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopDefinitionId extends ShopDefinitionId {
  const _$ShopDefinitionId(this.id, {final String? $type})
      : $type = $type ?? 'shop',
        super._();

  factory _$ShopDefinitionId.fromJson(Map<String, dynamic> json) =>
      _$$ShopDefinitionIdFromJson(json);

  @override
  final String id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopDefinitionId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$ShopDefinitionIdCopyWith<_$ShopDefinitionId> get copyWith =>
      __$$ShopDefinitionIdCopyWithImpl<_$ShopDefinitionId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) item,
    required TResult Function(String id) townsfolk,
    required TResult Function(String id) quest,
    required TResult Function(String id) shop,
  }) {
    return shop(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
  }) {
    return shop?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? item,
    TResult Function(String id)? townsfolk,
    TResult Function(String id)? quest,
    TResult Function(String id)? shop,
    required TResult orElse(),
  }) {
    if (shop != null) {
      return shop(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ItemDefinitionId value) item,
    required TResult Function(TownsfolkDefinitionId value) townsfolk,
    required TResult Function(QuestDefinitionId value) quest,
    required TResult Function(ShopDefinitionId value) shop,
  }) {
    return shop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopDefinitionId value)? shop,
  }) {
    return shop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ItemDefinitionId value)? item,
    TResult Function(TownsfolkDefinitionId value)? townsfolk,
    TResult Function(QuestDefinitionId value)? quest,
    TResult Function(ShopDefinitionId value)? shop,
    required TResult orElse(),
  }) {
    if (shop != null) {
      return shop(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopDefinitionIdToJson(
      this,
    );
  }
}

abstract class ShopDefinitionId extends DefinitionId {
  const factory ShopDefinitionId(final String id) = _$ShopDefinitionId;

  const ShopDefinitionId._() : super._();

  factory ShopDefinitionId.fromJson(Map<String, dynamic> json) =
      _$ShopDefinitionId.fromJson;

  @override
  String get id;

  @override
  @JsonKey(ignore: true)
  _$$ShopDefinitionIdCopyWith<_$ShopDefinitionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Townsfolk {
  TownsfolkDefinitionId get id => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TownsfolkCopyWith<Townsfolk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TownsfolkCopyWith<$Res> {
  factory $TownsfolkCopyWith(Townsfolk value, $Res Function(Townsfolk) then) =
      _$TownsfolkCopyWithImpl<$Res>;

  $Res call({TownsfolkDefinitionId id, String name, String image});
}

/// @nodoc
class _$TownsfolkCopyWithImpl<$Res> implements $TownsfolkCopyWith<$Res> {
  _$TownsfolkCopyWithImpl(this._value, this._then);

  final Townsfolk _value;

  // ignore: unused_field
  final $Res Function(Townsfolk) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TownsfolkDefinitionId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TownsfolkCopyWith<$Res> implements $TownsfolkCopyWith<$Res> {
  factory _$$_TownsfolkCopyWith(
          _$_Townsfolk value, $Res Function(_$_Townsfolk) then) =
      __$$_TownsfolkCopyWithImpl<$Res>;

  @override
  $Res call({TownsfolkDefinitionId id, String name, String image});
}

/// @nodoc
class __$$_TownsfolkCopyWithImpl<$Res> extends _$TownsfolkCopyWithImpl<$Res>
    implements _$$_TownsfolkCopyWith<$Res> {
  __$$_TownsfolkCopyWithImpl(
      _$_Townsfolk _value, $Res Function(_$_Townsfolk) _then)
      : super(_value, (v) => _then(v as _$_Townsfolk));

  @override
  _$_Townsfolk get _value => super._value as _$_Townsfolk;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Townsfolk(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TownsfolkDefinitionId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Townsfolk implements _Townsfolk {
  const _$_Townsfolk(
      {required this.id, required this.name, required this.image});

  @override
  final TownsfolkDefinitionId id;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'Townsfolk(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Townsfolk &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_TownsfolkCopyWith<_$_Townsfolk> get copyWith =>
      __$$_TownsfolkCopyWithImpl<_$_Townsfolk>(this, _$identity);
}

abstract class _Townsfolk implements Townsfolk {
  const factory _Townsfolk(
      {required final TownsfolkDefinitionId id,
      required final String name,
      required final String image}) = _$_Townsfolk;

  @override
  TownsfolkDefinitionId get id;

  @override
  String get name;

  @override
  String get image;

  @override
  @JsonKey(ignore: true)
  _$$_TownsfolkCopyWith<_$_Townsfolk> get copyWith =>
      throw _privateConstructorUsedError;
}
