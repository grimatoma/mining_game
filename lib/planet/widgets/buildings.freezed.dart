// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'buildings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoodadId {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoodadIdCopyWith<DoodadId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoodadIdCopyWith<$Res> {
  factory $DoodadIdCopyWith(DoodadId value, $Res Function(DoodadId) then) =
      _$DoodadIdCopyWithImpl<$Res>;

  $Res call({String id});
}

/// @nodoc
class _$DoodadIdCopyWithImpl<$Res> implements $DoodadIdCopyWith<$Res> {
  _$DoodadIdCopyWithImpl(this._value, this._then);

  final DoodadId _value;

  // ignore: unused_field
  final $Res Function(DoodadId) _then;

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
abstract class _$$_DoodadIdCopyWith<$Res> implements $DoodadIdCopyWith<$Res> {
  factory _$$_DoodadIdCopyWith(
          _$_DoodadId value, $Res Function(_$_DoodadId) then) =
      __$$_DoodadIdCopyWithImpl<$Res>;

  @override
  $Res call({String id});
}

/// @nodoc
class __$$_DoodadIdCopyWithImpl<$Res> extends _$DoodadIdCopyWithImpl<$Res>
    implements _$$_DoodadIdCopyWith<$Res> {
  __$$_DoodadIdCopyWithImpl(
      _$_DoodadId _value, $Res Function(_$_DoodadId) _then)
      : super(_value, (v) => _then(v as _$_DoodadId));

  @override
  _$_DoodadId get _value => super._value as _$_DoodadId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_DoodadId(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DoodadId extends _DoodadId {
  const _$_DoodadId(this.id) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'DoodadId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DoodadId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_DoodadIdCopyWith<_$_DoodadId> get copyWith =>
      __$$_DoodadIdCopyWithImpl<_$_DoodadId>(this, _$identity);
}

abstract class _DoodadId extends DoodadId {
  const factory _DoodadId(final String id) = _$_DoodadId;

  const _DoodadId._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$_DoodadIdCopyWith<_$_DoodadId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Doodad {
  DoodadId get id => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  String get description => throw _privateConstructorUsedError;

  String get imageAsset => throw _privateConstructorUsedError;

  String get storeImageAsset => throw _privateConstructorUsedError;

  Set<TileType> get supportedLocations => throw _privateConstructorUsedError;

  int get ticksRequired => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        tree,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        treeCutterHut,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        smelter,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        smelter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        smelter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Digger value) digger,
    required TResult Function(Tree value) tree,
    required TResult Function(TreeCutterHut value) treeCutterHut,
    required TResult Function(Smelter value) smelter,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Digger value)? digger,
    TResult Function(Tree value)? tree,
    TResult Function(TreeCutterHut value)? treeCutterHut,
    TResult Function(Smelter value)? smelter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Digger value)? digger,
    TResult Function(Tree value)? tree,
    TResult Function(TreeCutterHut value)? treeCutterHut,
    TResult Function(Smelter value)? smelter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoodadCopyWith<Doodad> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoodadCopyWith<$Res> {
  factory $DoodadCopyWith(Doodad value, $Res Function(Doodad) then) =
      _$DoodadCopyWithImpl<$Res>;

  $Res call(
      {DoodadId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      Set<TileType> supportedLocations,
      int ticksRequired});

  $DoodadIdCopyWith<$Res> get id;
}

/// @nodoc
class _$DoodadCopyWithImpl<$Res> implements $DoodadCopyWith<$Res> {
  _$DoodadCopyWithImpl(this._value, this._then);

  final Doodad _value;
  // ignore: unused_field
  final $Res Function(Doodad) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAsset = freezed,
    Object? storeImageAsset = freezed,
    Object? supportedLocations = freezed,
    Object? ticksRequired = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoodadId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: imageAsset == freezed
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      storeImageAsset: storeImageAsset == freezed
          ? _value.storeImageAsset
          : storeImageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      supportedLocations: supportedLocations == freezed
          ? _value.supportedLocations
          : supportedLocations // ignore: cast_nullable_to_non_nullable
              as Set<TileType>,
      ticksRequired: ticksRequired == freezed
          ? _value.ticksRequired
          : ticksRequired // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $DoodadIdCopyWith<$Res> get id {
    return $DoodadIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class _$$DiggerCopyWith<$Res> implements $DoodadCopyWith<$Res> {
  factory _$$DiggerCopyWith(_$Digger value, $Res Function(_$Digger) then) =
      __$$DiggerCopyWithImpl<$Res>;

  @override
  $Res call(
      {DoodadId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      Set<TileType> supportedLocations,
      int ticksRequired});

  @override
  $DoodadIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$DiggerCopyWithImpl<$Res> extends _$DoodadCopyWithImpl<$Res>
    implements _$$DiggerCopyWith<$Res> {
  __$$DiggerCopyWithImpl(_$Digger _value, $Res Function(_$Digger) _then)
      : super(_value, (v) => _then(v as _$Digger));

  @override
  _$Digger get _value => super._value as _$Digger;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAsset = freezed,
    Object? storeImageAsset = freezed,
    Object? supportedLocations = freezed,
    Object? ticksRequired = freezed,
  }) {
    return _then(_$Digger(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoodadId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: imageAsset == freezed
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      storeImageAsset: storeImageAsset == freezed
          ? _value.storeImageAsset
          : storeImageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      supportedLocations: supportedLocations == freezed
          ? _value._supportedLocations
          : supportedLocations // ignore: cast_nullable_to_non_nullable
              as Set<TileType>,
      ticksRequired: ticksRequired == freezed
          ? _value.ticksRequired
          : ticksRequired // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Digger extends Digger {
  const _$Digger(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageAsset,
      required this.storeImageAsset,
      required final Set<TileType> supportedLocations,
      required this.ticksRequired})
      : _supportedLocations = supportedLocations,
        super._();

  @override
  final DoodadId id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageAsset;
  @override
  final String storeImageAsset;
  final Set<TileType> _supportedLocations;

  @override
  Set<TileType> get supportedLocations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_supportedLocations);
  }

  @override
  final int ticksRequired;

  @override
  String toString() {
    return 'Doodad.digger(id: $id, name: $name, description: $description, imageAsset: $imageAsset, storeImageAsset: $storeImageAsset, supportedLocations: $supportedLocations, ticksRequired: $ticksRequired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Digger &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.imageAsset, imageAsset) &&
            const DeepCollectionEquality()
                .equals(other.storeImageAsset, storeImageAsset) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocations, _supportedLocations) &&
            const DeepCollectionEquality()
                .equals(other.ticksRequired, ticksRequired));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageAsset),
      const DeepCollectionEquality().hash(storeImageAsset),
      const DeepCollectionEquality().hash(_supportedLocations),
      const DeepCollectionEquality().hash(ticksRequired));

  @JsonKey(ignore: true)
  @override
  _$$DiggerCopyWith<_$Digger> get copyWith =>
      __$$DiggerCopyWithImpl<_$Digger>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        tree,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        treeCutterHut,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        smelter,
  }) {
    return digger(id, name, description, imageAsset, storeImageAsset,
        supportedLocations, ticksRequired);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        smelter,
  }) {
    return digger?.call(id, name, description, imageAsset, storeImageAsset,
        supportedLocations, ticksRequired);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        smelter,
    required TResult orElse(),
  }) {
    if (digger != null) {
      return digger(id, name, description, imageAsset, storeImageAsset,
          supportedLocations, ticksRequired);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Digger value) digger,
    required TResult Function(Tree value) tree,
    required TResult Function(TreeCutterHut value) treeCutterHut,
    required TResult Function(Smelter value) smelter,
  }) {
    return digger(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Digger value)? digger,
    TResult Function(Tree value)? tree,
    TResult Function(TreeCutterHut value)? treeCutterHut,
    TResult Function(Smelter value)? smelter,
  }) {
    return digger?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Digger value)? digger,
    TResult Function(Tree value)? tree,
    TResult Function(TreeCutterHut value)? treeCutterHut,
    TResult Function(Smelter value)? smelter,
    required TResult orElse(),
  }) {
    if (digger != null) {
      return digger(this);
    }
    return orElse();
  }
}

