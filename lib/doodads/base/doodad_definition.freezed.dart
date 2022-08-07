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
    case 'regenerativeHarvestable':
      return RegenerativeHarvestableDoodadDefinition.fromJson(json);
    case 'areaHarvestable':
      return AreaHarvestableDoodadDefinition.fromJson(json);
    case 'materialProcessor':
      return MaterialProcessorDoodadDefinition.fromJson(json);
    case 'house':
      return HouseDoodadDefinition.fromJson(json);

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
  bool get userCanBuild => throw _privateConstructorUsedError;
  Set<TileType> get supportedLocations => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)
        regenerativeHarvestable,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)
        areaHarvestable,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)
        materialProcessor,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)
        house,
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)?
        areaHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)?
        house,
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)?
        areaHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)?
        house,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiggerDoodadDefinition value) digger,
    required TResult Function(RegenerativeHarvestableDoodadDefinition value)
        regenerativeHarvestable,
    required TResult Function(AreaHarvestableDoodadDefinition value)
        areaHarvestable,
    required TResult Function(MaterialProcessorDoodadDefinition value)
        materialProcessor,
    required TResult Function(HouseDoodadDefinition value) house,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult Function(HouseDoodadDefinition value)? house,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult Function(HouseDoodadDefinition value)? house,
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
      bool userCanBuild,
      Set<TileType> supportedLocations});

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
    Object? userCanBuild = freezed,
    Object? supportedLocations = freezed,
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
      userCanBuild: userCanBuild == freezed
          ? _value.userCanBuild
          : userCanBuild // ignore: cast_nullable_to_non_nullable
              as bool,
      supportedLocations: supportedLocations == freezed
          ? _value.supportedLocations
          : supportedLocations // ignore: cast_nullable_to_non_nullable
              as Set<TileType>,
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
      bool userCanBuild,
      Set<TileType> supportedLocations,
      int ticksRequired,
      String ticksName,
      BuiltList<ItemInstanceGenerator> itemMined});

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
    Object? userCanBuild = freezed,
    Object? supportedLocations = freezed,
    Object? ticksRequired = freezed,
    Object? ticksName = freezed,
    Object? itemMined = freezed,
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
      userCanBuild: userCanBuild == freezed
          ? _value.userCanBuild
          : userCanBuild // ignore: cast_nullable_to_non_nullable
              as bool,
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
      itemMined: itemMined == freezed
          ? _value.itemMined
          : itemMined // ignore: cast_nullable_to_non_nullable
              as BuiltList<ItemInstanceGenerator>,
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
      this.userCanBuild = true,
      required final Set<TileType> supportedLocations,
      required this.ticksRequired,
      required this.ticksName,
      required this.itemMined,
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
  @override
  @JsonKey()
  final bool userCanBuild;
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
  final BuiltList<ItemInstanceGenerator> itemMined;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DoodadDefinition.digger(id: $id, name: $name, description: $description, imageAsset: $imageAsset, storeImageAsset: $storeImageAsset, userCanBuild: $userCanBuild, supportedLocations: $supportedLocations, ticksRequired: $ticksRequired, ticksName: $ticksName, itemMined: $itemMined)';
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
                .equals(other.userCanBuild, userCanBuild) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocations, _supportedLocations) &&
            const DeepCollectionEquality()
                .equals(other.ticksRequired, ticksRequired) &&
            const DeepCollectionEquality().equals(other.ticksName, ticksName) &&
            const DeepCollectionEquality().equals(other.itemMined, itemMined));
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
      const DeepCollectionEquality().hash(userCanBuild),
      const DeepCollectionEquality().hash(_supportedLocations),
      const DeepCollectionEquality().hash(ticksRequired),
      const DeepCollectionEquality().hash(ticksName),
      const DeepCollectionEquality().hash(itemMined));

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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)
        regenerativeHarvestable,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)
        areaHarvestable,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)
        materialProcessor,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)
        house,
  }) {
    return digger(id, name, description, imageAsset, storeImageAsset,
        userCanBuild, supportedLocations, ticksRequired, ticksName, itemMined);
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)?
        areaHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)?
        house,
  }) {
    return digger?.call(id, name, description, imageAsset, storeImageAsset,
        userCanBuild, supportedLocations, ticksRequired, ticksName, itemMined);
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)?
        areaHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)?
        house,
    required TResult orElse(),
  }) {
    if (digger != null) {
      return digger(
          id,
          name,
          description,
          imageAsset,
          storeImageAsset,
          userCanBuild,
          supportedLocations,
          ticksRequired,
          ticksName,
          itemMined);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiggerDoodadDefinition value) digger,
    required TResult Function(RegenerativeHarvestableDoodadDefinition value)
        regenerativeHarvestable,
    required TResult Function(AreaHarvestableDoodadDefinition value)
        areaHarvestable,
    required TResult Function(MaterialProcessorDoodadDefinition value)
        materialProcessor,
    required TResult Function(HouseDoodadDefinition value) house,
  }) {
    return digger(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult Function(HouseDoodadDefinition value)? house,
  }) {
    return digger?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult Function(HouseDoodadDefinition value)? house,
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
    implements DiggerDoodadInterface {
  const factory DiggerDoodadDefinition(
          {required final DoodadId id,
          required final String name,
          required final String description,
          required final String imageAsset,
          required final String storeImageAsset,
          final bool userCanBuild,
          required final Set<TileType> supportedLocations,
          required final int ticksRequired,
          required final String ticksName,
          required final BuiltList<ItemInstanceGenerator> itemMined}) =
      _$DiggerDoodadDefinition;
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
  bool get userCanBuild => throw _privateConstructorUsedError;
  @override
  Set<TileType> get supportedLocations => throw _privateConstructorUsedError;
  int get ticksRequired => throw _privateConstructorUsedError;
  String get ticksName => throw _privateConstructorUsedError;
  BuiltList<ItemInstanceGenerator> get itemMined =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DiggerDoodadDefinitionCopyWith<_$DiggerDoodadDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegenerativeHarvestableDoodadDefinitionCopyWith<$Res>
    implements $DoodadDefinitionCopyWith<$Res> {
  factory _$$RegenerativeHarvestableDoodadDefinitionCopyWith(
          _$RegenerativeHarvestableDoodadDefinition value,
          $Res Function(_$RegenerativeHarvestableDoodadDefinition) then) =
      __$$RegenerativeHarvestableDoodadDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DoodadId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      bool userCanBuild,
      Set<TileType> supportedLocations,
      int ticksRequired,
      String ticksName,
      double resourceRequiredToHarvestOne,
      double resourceMax,
      double resourceIncreasePerTick,
      BuiltList<ItemInstanceGenerator> resourceGenerated,
      int? manualEffortToHarvest,
      Map<int, String>? dynamicImageAssets});

  @override
  $DoodadIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$RegenerativeHarvestableDoodadDefinitionCopyWithImpl<$Res>
    extends _$DoodadDefinitionCopyWithImpl<$Res>
    implements _$$RegenerativeHarvestableDoodadDefinitionCopyWith<$Res> {
  __$$RegenerativeHarvestableDoodadDefinitionCopyWithImpl(
      _$RegenerativeHarvestableDoodadDefinition _value,
      $Res Function(_$RegenerativeHarvestableDoodadDefinition) _then)
      : super(_value,
            (v) => _then(v as _$RegenerativeHarvestableDoodadDefinition));

  @override
  _$RegenerativeHarvestableDoodadDefinition get _value =>
      super._value as _$RegenerativeHarvestableDoodadDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAsset = freezed,
    Object? storeImageAsset = freezed,
    Object? userCanBuild = freezed,
    Object? supportedLocations = freezed,
    Object? ticksRequired = freezed,
    Object? ticksName = freezed,
    Object? resourceRequiredToHarvestOne = freezed,
    Object? resourceMax = freezed,
    Object? resourceIncreasePerTick = freezed,
    Object? resourceGenerated = freezed,
    Object? manualEffortToHarvest = freezed,
    Object? dynamicImageAssets = freezed,
  }) {
    return _then(_$RegenerativeHarvestableDoodadDefinition(
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
      userCanBuild: userCanBuild == freezed
          ? _value.userCanBuild
          : userCanBuild // ignore: cast_nullable_to_non_nullable
              as bool,
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
      resourceRequiredToHarvestOne: resourceRequiredToHarvestOne == freezed
          ? _value.resourceRequiredToHarvestOne
          : resourceRequiredToHarvestOne // ignore: cast_nullable_to_non_nullable
              as double,
      resourceMax: resourceMax == freezed
          ? _value.resourceMax
          : resourceMax // ignore: cast_nullable_to_non_nullable
              as double,
      resourceIncreasePerTick: resourceIncreasePerTick == freezed
          ? _value.resourceIncreasePerTick
          : resourceIncreasePerTick // ignore: cast_nullable_to_non_nullable
              as double,
      resourceGenerated: resourceGenerated == freezed
          ? _value.resourceGenerated
          : resourceGenerated // ignore: cast_nullable_to_non_nullable
              as BuiltList<ItemInstanceGenerator>,
      manualEffortToHarvest: manualEffortToHarvest == freezed
          ? _value.manualEffortToHarvest
          : manualEffortToHarvest // ignore: cast_nullable_to_non_nullable
              as int?,
      dynamicImageAssets: dynamicImageAssets == freezed
          ? _value._dynamicImageAssets
          : dynamicImageAssets // ignore: cast_nullable_to_non_nullable
              as Map<int, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegenerativeHarvestableDoodadDefinition
    extends RegenerativeHarvestableDoodadDefinition {
  const _$RegenerativeHarvestableDoodadDefinition(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageAsset,
      required this.storeImageAsset,
      this.userCanBuild = true,
      required final Set<TileType> supportedLocations,
      required this.ticksRequired,
      required this.ticksName,
      required this.resourceRequiredToHarvestOne,
      required this.resourceMax,
      required this.resourceIncreasePerTick,
      required this.resourceGenerated,
      this.manualEffortToHarvest,
      final Map<int, String>? dynamicImageAssets,
      final String? $type})
      : _supportedLocations = supportedLocations,
        _dynamicImageAssets = dynamicImageAssets,
        $type = $type ?? 'regenerativeHarvestable',
        super._();

  factory _$RegenerativeHarvestableDoodadDefinition.fromJson(
          Map<String, dynamic> json) =>
      _$$RegenerativeHarvestableDoodadDefinitionFromJson(json);

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
  @override
  @JsonKey()
  final bool userCanBuild;
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
  final double resourceRequiredToHarvestOne;
  @override
  final double resourceMax;
  @override
  final double resourceIncreasePerTick;
  @override
  final BuiltList<ItemInstanceGenerator> resourceGenerated;
  @override
  final int? manualEffortToHarvest;
  final Map<int, String>? _dynamicImageAssets;
  @override
  Map<int, String>? get dynamicImageAssets {
    final value = _dynamicImageAssets;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DoodadDefinition.regenerativeHarvestable(id: $id, name: $name, description: $description, imageAsset: $imageAsset, storeImageAsset: $storeImageAsset, userCanBuild: $userCanBuild, supportedLocations: $supportedLocations, ticksRequired: $ticksRequired, ticksName: $ticksName, resourceRequiredToHarvestOne: $resourceRequiredToHarvestOne, resourceMax: $resourceMax, resourceIncreasePerTick: $resourceIncreasePerTick, resourceGenerated: $resourceGenerated, manualEffortToHarvest: $manualEffortToHarvest, dynamicImageAssets: $dynamicImageAssets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegenerativeHarvestableDoodadDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.imageAsset, imageAsset) &&
            const DeepCollectionEquality()
                .equals(other.storeImageAsset, storeImageAsset) &&
            const DeepCollectionEquality()
                .equals(other.userCanBuild, userCanBuild) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocations, _supportedLocations) &&
            const DeepCollectionEquality()
                .equals(other.ticksRequired, ticksRequired) &&
            const DeepCollectionEquality().equals(other.ticksName, ticksName) &&
            const DeepCollectionEquality().equals(
                other.resourceRequiredToHarvestOne,
                resourceRequiredToHarvestOne) &&
            const DeepCollectionEquality()
                .equals(other.resourceMax, resourceMax) &&
            const DeepCollectionEquality().equals(
                other.resourceIncreasePerTick, resourceIncreasePerTick) &&
            const DeepCollectionEquality()
                .equals(other.resourceGenerated, resourceGenerated) &&
            const DeepCollectionEquality()
                .equals(other.manualEffortToHarvest, manualEffortToHarvest) &&
            const DeepCollectionEquality()
                .equals(other._dynamicImageAssets, _dynamicImageAssets));
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
      const DeepCollectionEquality().hash(userCanBuild),
      const DeepCollectionEquality().hash(_supportedLocations),
      const DeepCollectionEquality().hash(ticksRequired),
      const DeepCollectionEquality().hash(ticksName),
      const DeepCollectionEquality().hash(resourceRequiredToHarvestOne),
      const DeepCollectionEquality().hash(resourceMax),
      const DeepCollectionEquality().hash(resourceIncreasePerTick),
      const DeepCollectionEquality().hash(resourceGenerated),
      const DeepCollectionEquality().hash(manualEffortToHarvest),
      const DeepCollectionEquality().hash(_dynamicImageAssets));

  @JsonKey(ignore: true)
  @override
  _$$RegenerativeHarvestableDoodadDefinitionCopyWith<
          _$RegenerativeHarvestableDoodadDefinition>
      get copyWith => __$$RegenerativeHarvestableDoodadDefinitionCopyWithImpl<
          _$RegenerativeHarvestableDoodadDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)
        regenerativeHarvestable,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)
        areaHarvestable,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)
        materialProcessor,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)
        house,
  }) {
    return regenerativeHarvestable(
        id,
        name,
        description,
        imageAsset,
        storeImageAsset,
        userCanBuild,
        supportedLocations,
        ticksRequired,
        ticksName,
        resourceRequiredToHarvestOne,
        resourceMax,
        resourceIncreasePerTick,
        resourceGenerated,
        manualEffortToHarvest,
        dynamicImageAssets);
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)?
        areaHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)?
        house,
  }) {
    return regenerativeHarvestable?.call(
        id,
        name,
        description,
        imageAsset,
        storeImageAsset,
        userCanBuild,
        supportedLocations,
        ticksRequired,
        ticksName,
        resourceRequiredToHarvestOne,
        resourceMax,
        resourceIncreasePerTick,
        resourceGenerated,
        manualEffortToHarvest,
        dynamicImageAssets);
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)?
        areaHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)?
        house,
    required TResult orElse(),
  }) {
    if (regenerativeHarvestable != null) {
      return regenerativeHarvestable(
          id,
          name,
          description,
          imageAsset,
          storeImageAsset,
          userCanBuild,
          supportedLocations,
          ticksRequired,
          ticksName,
          resourceRequiredToHarvestOne,
          resourceMax,
          resourceIncreasePerTick,
          resourceGenerated,
          manualEffortToHarvest,
          dynamicImageAssets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiggerDoodadDefinition value) digger,
    required TResult Function(RegenerativeHarvestableDoodadDefinition value)
        regenerativeHarvestable,
    required TResult Function(AreaHarvestableDoodadDefinition value)
        areaHarvestable,
    required TResult Function(MaterialProcessorDoodadDefinition value)
        materialProcessor,
    required TResult Function(HouseDoodadDefinition value) house,
  }) {
    return regenerativeHarvestable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult Function(HouseDoodadDefinition value)? house,
  }) {
    return regenerativeHarvestable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult Function(HouseDoodadDefinition value)? house,
    required TResult orElse(),
  }) {
    if (regenerativeHarvestable != null) {
      return regenerativeHarvestable(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RegenerativeHarvestableDoodadDefinitionToJson(this);
  }
}

abstract class RegenerativeHarvestableDoodadDefinition extends DoodadDefinition
    implements RegenerativeHarvestableDoodadInterface {
  const factory RegenerativeHarvestableDoodadDefinition(
          {required final DoodadId id,
          required final String name,
          required final String description,
          required final String imageAsset,
          required final String storeImageAsset,
          final bool userCanBuild,
          required final Set<TileType> supportedLocations,
          required final int ticksRequired,
          required final String ticksName,
          required final double resourceRequiredToHarvestOne,
          required final double resourceMax,
          required final double resourceIncreasePerTick,
          required final BuiltList<ItemInstanceGenerator> resourceGenerated,
          final int? manualEffortToHarvest,
          final Map<int, String>? dynamicImageAssets}) =
      _$RegenerativeHarvestableDoodadDefinition;
  const RegenerativeHarvestableDoodadDefinition._() : super._();

  factory RegenerativeHarvestableDoodadDefinition.fromJson(
          Map<String, dynamic> json) =
      _$RegenerativeHarvestableDoodadDefinition.fromJson;

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
  bool get userCanBuild => throw _privateConstructorUsedError;
  @override
  Set<TileType> get supportedLocations => throw _privateConstructorUsedError;
  int get ticksRequired => throw _privateConstructorUsedError;
  String get ticksName => throw _privateConstructorUsedError;
  double get resourceRequiredToHarvestOne => throw _privateConstructorUsedError;
  double get resourceMax => throw _privateConstructorUsedError;
  double get resourceIncreasePerTick => throw _privateConstructorUsedError;
  BuiltList<ItemInstanceGenerator> get resourceGenerated =>
      throw _privateConstructorUsedError;
  int? get manualEffortToHarvest => throw _privateConstructorUsedError;
  Map<int, String>? get dynamicImageAssets =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$RegenerativeHarvestableDoodadDefinitionCopyWith<
          _$RegenerativeHarvestableDoodadDefinition>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AreaHarvestableDoodadDefinitionCopyWith<$Res>
    implements $DoodadDefinitionCopyWith<$Res> {
  factory _$$AreaHarvestableDoodadDefinitionCopyWith(
          _$AreaHarvestableDoodadDefinition value,
          $Res Function(_$AreaHarvestableDoodadDefinition) then) =
      __$$AreaHarvestableDoodadDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DoodadId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      bool userCanBuild,
      Set<TileType> supportedLocations,
      int ticksRequired,
      String ticksName,
      int range});

  @override
  $DoodadIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$AreaHarvestableDoodadDefinitionCopyWithImpl<$Res>
    extends _$DoodadDefinitionCopyWithImpl<$Res>
    implements _$$AreaHarvestableDoodadDefinitionCopyWith<$Res> {
  __$$AreaHarvestableDoodadDefinitionCopyWithImpl(
      _$AreaHarvestableDoodadDefinition _value,
      $Res Function(_$AreaHarvestableDoodadDefinition) _then)
      : super(_value, (v) => _then(v as _$AreaHarvestableDoodadDefinition));

  @override
  _$AreaHarvestableDoodadDefinition get _value =>
      super._value as _$AreaHarvestableDoodadDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAsset = freezed,
    Object? storeImageAsset = freezed,
    Object? userCanBuild = freezed,
    Object? supportedLocations = freezed,
    Object? ticksRequired = freezed,
    Object? ticksName = freezed,
    Object? range = freezed,
  }) {
    return _then(_$AreaHarvestableDoodadDefinition(
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
      userCanBuild: userCanBuild == freezed
          ? _value.userCanBuild
          : userCanBuild // ignore: cast_nullable_to_non_nullable
              as bool,
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
      range: range == freezed
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaHarvestableDoodadDefinition
    extends AreaHarvestableDoodadDefinition {
  const _$AreaHarvestableDoodadDefinition(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageAsset,
      required this.storeImageAsset,
      this.userCanBuild = true,
      required final Set<TileType> supportedLocations,
      required this.ticksRequired,
      required this.ticksName,
      required this.range,
      final String? $type})
      : _supportedLocations = supportedLocations,
        $type = $type ?? 'areaHarvestable',
        super._();

  factory _$AreaHarvestableDoodadDefinition.fromJson(
          Map<String, dynamic> json) =>
      _$$AreaHarvestableDoodadDefinitionFromJson(json);

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
  @override
  @JsonKey()
  final bool userCanBuild;
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
  final int range;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DoodadDefinition.areaHarvestable(id: $id, name: $name, description: $description, imageAsset: $imageAsset, storeImageAsset: $storeImageAsset, userCanBuild: $userCanBuild, supportedLocations: $supportedLocations, ticksRequired: $ticksRequired, ticksName: $ticksName, range: $range)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaHarvestableDoodadDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.imageAsset, imageAsset) &&
            const DeepCollectionEquality()
                .equals(other.storeImageAsset, storeImageAsset) &&
            const DeepCollectionEquality()
                .equals(other.userCanBuild, userCanBuild) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocations, _supportedLocations) &&
            const DeepCollectionEquality()
                .equals(other.ticksRequired, ticksRequired) &&
            const DeepCollectionEquality().equals(other.ticksName, ticksName) &&
            const DeepCollectionEquality().equals(other.range, range));
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
      const DeepCollectionEquality().hash(userCanBuild),
      const DeepCollectionEquality().hash(_supportedLocations),
      const DeepCollectionEquality().hash(ticksRequired),
      const DeepCollectionEquality().hash(ticksName),
      const DeepCollectionEquality().hash(range));

  @JsonKey(ignore: true)
  @override
  _$$AreaHarvestableDoodadDefinitionCopyWith<_$AreaHarvestableDoodadDefinition>
      get copyWith => __$$AreaHarvestableDoodadDefinitionCopyWithImpl<
          _$AreaHarvestableDoodadDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)
        regenerativeHarvestable,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)
        areaHarvestable,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)
        materialProcessor,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)
        house,
  }) {
    return areaHarvestable(id, name, description, imageAsset, storeImageAsset,
        userCanBuild, supportedLocations, ticksRequired, ticksName, range);
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)?
        areaHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)?
        house,
  }) {
    return areaHarvestable?.call(
        id,
        name,
        description,
        imageAsset,
        storeImageAsset,
        userCanBuild,
        supportedLocations,
        ticksRequired,
        ticksName,
        range);
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)?
        areaHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)?
        house,
    required TResult orElse(),
  }) {
    if (areaHarvestable != null) {
      return areaHarvestable(id, name, description, imageAsset, storeImageAsset,
          userCanBuild, supportedLocations, ticksRequired, ticksName, range);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiggerDoodadDefinition value) digger,
    required TResult Function(RegenerativeHarvestableDoodadDefinition value)
        regenerativeHarvestable,
    required TResult Function(AreaHarvestableDoodadDefinition value)
        areaHarvestable,
    required TResult Function(MaterialProcessorDoodadDefinition value)
        materialProcessor,
    required TResult Function(HouseDoodadDefinition value) house,
  }) {
    return areaHarvestable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult Function(HouseDoodadDefinition value)? house,
  }) {
    return areaHarvestable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult Function(HouseDoodadDefinition value)? house,
    required TResult orElse(),
  }) {
    if (areaHarvestable != null) {
      return areaHarvestable(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaHarvestableDoodadDefinitionToJson(this);
  }
}

abstract class AreaHarvestableDoodadDefinition extends DoodadDefinition
    implements AreaHarvestableDoodadInterface {
  const factory AreaHarvestableDoodadDefinition(
      {required final DoodadId id,
      required final String name,
      required final String description,
      required final String imageAsset,
      required final String storeImageAsset,
      final bool userCanBuild,
      required final Set<TileType> supportedLocations,
      required final int ticksRequired,
      required final String ticksName,
      required final int range}) = _$AreaHarvestableDoodadDefinition;
  const AreaHarvestableDoodadDefinition._() : super._();

  factory AreaHarvestableDoodadDefinition.fromJson(Map<String, dynamic> json) =
      _$AreaHarvestableDoodadDefinition.fromJson;

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
  bool get userCanBuild => throw _privateConstructorUsedError;
  @override
  Set<TileType> get supportedLocations => throw _privateConstructorUsedError;
  int get ticksRequired => throw _privateConstructorUsedError;
  String get ticksName => throw _privateConstructorUsedError;
  int get range => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$AreaHarvestableDoodadDefinitionCopyWith<_$AreaHarvestableDoodadDefinition>
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
      bool userCanBuild,
      Set<TileType> supportedLocations,
      int ticksRequired,
      String ticksName,
      ItemRequirement consumedMaterials,
      BuiltList<ItemInstance> itemsProduced});

  @override
  $DoodadIdCopyWith<$Res> get id;

  $ItemRequirementCopyWith<$Res> get consumedMaterials;
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
    Object? userCanBuild = freezed,
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
      userCanBuild: userCanBuild == freezed
          ? _value.userCanBuild
          : userCanBuild // ignore: cast_nullable_to_non_nullable
              as bool,
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

  @override
  $ItemRequirementCopyWith<$Res> get consumedMaterials {
    return $ItemRequirementCopyWith<$Res>(_value.consumedMaterials, (value) {
      return _then(_value.copyWith(consumedMaterials: value));
    });
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
      this.userCanBuild = true,
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
  @override
  @JsonKey()
  final bool userCanBuild;
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
    return 'DoodadDefinition.materialProcessor(id: $id, name: $name, description: $description, imageAsset: $imageAsset, storeImageAsset: $storeImageAsset, userCanBuild: $userCanBuild, supportedLocations: $supportedLocations, ticksRequired: $ticksRequired, ticksName: $ticksName, consumedMaterials: $consumedMaterials, itemsProduced: $itemsProduced)';
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
                .equals(other.userCanBuild, userCanBuild) &&
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
      const DeepCollectionEquality().hash(userCanBuild),
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)
        regenerativeHarvestable,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)
        areaHarvestable,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)
        materialProcessor,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)
        house,
  }) {
    return materialProcessor(
        id,
        name,
        description,
        imageAsset,
        storeImageAsset,
        userCanBuild,
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)?
        areaHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)?
        house,
  }) {
    return materialProcessor?.call(
        id,
        name,
        description,
        imageAsset,
        storeImageAsset,
        userCanBuild,
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)?
        areaHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)?
        house,
    required TResult orElse(),
  }) {
    if (materialProcessor != null) {
      return materialProcessor(
          id,
          name,
          description,
          imageAsset,
          storeImageAsset,
          userCanBuild,
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
    required TResult Function(RegenerativeHarvestableDoodadDefinition value)
        regenerativeHarvestable,
    required TResult Function(AreaHarvestableDoodadDefinition value)
        areaHarvestable,
    required TResult Function(MaterialProcessorDoodadDefinition value)
        materialProcessor,
    required TResult Function(HouseDoodadDefinition value) house,
  }) {
    return materialProcessor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult Function(HouseDoodadDefinition value)? house,
  }) {
    return materialProcessor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult Function(HouseDoodadDefinition value)? house,
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
          final bool userCanBuild,
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
  bool get userCanBuild => throw _privateConstructorUsedError;
  @override
  Set<TileType> get supportedLocations => throw _privateConstructorUsedError;
  int get ticksRequired => throw _privateConstructorUsedError;
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

/// @nodoc
abstract class _$$HouseDoodadDefinitionCopyWith<$Res>
    implements $DoodadDefinitionCopyWith<$Res> {
  factory _$$HouseDoodadDefinitionCopyWith(_$HouseDoodadDefinition value,
          $Res Function(_$HouseDoodadDefinition) then) =
      __$$HouseDoodadDefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DoodadId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      bool userCanBuild,
      Set<TileType> supportedLocations,
      int populationLimit,
      PersonType peopleType});

  @override
  $DoodadIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$HouseDoodadDefinitionCopyWithImpl<$Res>
    extends _$DoodadDefinitionCopyWithImpl<$Res>
    implements _$$HouseDoodadDefinitionCopyWith<$Res> {
  __$$HouseDoodadDefinitionCopyWithImpl(_$HouseDoodadDefinition _value,
      $Res Function(_$HouseDoodadDefinition) _then)
      : super(_value, (v) => _then(v as _$HouseDoodadDefinition));

  @override
  _$HouseDoodadDefinition get _value => super._value as _$HouseDoodadDefinition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? imageAsset = freezed,
    Object? storeImageAsset = freezed,
    Object? userCanBuild = freezed,
    Object? supportedLocations = freezed,
    Object? populationLimit = freezed,
    Object? peopleType = freezed,
  }) {
    return _then(_$HouseDoodadDefinition(
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
      userCanBuild: userCanBuild == freezed
          ? _value.userCanBuild
          : userCanBuild // ignore: cast_nullable_to_non_nullable
              as bool,
      supportedLocations: supportedLocations == freezed
          ? _value._supportedLocations
          : supportedLocations // ignore: cast_nullable_to_non_nullable
              as Set<TileType>,
      populationLimit: populationLimit == freezed
          ? _value.populationLimit
          : populationLimit // ignore: cast_nullable_to_non_nullable
              as int,
      peopleType: peopleType == freezed
          ? _value.peopleType
          : peopleType // ignore: cast_nullable_to_non_nullable
              as PersonType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseDoodadDefinition extends HouseDoodadDefinition {
  const _$HouseDoodadDefinition(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageAsset,
      required this.storeImageAsset,
      this.userCanBuild = true,
      required final Set<TileType> supportedLocations,
      required this.populationLimit,
      required this.peopleType,
      final String? $type})
      : _supportedLocations = supportedLocations,
        $type = $type ?? 'house',
        super._();

  factory _$HouseDoodadDefinition.fromJson(Map<String, dynamic> json) =>
      _$$HouseDoodadDefinitionFromJson(json);

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
  @override
  @JsonKey()
  final bool userCanBuild;
  final Set<TileType> _supportedLocations;
  @override
  Set<TileType> get supportedLocations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_supportedLocations);
  }

  @override
  final int populationLimit;
  @override
  final PersonType peopleType;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DoodadDefinition.house(id: $id, name: $name, description: $description, imageAsset: $imageAsset, storeImageAsset: $storeImageAsset, userCanBuild: $userCanBuild, supportedLocations: $supportedLocations, populationLimit: $populationLimit, peopleType: $peopleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseDoodadDefinition &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.imageAsset, imageAsset) &&
            const DeepCollectionEquality()
                .equals(other.storeImageAsset, storeImageAsset) &&
            const DeepCollectionEquality()
                .equals(other.userCanBuild, userCanBuild) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocations, _supportedLocations) &&
            const DeepCollectionEquality()
                .equals(other.populationLimit, populationLimit) &&
            const DeepCollectionEquality()
                .equals(other.peopleType, peopleType));
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
      const DeepCollectionEquality().hash(userCanBuild),
      const DeepCollectionEquality().hash(_supportedLocations),
      const DeepCollectionEquality().hash(populationLimit),
      const DeepCollectionEquality().hash(peopleType));

  @JsonKey(ignore: true)
  @override
  _$$HouseDoodadDefinitionCopyWith<_$HouseDoodadDefinition> get copyWith =>
      __$$HouseDoodadDefinitionCopyWithImpl<_$HouseDoodadDefinition>(
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)
        digger,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)
        regenerativeHarvestable,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)
        areaHarvestable,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)
        materialProcessor,
    required TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)
        house,
  }) {
    return house(id, name, description, imageAsset, storeImageAsset,
        userCanBuild, supportedLocations, populationLimit, peopleType);
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)?
        areaHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)?
        house,
  }) {
    return house?.call(id, name, description, imageAsset, storeImageAsset,
        userCanBuild, supportedLocations, populationLimit, peopleType);
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
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            BuiltList<ItemInstanceGenerator> itemMined)?
        digger,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            double resourceRequiredToHarvestOne,
            double resourceMax,
            double resourceIncreasePerTick,
            BuiltList<ItemInstanceGenerator> resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            int range)?
        areaHarvestable,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemRequirement consumedMaterials,
            BuiltList<ItemInstance> itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int populationLimit,
            PersonType peopleType)?
        house,
    required TResult orElse(),
  }) {
    if (house != null) {
      return house(id, name, description, imageAsset, storeImageAsset,
          userCanBuild, supportedLocations, populationLimit, peopleType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DiggerDoodadDefinition value) digger,
    required TResult Function(RegenerativeHarvestableDoodadDefinition value)
        regenerativeHarvestable,
    required TResult Function(AreaHarvestableDoodadDefinition value)
        areaHarvestable,
    required TResult Function(MaterialProcessorDoodadDefinition value)
        materialProcessor,
    required TResult Function(HouseDoodadDefinition value) house,
  }) {
    return house(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult Function(HouseDoodadDefinition value)? house,
  }) {
    return house?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DiggerDoodadDefinition value)? digger,
    TResult Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult Function(HouseDoodadDefinition value)? house,
    required TResult orElse(),
  }) {
    if (house != null) {
      return house(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseDoodadDefinitionToJson(this);
  }
}

abstract class HouseDoodadDefinition extends DoodadDefinition
    implements HouseDoodadInterface {
  const factory HouseDoodadDefinition(
      {required final DoodadId id,
      required final String name,
      required final String description,
      required final String imageAsset,
      required final String storeImageAsset,
      final bool userCanBuild,
      required final Set<TileType> supportedLocations,
      required final int populationLimit,
      required final PersonType peopleType}) = _$HouseDoodadDefinition;
  const HouseDoodadDefinition._() : super._();

  factory HouseDoodadDefinition.fromJson(Map<String, dynamic> json) =
      _$HouseDoodadDefinition.fromJson;

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
  bool get userCanBuild => throw _privateConstructorUsedError;
  @override
  Set<TileType> get supportedLocations => throw _privateConstructorUsedError;
  int get populationLimit => throw _privateConstructorUsedError;
  PersonType get peopleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$HouseDoodadDefinitionCopyWith<_$HouseDoodadDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}
