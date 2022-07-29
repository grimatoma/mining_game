// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'doodad_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoodadDefinition _$DoodadDefinitionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'digger':
      return DiggerDoodadDefinition.fromJson(json);
    case 'tree':
      return TreeDoodadDefinition.fromJson(json);
    case 'treeCutterHut':
      return TreeCutterHutDoodadDefinition.fromJson(json);
    case 'materialProcessor':
      return MaterialProcessorDoodadDefinition.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DoodadDefinition',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DoodadDefinition {
  DoodadId get id => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  String get description => throw _privateConstructorUsedError;

  String get imageAsset => throw _privateConstructorUsedError;

  String get storeImageAsset => throw _privateConstructorUsedError;

  Set<TileType> get supportedLocations => throw _privateConstructorUsedError;

  int get ticksRequired => throw _privateConstructorUsedError;

  String get ticksName => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)
        tree,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)
        treeCutterHut,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)
        materialProcessor,
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
            int ticksRequired,
            String ticksName)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
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
            int ticksRequired,
            String ticksName)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiggerDoodadDefinition value) digger,
    required TResult Function(TreeDoodadDefinition value) tree,
    required TResult Function(TreeCutterHutDoodadDefinition value)
        treeCutterHut,
    required TResult Function(MaterialProcessorDoodadDefinition value)
        materialProcessor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(TreeDoodadDefinition value)? tree,
    TResult Function(TreeCutterHutDoodadDefinition value)? treeCutterHut,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(TreeDoodadDefinition value)? tree,
    TResult Function(TreeCutterHutDoodadDefinition value)? treeCutterHut,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoodadDefinitionCopyWith<DoodadDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoodadDefinitionCopyWith<$Res> {
  factory $DoodadDefinitionCopyWith(
          DoodadDefinition value, $Res Function(DoodadDefinition) then) =
      _$DoodadDefinitionCopyWithImpl<$Res>;

  $Res call(
      {DoodadId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      Set<TileType> supportedLocations,
      int ticksRequired,
      String ticksName});

  $DoodadIdCopyWith<$Res> get id;
}