abstract class Digger extends Doodad implements TickableDoodadDefinition {
  const factory Digger(
      {required final DoodadId id,
      required final String name,
      required final String description,
      required final String imageAsset,
      required final String storeImageAsset,
      required final Set<TileType> supportedLocations,
      required final int ticksRequired}) = _$Digger;

  const Digger._() : super._();

  @override
  DoodadId get id => throw _privateConstructorUsedError;

  @override
  String get name => throw _privateConstructorUsedError;

  @override
  String get description => throw _privateConstructorUsedError;

  @override
  String get imageAsset => throw _privateConstructorUsedError;

  @override
  String get storeImageAsset => throw _privateConstructorUsedError;

  @override
  Set<TileType> get supportedLocations => throw _privateConstructorUsedError;

  @override
  int get ticksRequired => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DiggerCopyWith<_$Digger> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreeCopyWith<$Res> implements $DoodadCopyWith<$Res> {
  factory _$$TreeCopyWith(_$Tree value, $Res Function(_$Tree) then) =
      __$$TreeCopyWithImpl<$Res>;

  @override
  $Res call(
      {DoodadId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      Set<TileType> supportedLocations,
      int ticksRequired});

  @override
  $DoodadIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$TreeCopyWithImpl<$Res> extends _$DoodadCopyWithImpl<$Res>
    implements _$$TreeCopyWith<$Res> {
  __$$TreeCopyWithImpl(_$Tree _value, $Res Function(_$Tree) _then)
      : super(_value, (v) => _then(v as _$Tree));

  @override
  _$Tree get _value => super._value as _$Tree;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAsset = freezed,
    Object? storeImageAsset = freezed,
    Object? supportedLocations = freezed,
    Object? ticksRequired = freezed,
  }) {
    return _then(_$Tree(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoodadId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: imageAsset == freezed
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      storeImageAsset: storeImageAsset == freezed
          ? _value.storeImageAsset
          : storeImageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      supportedLocations: supportedLocations == freezed
          ? _value._supportedLocations
          : supportedLocations // ignore: cast_nullable_to_non_nullable
              as Set<TileType>,
      ticksRequired: ticksRequired == freezed
          ? _value.ticksRequired
          : ticksRequired // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Tree extends Tree {
  const _$Tree(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageAsset,
      required this.storeImageAsset,
      required final Set<TileType> supportedLocations,
      required this.ticksRequired})
      : _supportedLocations = supportedLocations,
        super._();

  @override
  final DoodadId id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageAsset;
  @override
  final String storeImageAsset;
  final Set<TileType> _supportedLocations;

  @override
  Set<TileType> get supportedLocations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_supportedLocations);
  }

  @override
  final int ticksRequired;

  @override
  String toString() {
    return 'Doodad.tree(id: $id, name: $name, description: $description, imageAsset: $imageAsset, storeImageAsset: $storeImageAsset, supportedLocations: $supportedLocations, ticksRequired: $ticksRequired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Tree &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.imageAsset, imageAsset) &&
            const DeepCollectionEquality()
                .equals(other.storeImageAsset, storeImageAsset) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocations, _supportedLocations) &&
            const DeepCollectionEquality()
                .equals(other.ticksRequired, ticksRequired));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageAsset),
      const DeepCollectionEquality().hash(storeImageAsset),
      const DeepCollectionEquality().hash(_supportedLocations),
      const DeepCollectionEquality().hash(ticksRequired));

  @JsonKey(ignore: true)
  @override
  _$$TreeCopyWith<_$Tree> get copyWith =>
      __$$TreeCopyWithImpl<_$Tree>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        tree,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        treeCutterHut,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        smelter,
  }) {
    return tree(id, name, description, imageAsset, storeImageAsset,
        supportedLocations, ticksRequired);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        smelter,
  }) {
    return tree?.call(id, name, description, imageAsset, storeImageAsset,
        supportedLocations, ticksRequired);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        smelter,
    required TResult orElse(),
  }) {
    if (tree != null) {
      return tree(id, name, description, imageAsset, storeImageAsset,
          supportedLocations, ticksRequired);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Digger value) digger,
    required TResult Function(Tree value) tree,
    required TResult Function(TreeCutterHut value) treeCutterHut,
    required TResult Function(Smelter value) smelter,
  }) {
    return tree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Digger value)? digger,
    TResult Function(Tree value)? tree,
    TResult Function(TreeCutterHut value)? treeCutterHut,
    TResult Function(Smelter value)? smelter,
  }) {
    return tree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Digger value)? digger,
    TResult Function(Tree value)? tree,
    TResult Function(TreeCutterHut value)? treeCutterHut,
    TResult Function(Smelter value)? smelter,
    required TResult orElse(),
  }) {
    if (tree != null) {
      return tree(this);
    }
    return orElse();
  }
}