/// @nodoc
class _$DoodadDefinitionCopyWithImpl<$Res>
    implements $DoodadDefinitionCopyWith<$Res> {
  _$DoodadDefinitionCopyWithImpl(this._value, this._then);

  final DoodadDefinition _value;

  // ignore: unused_field
  final $Res Function(DoodadDefinition) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAsset = freezed,
    Object? storeImageAsset = freezed,
    Object? supportedLocations = freezed,
    Object? ticksRequired = freezed,
    Object? ticksName = freezed,
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
      ticksName: ticksName == freezed
          ? _value.ticksName
          : ticksName // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$DiggerDoodadDefinitionCopyWith<$Res>
    implements $DoodadDefinitionCopyWith<$Res> {
  factory _$$DiggerDoodadDefinitionCopyWith(_$DiggerDoodadDefinition value,
          $Res Function(_$DiggerDoodadDefinition) then) =
      __$$DiggerDoodadDefinitionCopyWithImpl<$Res>;

  @override
  $Res call(
      {DoodadId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      Set<TileType> supportedLocations,
      int ticksRequired,
      String ticksName});

  @override
  $DoodadIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$DiggerDoodadDefinitionCopyWithImpl<$Res>
    extends _$DoodadDefinitionCopyWithImpl<$Res>
    implements _$$DiggerDoodadDefinitionCopyWith<$Res> {
  __$$DiggerDoodadDefinitionCopyWithImpl(_$DiggerDoodadDefinition _value,
      $Res Function(_$DiggerDoodadDefinition) _then)
      : super(_value, (v) => _then(v as _$DiggerDoodadDefinition));

  @override
  _$DiggerDoodadDefinition get _value =>
      super._value as _$DiggerDoodadDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAsset = freezed,
    Object? storeImageAsset = freezed,
    Object? supportedLocations = freezed,
    Object? ticksRequired = freezed,
    Object? ticksName = freezed,
  }) {
    return _then(_$DiggerDoodadDefinition(
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
      ticksName: ticksName == freezed
          ? _value.ticksName
          : ticksName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiggerDoodadDefinition extends DiggerDoodadDefinition {
  const _$DiggerDoodadDefinition(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageAsset,
      required this.storeImageAsset,
      required final Set<TileType> supportedLocations,
      required this.ticksRequired,
      required this.ticksName,
      final String? $type})
      : _supportedLocations = supportedLocations,
        $type = $type ?? 'digger',
        super._();

  factory _$DiggerDoodadDefinition.fromJson(Map<String, dynamic> json) =>
      _$$DiggerDoodadDefinitionFromJson(json);

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
  final String ticksName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DoodadDefinition.digger(id: $id, name: $name, description: $description, imageAsset: $imageAsset, storeImageAsset: $storeImageAsset, supportedLocations: $supportedLocations, ticksRequired: $ticksRequired, ticksName: $ticksName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiggerDoodadDefinition &&
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
                .equals(other.ticksRequired, ticksRequired) &&
            const DeepCollectionEquality().equals(other.ticksName, ticksName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageAsset),
      const DeepCollectionEquality().hash(storeImageAsset),
      const DeepCollectionEquality().hash(_supportedLocations),
      const DeepCollectionEquality().hash(ticksRequired),
      const DeepCollectionEquality().hash(ticksName));

  @JsonKey(ignore: true)
  @override
  _$$DiggerDoodadDefinitionCopyWith<_$DiggerDoodadDefinition> get copyWith =>
      __$$DiggerDoodadDefinitionCopyWithImpl<_$DiggerDoodadDefinition>(
          this, _$identity);

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
            int ticksRequired,
            String ticksName)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)
        tree,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)
        treeCutterHut,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)
        materialProcessor,
  }) {
    return digger(id, name, description, imageAsset, storeImageAsset,
        supportedLocations, ticksRequired, ticksName);
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
            int ticksRequired,
            String ticksName)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
  }) {
    return digger?.call(id, name, description, imageAsset, storeImageAsset,
        supportedLocations, ticksRequired, ticksName);
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
            int ticksRequired,
            String ticksName)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    required TResult orElse(),
  }) {
    if (digger != null) {
      return digger(id, name, description, imageAsset, storeImageAsset,
          supportedLocations, ticksRequired, ticksName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiggerDoodadDefinition value) digger,
    required TResult Function(TreeDoodadDefinition value) tree,
    required TResult Function(TreeCutterHutDoodadDefinition value)
        treeCutterHut,
    required TResult Function(MaterialProcessorDoodadDefinition value)
        materialProcessor,
  }) {
    return digger(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(TreeDoodadDefinition value)? tree,
    TResult Function(TreeCutterHutDoodadDefinition value)? treeCutterHut,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
  }) {
    return digger?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(TreeDoodadDefinition value)? tree,
    TResult Function(TreeCutterHutDoodadDefinition value)? treeCutterHut,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    required TResult orElse(),
  }) {
    if (digger != null) {
      return digger(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DiggerDoodadDefinitionToJson(this);
  }
}

abstract class DiggerDoodadDefinition extends DoodadDefinition
    implements TickableDoodadInterface {
  const factory DiggerDoodadDefinition(
      {required final DoodadId id,
      required final String name,
      required final String description,
      required final String imageAsset,
      required final String storeImageAsset,
      required final Set<TileType> supportedLocations,
      required final int ticksRequired,
      required final String ticksName}) = _$DiggerDoodadDefinition;

  const DiggerDoodadDefinition._() : super._();

  factory DiggerDoodadDefinition.fromJson(Map<String, dynamic> json) =
      _$DiggerDoodadDefinition.fromJson;

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
  String get ticksName => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$DiggerDoodadDefinitionCopyWith<_$DiggerDoodadDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreeDoodadDefinitionCopyWith<$Res>
    implements $DoodadDefinitionCopyWith<$Res> {
  factory _$$TreeDoodadDefinitionCopyWith(_$TreeDoodadDefinition value,
          $Res Function(_$TreeDoodadDefinition) then) =
      __$$TreeDoodadDefinitionCopyWithImpl<$Res>;

  @override
  $Res call(
      {DoodadId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      Set<TileType> supportedLocations,
      int ticksRequired,
      String ticksName});

  @override
  $DoodadIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$TreeDoodadDefinitionCopyWithImpl<$Res>
    extends _$DoodadDefinitionCopyWithImpl<$Res>
    implements _$$TreeDoodadDefinitionCopyWith<$Res> {
  __$$TreeDoodadDefinitionCopyWithImpl(_$TreeDoodadDefinition _value,
      $Res Function(_$TreeDoodadDefinition) _then)
      : super(_value, (v) => _then(v as _$TreeDoodadDefinition));

  @override
  _$TreeDoodadDefinition get _value => super._value as _$TreeDoodadDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAsset = freezed,
    Object? storeImageAsset = freezed,
    Object? supportedLocations = freezed,
    Object? ticksRequired = freezed,
    Object? ticksName = freezed,
  }) {
    return _then(_$TreeDoodadDefinition(
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
      ticksName: ticksName == freezed
          ? _value.ticksName
          : ticksName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TreeDoodadDefinition extends TreeDoodadDefinition {
  const _$TreeDoodadDefinition(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageAsset,
      required this.storeImageAsset,
      required final Set<TileType> supportedLocations,
      required this.ticksRequired,
      required this.ticksName,
      final String? $type})
      : _supportedLocations = supportedLocations,
        $type = $type ?? 'tree',
        super._();

  factory _$TreeDoodadDefinition.fromJson(Map<String, dynamic> json) =>
      _$$TreeDoodadDefinitionFromJson(json);

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
  final String ticksName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DoodadDefinition.tree(id: $id, name: $name, description: $description, imageAsset: $imageAsset, storeImageAsset: $storeImageAsset, supportedLocations: $supportedLocations, ticksRequired: $ticksRequired, ticksName: $ticksName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeDoodadDefinition &&
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
                .equals(other.ticksRequired, ticksRequired) &&
            const DeepCollectionEquality().equals(other.ticksName, ticksName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageAsset),
      const DeepCollectionEquality().hash(storeImageAsset),
      const DeepCollectionEquality().hash(_supportedLocations),
      const DeepCollectionEquality().hash(ticksRequired),
      const DeepCollectionEquality().hash(ticksName));

  @JsonKey(ignore: true)
  @override
  _$$TreeDoodadDefinitionCopyWith<_$TreeDoodadDefinition> get copyWith =>
      __$$TreeDoodadDefinitionCopyWithImpl<_$TreeDoodadDefinition>(
          this, _$identity);

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
            int ticksRequired,
            String ticksName)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)
        tree,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)
        treeCutterHut,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)
        materialProcessor,
  }) {
    return tree(id, name, description, imageAsset, storeImageAsset,
        supportedLocations, ticksRequired, ticksName);
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
            int ticksRequired,
            String ticksName)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
  }) {
    return tree?.call(id, name, description, imageAsset, storeImageAsset,
        supportedLocations, ticksRequired, ticksName);
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
            int ticksRequired,
            String ticksName)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    required TResult orElse(),
  }) {
    if (tree != null) {
      return tree(id, name, description, imageAsset, storeImageAsset,
          supportedLocations, ticksRequired, ticksName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiggerDoodadDefinition value) digger,
    required TResult Function(TreeDoodadDefinition value) tree,
    required TResult Function(TreeCutterHutDoodadDefinition value)
        treeCutterHut,
    required TResult Function(MaterialProcessorDoodadDefinition value)
        materialProcessor,
  }) {
    return tree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(TreeDoodadDefinition value)? tree,
    TResult Function(TreeCutterHutDoodadDefinition value)? treeCutterHut,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
  }) {
    return tree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(TreeDoodadDefinition value)? tree,
    TResult Function(TreeCutterHutDoodadDefinition value)? treeCutterHut,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    required TResult orElse(),
  }) {
    if (tree != null) {
      return tree(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TreeDoodadDefinitionToJson(this);
  }
}

abstract class TreeDoodadDefinition extends DoodadDefinition
    implements TickableDoodadInterface {
  const factory TreeDoodadDefinition(
      {required final DoodadId id,
      required final String name,
      required final String description,
      required final String imageAsset,
      required final String storeImageAsset,
      required final Set<TileType> supportedLocations,
      required final int ticksRequired,
      required final String ticksName}) = _$TreeDoodadDefinition;

  const TreeDoodadDefinition._() : super._();

  factory TreeDoodadDefinition.fromJson(Map<String, dynamic> json) =
      _$TreeDoodadDefinition.fromJson;

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
  String get ticksName => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$TreeDoodadDefinitionCopyWith<_$TreeDoodadDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreeCutterHutDoodadDefinitionCopyWith<$Res>
    implements $DoodadDefinitionCopyWith<$Res> {
  factory _$$TreeCutterHutDoodadDefinitionCopyWith(
          _$TreeCutterHutDoodadDefinition value,
          $Res Function(_$TreeCutterHutDoodadDefinition) then) =
      __$$TreeCutterHutDoodadDefinitionCopyWithImpl<$Res>;

  @override
  $Res call(
      {DoodadId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      Set<TileType> supportedLocations,
      int ticksRequired,
      String ticksName});

  @override
  $DoodadIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$TreeCutterHutDoodadDefinitionCopyWithImpl<$Res>
    extends _$DoodadDefinitionCopyWithImpl<$Res>
    implements _$$TreeCutterHutDoodadDefinitionCopyWith<$Res> {
  __$$TreeCutterHutDoodadDefinitionCopyWithImpl(
      _$TreeCutterHutDoodadDefinition _value,
      $Res Function(_$TreeCutterHutDoodadDefinition) _then)
      : super(_value, (v) => _then(v as _$TreeCutterHutDoodadDefinition));

  @override
  _$TreeCutterHutDoodadDefinition get _value =>
      super._value as _$TreeCutterHutDoodadDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAsset = freezed,
    Object? storeImageAsset = freezed,
    Object? supportedLocations = freezed,
    Object? ticksRequired = freezed,
    Object? ticksName = freezed,
  }) {
    return _then(_$TreeCutterHutDoodadDefinition(
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
      ticksName: ticksName == freezed
          ? _value.ticksName
          : ticksName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TreeCutterHutDoodadDefinition extends TreeCutterHutDoodadDefinition {
  const _$TreeCutterHutDoodadDefinition(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageAsset,
      required this.storeImageAsset,
      required final Set<TileType> supportedLocations,
      required this.ticksRequired,
      required this.ticksName,
      final String? $type})
      : _supportedLocations = supportedLocations,
        $type = $type ?? 'treeCutterHut',
        super._();

  factory _$TreeCutterHutDoodadDefinition.fromJson(Map<String, dynamic> json) =>
      _$$TreeCutterHutDoodadDefinitionFromJson(json);

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
  final String ticksName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DoodadDefinition.treeCutterHut(id: $id, name: $name, description: $description, imageAsset: $imageAsset, storeImageAsset: $storeImageAsset, supportedLocations: $supportedLocations, ticksRequired: $ticksRequired, ticksName: $ticksName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeCutterHutDoodadDefinition &&
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
                .equals(other.ticksRequired, ticksRequired) &&
            const DeepCollectionEquality().equals(other.ticksName, ticksName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageAsset),
      const DeepCollectionEquality().hash(storeImageAsset),
      const DeepCollectionEquality().hash(_supportedLocations),
      const DeepCollectionEquality().hash(ticksRequired),
      const DeepCollectionEquality().hash(ticksName));

  @JsonKey(ignore: true)
  @override
  _$$TreeCutterHutDoodadDefinitionCopyWith<_$TreeCutterHutDoodadDefinition>
      get copyWith => __$$TreeCutterHutDoodadDefinitionCopyWithImpl<
          _$TreeCutterHutDoodadDefinition>(this, _$identity);

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
            int ticksRequired,
            String ticksName)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)
        tree,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)
        treeCutterHut,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)
        materialProcessor,
  }) {
    return treeCutterHut(id, name, description, imageAsset, storeImageAsset,
        supportedLocations, ticksRequired, ticksName);
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
            int ticksRequired,
            String ticksName)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
  }) {
    return treeCutterHut?.call(id, name, description, imageAsset,
        storeImageAsset, supportedLocations, ticksRequired, ticksName);
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
            int ticksRequired,
            String ticksName)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    required TResult orElse(),
  }) {
    if (treeCutterHut != null) {
      return treeCutterHut(id, name, description, imageAsset, storeImageAsset,
          supportedLocations, ticksRequired, ticksName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiggerDoodadDefinition value) digger,
    required TResult Function(TreeDoodadDefinition value) tree,
    required TResult Function(TreeCutterHutDoodadDefinition value)
        treeCutterHut,
    required TResult Function(MaterialProcessorDoodadDefinition value)
        materialProcessor,
  }) {
    return treeCutterHut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(TreeDoodadDefinition value)? tree,
    TResult Function(TreeCutterHutDoodadDefinition value)? treeCutterHut,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
  }) {
    return treeCutterHut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(TreeDoodadDefinition value)? tree,
    TResult Function(TreeCutterHutDoodadDefinition value)? treeCutterHut,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    required TResult orElse(),
  }) {
    if (treeCutterHut != null) {
      return treeCutterHut(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TreeCutterHutDoodadDefinitionToJson(this);
  }
}

abstract class TreeCutterHutDoodadDefinition extends DoodadDefinition
    implements TickableDoodadInterface {
  const factory TreeCutterHutDoodadDefinition(
      {required final DoodadId id,
      required final String name,
      required final String description,
      required final String imageAsset,
      required final String storeImageAsset,
      required final Set<TileType> supportedLocations,
      required final int ticksRequired,
      required final String ticksName}) = _$TreeCutterHutDoodadDefinition;

  const TreeCutterHutDoodadDefinition._() : super._();

  factory TreeCutterHutDoodadDefinition.fromJson(Map<String, dynamic> json) =
      _$TreeCutterHutDoodadDefinition.fromJson;

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
  String get ticksName => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$TreeCutterHutDoodadDefinitionCopyWith<_$TreeCutterHutDoodadDefinition>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaterialProcessorDoodadDefinitionCopyWith<$Res>
    implements $DoodadDefinitionCopyWith<$Res> {
  factory _$$MaterialProcessorDoodadDefinitionCopyWith(
          _$MaterialProcessorDoodadDefinition value,
          $Res Function(_$MaterialProcessorDoodadDefinition) then) =
      __$$MaterialProcessorDoodadDefinitionCopyWithImpl<$Res>;

  @override
  $Res call(
      {DoodadId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      Set<TileType> supportedLocations,
      int ticksRequired,
      String ticksName,
      ItemRequirement consumedMaterials,
      BuiltList<ItemInstance> itemsProduced});

  @override
  $DoodadIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$MaterialProcessorDoodadDefinitionCopyWithImpl<$Res>
    extends _$DoodadDefinitionCopyWithImpl<$Res>
    implements _$$MaterialProcessorDoodadDefinitionCopyWith<$Res> {
  __$$MaterialProcessorDoodadDefinitionCopyWithImpl(
      _$MaterialProcessorDoodadDefinition _value,
      $Res Function(_$MaterialProcessorDoodadDefinition) _then)
      : super(_value, (v) => _then(v as _$MaterialProcessorDoodadDefinition));

  @override
  _$MaterialProcessorDoodadDefinition get _value =>
      super._value as _$MaterialProcessorDoodadDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAsset = freezed,
    Object? storeImageAsset = freezed,
    Object? supportedLocations = freezed,
    Object? ticksRequired = freezed,
    Object? ticksName = freezed,
    Object? consumedMaterials = freezed,
    Object? itemsProduced = freezed,
  }) {
    return _then(_$MaterialProcessorDoodadDefinition(
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
      ticksName: ticksName == freezed
          ? _value.ticksName
          : ticksName // ignore: cast_nullable_to_non_nullable
              as String,
      consumedMaterials: consumedMaterials == freezed
          ? _value.consumedMaterials
          : consumedMaterials // ignore: cast_nullable_to_non_nullable
              as ItemRequirement,
      itemsProduced: itemsProduced == freezed
          ? _value.itemsProduced
          : itemsProduced // ignore: cast_nullable_to_non_nullable
              as BuiltList<ItemInstance>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaterialProcessorDoodadDefinition
    extends MaterialProcessorDoodadDefinition {
  const _$MaterialProcessorDoodadDefinition(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageAsset,
      required this.storeImageAsset,
      required final Set<TileType> supportedLocations,
      required this.ticksRequired,
      required this.ticksName,
      required this.consumedMaterials,
      required this.itemsProduced,
      final String? $type})
      : _supportedLocations = supportedLocations,
        $type = $type ?? 'materialProcessor',
        super._();

  factory _$MaterialProcessorDoodadDefinition.fromJson(
          Map<String, dynamic> json) =>
      _$$MaterialProcessorDoodadDefinitionFromJson(json);

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
  final String ticksName;
  @override
  final ItemRequirement consumedMaterials;
  @override
  final BuiltList<ItemInstance> itemsProduced;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DoodadDefinition.materialProcessor(id: $id, name: $name, description: $description, imageAsset: $imageAsset, storeImageAsset: $storeImageAsset, supportedLocations: $supportedLocations, ticksRequired: $ticksRequired, ticksName: $ticksName, consumedMaterials: $consumedMaterials, itemsProduced: $itemsProduced)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialProcessorDoodadDefinition &&
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
                .equals(other.ticksRequired, ticksRequired) &&
            const DeepCollectionEquality().equals(other.ticksName, ticksName) &&
            const DeepCollectionEquality()
                .equals(other.consumedMaterials, consumedMaterials) &&
            const DeepCollectionEquality()
                .equals(other.itemsProduced, itemsProduced));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageAsset),
      const DeepCollectionEquality().hash(storeImageAsset),
      const DeepCollectionEquality().hash(_supportedLocations),
      const DeepCollectionEquality().hash(ticksRequired),
      const DeepCollectionEquality().hash(ticksName),
      const DeepCollectionEquality().hash(consumedMaterials),
      const DeepCollectionEquality().hash(itemsProduced));

  @JsonKey(ignore: true)
  @override
  _$$MaterialProcessorDoodadDefinitionCopyWith<
          _$MaterialProcessorDoodadDefinition>
      get copyWith => __$$MaterialProcessorDoodadDefinitionCopyWithImpl<
          _$MaterialProcessorDoodadDefinition>(this, _$identity);

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
            int ticksRequired,
            String ticksName)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)
        tree,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)
        treeCutterHut,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)
        materialProcessor,
  }) {
    return materialProcessor(
        id,
        name,
        description,
        imageAsset,
        storeImageAsset,
        supportedLocations,
        ticksRequired,
        ticksName,
        consumedMaterials,
        itemsProduced);
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
            int ticksRequired,
            String ticksName)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
  }) {
    return materialProcessor?.call(
        id,
        name,
        description,
        imageAsset,
        storeImageAsset,
        supportedLocations,
        ticksRequired,
        ticksName,
        consumedMaterials,
        itemsProduced);
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
            int ticksRequired,
            String ticksName)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        tree,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName)?
        treeCutterHut,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    required TResult orElse(),
  }) {
    if (materialProcessor != null) {
      return materialProcessor(
          id,
          name,
          description,
          imageAsset,
          storeImageAsset,
          supportedLocations,
          ticksRequired,
          ticksName,
          consumedMaterials,
          itemsProduced);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiggerDoodadDefinition value) digger,
    required TResult Function(TreeDoodadDefinition value) tree,
    required TResult Function(TreeCutterHutDoodadDefinition value)
        treeCutterHut,
    required TResult Function(MaterialProcessorDoodadDefinition value)
        materialProcessor,
  }) {
    return materialProcessor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(TreeDoodadDefinition value)? tree,
    TResult Function(TreeCutterHutDoodadDefinition value)? treeCutterHut,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
  }) {
    return materialProcessor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(TreeDoodadDefinition value)? tree,
    TResult Function(TreeCutterHutDoodadDefinition value)? treeCutterHut,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    required TResult orElse(),
  }) {
    if (materialProcessor != null) {
      return materialProcessor(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MaterialProcessorDoodadDefinitionToJson(this);
  }
}

abstract class MaterialProcessorDoodadDefinition extends DoodadDefinition
    implements MaterialProcessorDoodadInterface {
  const factory MaterialProcessorDoodadDefinition(
          {required final DoodadId id,
          required final String name,
          required final String description,
          required final String imageAsset,
          required final String storeImageAsset,
          required final Set<TileType> supportedLocations,
          required final int ticksRequired,
          required final String ticksName,
          required final ItemRequirement consumedMaterials,
          required final BuiltList<ItemInstance> itemsProduced}) =
      _$MaterialProcessorDoodadDefinition;

  const MaterialProcessorDoodadDefinition._() : super._();

  factory MaterialProcessorDoodadDefinition.fromJson(
      Map<String, dynamic> json) = _$MaterialProcessorDoodadDefinition.fromJson;

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
  String get ticksName => throw _privateConstructorUsedError;

  ItemRequirement get consumedMaterials => throw _privateConstructorUsedError;

  BuiltList<ItemInstance> get itemsProduced =>
      throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$$MaterialProcessorDoodadDefinitionCopyWith<
          _$MaterialProcessorDoodadDefinition>
      get copyWith => throw _privateConstructorUsedError;
}