abstract class Tree extends Doodad implements TickableDoodadDefinition {
  const factory Tree(
      {required final DoodadId id,
      required final String name,
      required final String description,
      required final String imageAsset,
      required final String storeImageAsset,
      required final Set<TileType> supportedLocations,
      required final int ticksRequired}) = _$Tree;

  const Tree._() : super._();

  @override
  DoodadId get id => throw _privateConstructorUsedError;

  @override
  String get name => throw _privateConstructorUsedError;

  @override
  String get description => throw _privateConstructorUsedError;

  @override
  String get imageAsset => throw _privateConstructorUsedError;

  @override
  String get storeImageAsset => throw _privateConstructorUsedError;

  @override
  Set<TileType> get supportedLocations => throw _privateConstructorUsedError;

  @override
  int get ticksRequired => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$TreeCopyWith<_$Tree> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreeCutterHutCopyWith<$Res> implements $DoodadCopyWith<$Res> {
  factory _$$TreeCutterHutCopyWith(
          _$TreeCutterHut value, $Res Function(_$TreeCutterHut) then) =
      __$$TreeCutterHutCopyWithImpl<$Res>;

  @override
  $Res call(
      {DoodadId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      Set<TileType> supportedLocations,
      int ticksRequired});

  @override
  $DoodadIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$TreeCutterHutCopyWithImpl<$Res> extends _$DoodadCopyWithImpl<$Res>
    implements _$$TreeCutterHutCopyWith<$Res> {
  __$$TreeCutterHutCopyWithImpl(
      _$TreeCutterHut _value, $Res Function(_$TreeCutterHut) _then)
      : super(_value, (v) => _then(v as _$TreeCutterHut));

  @override
  _$TreeCutterHut get _value => super._value as _$TreeCutterHut;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAsset = freezed,
    Object? storeImageAsset = freezed,
    Object? supportedLocations = freezed,
    Object? ticksRequired = freezed,
  }) {
    return _then(_$TreeCutterHut(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoodadId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: imageAsset == freezed
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      storeImageAsset: storeImageAsset == freezed
          ? _value.storeImageAsset
          : storeImageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      supportedLocations: supportedLocations == freezed
          ? _value._supportedLocations
          : supportedLocations // ignore: cast_nullable_to_non_nullable
              as Set<TileType>,
      ticksRequired: ticksRequired == freezed
          ? _value.ticksRequired
          : ticksRequired // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TreeCutterHut extends TreeCutterHut {
  const _$TreeCutterHut(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageAsset,
      required this.storeImageAsset,
      required final Set<TileType> supportedLocations,
      required this.ticksRequired})
      : _supportedLocations = supportedLocations,
        super._();

  @override
  final DoodadId id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageAsset;
  @override
  final String storeImageAsset;
  final Set<TileType> _supportedLocations;

  @override
  Set<TileType> get supportedLocations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_supportedLocations);
  }

  @override
  final int ticksRequired;

  @override
  String toString() {
    return 'Doodad.treeCutterHut(id: $id, name: $name, description: $description, imageAsset: $imageAsset, storeImageAsset: $storeImageAsset, supportedLocations: $supportedLocations, ticksRequired: $ticksRequired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeCutterHut &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.imageAsset, imageAsset) &&
            const DeepCollectionEquality()
                .equals(other.storeImageAsset, storeImageAsset) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocations, _supportedLocations) &&
            const DeepCollectionEquality()
                .equals(other.ticksRequired, ticksRequired));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageAsset),
      const DeepCollectionEquality().hash(storeImageAsset),
      const DeepCollectionEquality().hash(_supportedLocations),
      const DeepCollectionEquality().hash(ticksRequired));

  @JsonKey(ignore: true)
  @override
  _$$TreeCutterHutCopyWith<_$TreeCutterHut> get copyWith =>
      __$$TreeCutterHutCopyWithImpl<_$TreeCutterHut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        tree,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        treeCutterHut,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        smelter,
  }) {
    return treeCutterHut(id, name, description, imageAsset, storeImageAsset,
        supportedLocations, ticksRequired);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        smelter,
  }) {
    return treeCutterHut?.call(id, name, description, imageAsset,
        storeImageAsset, supportedLocations, ticksRequired);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        smelter,
    required TResult orElse(),
  }) {
    if (treeCutterHut != null) {
      return treeCutterHut(id, name, description, imageAsset, storeImageAsset,
          supportedLocations, ticksRequired);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Digger value) digger,
    required TResult Function(Tree value) tree,
    required TResult Function(TreeCutterHut value) treeCutterHut,
    required TResult Function(Smelter value) smelter,
  }) {
    return treeCutterHut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Digger value)? digger,
    TResult Function(Tree value)? tree,
    TResult Function(TreeCutterHut value)? treeCutterHut,
    TResult Function(Smelter value)? smelter,
  }) {
    return treeCutterHut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Digger value)? digger,
    TResult Function(Tree value)? tree,
    TResult Function(TreeCutterHut value)? treeCutterHut,
    TResult Function(Smelter value)? smelter,
    required TResult orElse(),
  }) {
    if (treeCutterHut != null) {
      return treeCutterHut(this);
    }
    return orElse();
  }
}

abstract class TreeCutterHut extends Doodad
    implements TickableDoodadDefinition {
  const factory TreeCutterHut(
      {required final DoodadId id,
      required final String name,
      required final String description,
      required final String imageAsset,
      required final String storeImageAsset,
      required final Set<TileType> supportedLocations,
      required final int ticksRequired}) = _$TreeCutterHut;

  const TreeCutterHut._() : super._();

  @override
  DoodadId get id => throw _privateConstructorUsedError;

  @override
  String get name => throw _privateConstructorUsedError;

  @override
  String get description => throw _privateConstructorUsedError;

  @override
  String get imageAsset => throw _privateConstructorUsedError;

  @override
  String get storeImageAsset => throw _privateConstructorUsedError;

  @override
  Set<TileType> get supportedLocations => throw _privateConstructorUsedError;

  @override
  int get ticksRequired => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$TreeCutterHutCopyWith<_$TreeCutterHut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SmelterCopyWith<$Res> implements $DoodadCopyWith<$Res> {
  factory _$$SmelterCopyWith(_$Smelter value, $Res Function(_$Smelter) then) =
      __$$SmelterCopyWithImpl<$Res>;

  @override
  $Res call(
      {DoodadId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      Set<TileType> supportedLocations,
      int ticksRequired});

  @override
  $DoodadIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$SmelterCopyWithImpl<$Res> extends _$DoodadCopyWithImpl<$Res>
    implements _$$SmelterCopyWith<$Res> {
  __$$SmelterCopyWithImpl(_$Smelter _value, $Res Function(_$Smelter) _then)
      : super(_value, (v) => _then(v as _$Smelter));

  @override
  _$Smelter get _value => super._value as _$Smelter;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAsset = freezed,
    Object? storeImageAsset = freezed,
    Object? supportedLocations = freezed,
    Object? ticksRequired = freezed,
  }) {
    return _then(_$Smelter(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoodadId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: imageAsset == freezed
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      storeImageAsset: storeImageAsset == freezed
          ? _value.storeImageAsset
          : storeImageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      supportedLocations: supportedLocations == freezed
          ? _value._supportedLocations
          : supportedLocations // ignore: cast_nullable_to_non_nullable
              as Set<TileType>,
      ticksRequired: ticksRequired == freezed
          ? _value.ticksRequired
          : ticksRequired // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Smelter extends Smelter {
  const _$Smelter(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageAsset,
      required this.storeImageAsset,
      required final Set<TileType> supportedLocations,
      required this.ticksRequired})
      : _supportedLocations = supportedLocations,
        super._();

  @override
  final DoodadId id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageAsset;
  @override
  final String storeImageAsset;
  final Set<TileType> _supportedLocations;

  @override
  Set<TileType> get supportedLocations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_supportedLocations);
  }

  @override
  final int ticksRequired;

  @override
  String toString() {
    return 'Doodad.smelter(id: $id, name: $name, description: $description, imageAsset: $imageAsset, storeImageAsset: $storeImageAsset, supportedLocations: $supportedLocations, ticksRequired: $ticksRequired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Smelter &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.imageAsset, imageAsset) &&
            const DeepCollectionEquality()
                .equals(other.storeImageAsset, storeImageAsset) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocations, _supportedLocations) &&
            const DeepCollectionEquality()
                .equals(other.ticksRequired, ticksRequired));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageAsset),
      const DeepCollectionEquality().hash(storeImageAsset),
      const DeepCollectionEquality().hash(_supportedLocations),
      const DeepCollectionEquality().hash(ticksRequired));

  @JsonKey(ignore: true)
  @override
  _$$SmelterCopyWith<_$Smelter> get copyWith =>
      __$$SmelterCopyWithImpl<_$Smelter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        tree,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        treeCutterHut,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)
        smelter,
  }) {
    return smelter(id, name, description, imageAsset, storeImageAsset,
        supportedLocations, ticksRequired);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        smelter,
  }) {
    return smelter?.call(id, name, description, imageAsset, storeImageAsset,
        supportedLocations, ticksRequired);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired)?
        smelter,
    required TResult orElse(),
  }) {
    if (smelter != null) {
      return smelter(id, name, description, imageAsset, storeImageAsset,
          supportedLocations, ticksRequired);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Digger value) digger,
    required TResult Function(Tree value) tree,
    required TResult Function(TreeCutterHut value) treeCutterHut,
    required TResult Function(Smelter value) smelter,
  }) {
    return smelter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Digger value)? digger,
    TResult Function(Tree value)? tree,
    TResult Function(TreeCutterHut value)? treeCutterHut,
    TResult Function(Smelter value)? smelter,
  }) {
    return smelter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Digger value)? digger,
    TResult Function(Tree value)? tree,
    TResult Function(TreeCutterHut value)? treeCutterHut,
    TResult Function(Smelter value)? smelter,
    required TResult orElse(),
  }) {
    if (smelter != null) {
      return smelter(this);
    }
    return orElse();
  }
}

abstract class Smelter extends Doodad implements TickableDoodadDefinition {
  const factory Smelter(
      {required final DoodadId id,
      required final String name,
      required final String description,
      required final String imageAsset,
      required final String storeImageAsset,
      required final Set<TileType> supportedLocations,
      required final int ticksRequired}) = _$Smelter;

  const Smelter._() : super._();

  @override
  DoodadId get id => throw _privateConstructorUsedError;

  @override
  String get name => throw _privateConstructorUsedError;

  @override
  String get description => throw _privateConstructorUsedError;

  @override
  String get imageAsset => throw _privateConstructorUsedError;

  @override
  String get storeImageAsset => throw _privateConstructorUsedError;

  @override
  Set<TileType> get supportedLocations => throw _privateConstructorUsedError;

  @override
  int get ticksRequired => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SmelterCopyWith<_$Smelter> get copyWith =>
      throw _privateConstructorUsedError;
}
