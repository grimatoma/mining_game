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
  DoodadDefinitionId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageAsset => throw _privateConstructorUsedError;
  String get storeImageAsset => throw _privateConstructorUsedError;
  bool get userCanBuild => throw _privateConstructorUsedError;
  Set<TileType> get supportedLocations => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)
        digger,
    required TResult Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)
        regenerativeHarvestable,
    required TResult Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)
        materialProcessor,
    required TResult Function(
            DoodadDefinitionId id,
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
    TResult? Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)?
        digger,
    TResult? Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult? Function(
            DoodadDefinitionId id,
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
    TResult? Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)?
        materialProcessor,
    TResult? Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)?
        digger,
    TResult Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadDefinitionId id,
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
    TResult? Function(DiggerDoodadDefinition value)? digger,
    TResult? Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult? Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult? Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult? Function(HouseDoodadDefinition value)? house,
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
      _$DoodadDefinitionCopyWithImpl<$Res, DoodadDefinition>;
  @useResult
  $Res call(
      {DoodadDefinitionId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      bool userCanBuild,
      Set<TileType> supportedLocations});
}

/// @nodoc
class _$DoodadDefinitionCopyWithImpl<$Res, $Val extends DoodadDefinition>
    implements $DoodadDefinitionCopyWith<$Res> {
  _$DoodadDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageAsset = null,
    Object? storeImageAsset = null,
    Object? userCanBuild = null,
    Object? supportedLocations = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoodadDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: null == imageAsset
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      storeImageAsset: null == storeImageAsset
          ? _value.storeImageAsset
          : storeImageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      userCanBuild: null == userCanBuild
          ? _value.userCanBuild
          : userCanBuild // ignore: cast_nullable_to_non_nullable
              as bool,
      supportedLocations: null == supportedLocations
          ? _value.supportedLocations
          : supportedLocations // ignore: cast_nullable_to_non_nullable
              as Set<TileType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiggerDoodadDefinitionCopyWith<$Res>
    implements $DoodadDefinitionCopyWith<$Res> {
  factory _$$DiggerDoodadDefinitionCopyWith(_$DiggerDoodadDefinition value,
          $Res Function(_$DiggerDoodadDefinition) then) =
      __$$DiggerDoodadDefinitionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DoodadDefinitionId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      bool userCanBuild,
      Set<TileType> supportedLocations,
      int ticksRequired,
      String ticksName,
      ItemContainer itemMined});

  $ItemContainerCopyWith<$Res> get itemMined;
}

/// @nodoc
class __$$DiggerDoodadDefinitionCopyWithImpl<$Res>
    extends _$DoodadDefinitionCopyWithImpl<$Res, _$DiggerDoodadDefinition>
    implements _$$DiggerDoodadDefinitionCopyWith<$Res> {
  __$$DiggerDoodadDefinitionCopyWithImpl(_$DiggerDoodadDefinition _value,
      $Res Function(_$DiggerDoodadDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageAsset = null,
    Object? storeImageAsset = null,
    Object? userCanBuild = null,
    Object? supportedLocations = null,
    Object? ticksRequired = null,
    Object? ticksName = null,
    Object? itemMined = null,
  }) {
    return _then(_$DiggerDoodadDefinition(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoodadDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: null == imageAsset
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      storeImageAsset: null == storeImageAsset
          ? _value.storeImageAsset
          : storeImageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      userCanBuild: null == userCanBuild
          ? _value.userCanBuild
          : userCanBuild // ignore: cast_nullable_to_non_nullable
              as bool,
      supportedLocations: null == supportedLocations
          ? _value._supportedLocations
          : supportedLocations // ignore: cast_nullable_to_non_nullable
              as Set<TileType>,
      ticksRequired: null == ticksRequired
          ? _value.ticksRequired
          : ticksRequired // ignore: cast_nullable_to_non_nullable
              as int,
      ticksName: null == ticksName
          ? _value.ticksName
          : ticksName // ignore: cast_nullable_to_non_nullable
              as String,
      itemMined: null == itemMined
          ? _value.itemMined
          : itemMined // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemContainerCopyWith<$Res> get itemMined {
    return $ItemContainerCopyWith<$Res>(_value.itemMined, (value) {
      return _then(_value.copyWith(itemMined: value));
    });
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
  final DoodadDefinitionId id;
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
  final ItemContainer itemMined;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageAsset, imageAsset) ||
                other.imageAsset == imageAsset) &&
            (identical(other.storeImageAsset, storeImageAsset) ||
                other.storeImageAsset == storeImageAsset) &&
            (identical(other.userCanBuild, userCanBuild) ||
                other.userCanBuild == userCanBuild) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocations, _supportedLocations) &&
            (identical(other.ticksRequired, ticksRequired) ||
                other.ticksRequired == ticksRequired) &&
            (identical(other.ticksName, ticksName) ||
                other.ticksName == ticksName) &&
            (identical(other.itemMined, itemMined) ||
                other.itemMined == itemMined));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      imageAsset,
      storeImageAsset,
      userCanBuild,
      const DeepCollectionEquality().hash(_supportedLocations),
      ticksRequired,
      ticksName,
      itemMined);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiggerDoodadDefinitionCopyWith<_$DiggerDoodadDefinition> get copyWith =>
      __$$DiggerDoodadDefinitionCopyWithImpl<_$DiggerDoodadDefinition>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)
        digger,
    required TResult Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)
        regenerativeHarvestable,
    required TResult Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)
        materialProcessor,
    required TResult Function(
            DoodadDefinitionId id,
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
    TResult? Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)?
        digger,
    TResult? Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult? Function(
            DoodadDefinitionId id,
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
    TResult? Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)?
        materialProcessor,
    TResult? Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)?
        digger,
    TResult Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadDefinitionId id,
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
    TResult? Function(DiggerDoodadDefinition value)? digger,
    TResult? Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult? Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult? Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult? Function(HouseDoodadDefinition value)? house,
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
    return _$$DiggerDoodadDefinitionToJson(
      this,
    );
  }
}

abstract class DiggerDoodadDefinition extends DoodadDefinition
    implements DiggerDoodadInterface {
  const factory DiggerDoodadDefinition(
      {required final DoodadDefinitionId id,
      required final String name,
      required final String description,
      required final String imageAsset,
      required final String storeImageAsset,
      final bool userCanBuild,
      required final Set<TileType> supportedLocations,
      required final int ticksRequired,
      required final String ticksName,
      required final ItemContainer itemMined}) = _$DiggerDoodadDefinition;
  const DiggerDoodadDefinition._() : super._();

  factory DiggerDoodadDefinition.fromJson(Map<String, dynamic> json) =
      _$DiggerDoodadDefinition.fromJson;

  @override
  DoodadDefinitionId get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageAsset;
  @override
  String get storeImageAsset;
  @override
  bool get userCanBuild;
  @override
  Set<TileType> get supportedLocations;
  int get ticksRequired;
  String get ticksName;
  ItemContainer get itemMined;
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
  @useResult
  $Res call(
      {DoodadDefinitionId id,
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
      ItemContainer resourceGenerated,
      int? manualEffortToHarvest,
      Map<int, String>? dynamicImageAssets});

  $ItemContainerCopyWith<$Res> get resourceGenerated;
}

/// @nodoc
class __$$RegenerativeHarvestableDoodadDefinitionCopyWithImpl<$Res>
    extends _$DoodadDefinitionCopyWithImpl<$Res,
        _$RegenerativeHarvestableDoodadDefinition>
    implements _$$RegenerativeHarvestableDoodadDefinitionCopyWith<$Res> {
  __$$RegenerativeHarvestableDoodadDefinitionCopyWithImpl(
      _$RegenerativeHarvestableDoodadDefinition _value,
      $Res Function(_$RegenerativeHarvestableDoodadDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageAsset = null,
    Object? storeImageAsset = null,
    Object? userCanBuild = null,
    Object? supportedLocations = null,
    Object? ticksRequired = null,
    Object? ticksName = null,
    Object? resourceRequiredToHarvestOne = null,
    Object? resourceMax = null,
    Object? resourceIncreasePerTick = null,
    Object? resourceGenerated = null,
    Object? manualEffortToHarvest = freezed,
    Object? dynamicImageAssets = freezed,
  }) {
    return _then(_$RegenerativeHarvestableDoodadDefinition(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoodadDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: null == imageAsset
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      storeImageAsset: null == storeImageAsset
          ? _value.storeImageAsset
          : storeImageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      userCanBuild: null == userCanBuild
          ? _value.userCanBuild
          : userCanBuild // ignore: cast_nullable_to_non_nullable
              as bool,
      supportedLocations: null == supportedLocations
          ? _value._supportedLocations
          : supportedLocations // ignore: cast_nullable_to_non_nullable
              as Set<TileType>,
      ticksRequired: null == ticksRequired
          ? _value.ticksRequired
          : ticksRequired // ignore: cast_nullable_to_non_nullable
              as int,
      ticksName: null == ticksName
          ? _value.ticksName
          : ticksName // ignore: cast_nullable_to_non_nullable
              as String,
      resourceRequiredToHarvestOne: null == resourceRequiredToHarvestOne
          ? _value.resourceRequiredToHarvestOne
          : resourceRequiredToHarvestOne // ignore: cast_nullable_to_non_nullable
              as double,
      resourceMax: null == resourceMax
          ? _value.resourceMax
          : resourceMax // ignore: cast_nullable_to_non_nullable
              as double,
      resourceIncreasePerTick: null == resourceIncreasePerTick
          ? _value.resourceIncreasePerTick
          : resourceIncreasePerTick // ignore: cast_nullable_to_non_nullable
              as double,
      resourceGenerated: null == resourceGenerated
          ? _value.resourceGenerated
          : resourceGenerated // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      manualEffortToHarvest: freezed == manualEffortToHarvest
          ? _value.manualEffortToHarvest
          : manualEffortToHarvest // ignore: cast_nullable_to_non_nullable
              as int?,
      dynamicImageAssets: freezed == dynamicImageAssets
          ? _value._dynamicImageAssets
          : dynamicImageAssets // ignore: cast_nullable_to_non_nullable
              as Map<int, String>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemContainerCopyWith<$Res> get resourceGenerated {
    return $ItemContainerCopyWith<$Res>(_value.resourceGenerated, (value) {
      return _then(_value.copyWith(resourceGenerated: value));
    });
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
  final DoodadDefinitionId id;
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
  final ItemContainer resourceGenerated;
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageAsset, imageAsset) ||
                other.imageAsset == imageAsset) &&
            (identical(other.storeImageAsset, storeImageAsset) ||
                other.storeImageAsset == storeImageAsset) &&
            (identical(other.userCanBuild, userCanBuild) ||
                other.userCanBuild == userCanBuild) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocations, _supportedLocations) &&
            (identical(other.ticksRequired, ticksRequired) ||
                other.ticksRequired == ticksRequired) &&
            (identical(other.ticksName, ticksName) ||
                other.ticksName == ticksName) &&
            (identical(other.resourceRequiredToHarvestOne,
                    resourceRequiredToHarvestOne) ||
                other.resourceRequiredToHarvestOne ==
                    resourceRequiredToHarvestOne) &&
            (identical(other.resourceMax, resourceMax) ||
                other.resourceMax == resourceMax) &&
            (identical(
                    other.resourceIncreasePerTick, resourceIncreasePerTick) ||
                other.resourceIncreasePerTick == resourceIncreasePerTick) &&
            (identical(other.resourceGenerated, resourceGenerated) ||
                other.resourceGenerated == resourceGenerated) &&
            (identical(other.manualEffortToHarvest, manualEffortToHarvest) ||
                other.manualEffortToHarvest == manualEffortToHarvest) &&
            const DeepCollectionEquality()
                .equals(other._dynamicImageAssets, _dynamicImageAssets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      imageAsset,
      storeImageAsset,
      userCanBuild,
      const DeepCollectionEquality().hash(_supportedLocations),
      ticksRequired,
      ticksName,
      resourceRequiredToHarvestOne,
      resourceMax,
      resourceIncreasePerTick,
      resourceGenerated,
      manualEffortToHarvest,
      const DeepCollectionEquality().hash(_dynamicImageAssets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegenerativeHarvestableDoodadDefinitionCopyWith<
          _$RegenerativeHarvestableDoodadDefinition>
      get copyWith => __$$RegenerativeHarvestableDoodadDefinitionCopyWithImpl<
          _$RegenerativeHarvestableDoodadDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)
        digger,
    required TResult Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)
        regenerativeHarvestable,
    required TResult Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)
        materialProcessor,
    required TResult Function(
            DoodadDefinitionId id,
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
    TResult? Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)?
        digger,
    TResult? Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult? Function(
            DoodadDefinitionId id,
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
    TResult? Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)?
        materialProcessor,
    TResult? Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)?
        digger,
    TResult Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadDefinitionId id,
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
    TResult? Function(DiggerDoodadDefinition value)? digger,
    TResult? Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult? Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult? Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult? Function(HouseDoodadDefinition value)? house,
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
    return _$$RegenerativeHarvestableDoodadDefinitionToJson(
      this,
    );
  }
}

abstract class RegenerativeHarvestableDoodadDefinition extends DoodadDefinition
    implements RegenerativeHarvestableDoodadInterface {
  const factory RegenerativeHarvestableDoodadDefinition(
          {required final DoodadDefinitionId id,
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
          required final ItemContainer resourceGenerated,
          final int? manualEffortToHarvest,
          final Map<int, String>? dynamicImageAssets}) =
      _$RegenerativeHarvestableDoodadDefinition;
  const RegenerativeHarvestableDoodadDefinition._() : super._();

  factory RegenerativeHarvestableDoodadDefinition.fromJson(
          Map<String, dynamic> json) =
      _$RegenerativeHarvestableDoodadDefinition.fromJson;

  @override
  DoodadDefinitionId get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageAsset;
  @override
  String get storeImageAsset;
  @override
  bool get userCanBuild;
  @override
  Set<TileType> get supportedLocations;
  int get ticksRequired;
  String get ticksName;
  double get resourceRequiredToHarvestOne;
  double get resourceMax;
  double get resourceIncreasePerTick;
  ItemContainer get resourceGenerated;
  int? get manualEffortToHarvest;
  Map<int, String>? get dynamicImageAssets;
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
  @useResult
  $Res call(
      {DoodadDefinitionId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      bool userCanBuild,
      Set<TileType> supportedLocations,
      int ticksRequired,
      String ticksName,
      int range});
}

/// @nodoc
class __$$AreaHarvestableDoodadDefinitionCopyWithImpl<$Res>
    extends _$DoodadDefinitionCopyWithImpl<$Res,
        _$AreaHarvestableDoodadDefinition>
    implements _$$AreaHarvestableDoodadDefinitionCopyWith<$Res> {
  __$$AreaHarvestableDoodadDefinitionCopyWithImpl(
      _$AreaHarvestableDoodadDefinition _value,
      $Res Function(_$AreaHarvestableDoodadDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageAsset = null,
    Object? storeImageAsset = null,
    Object? userCanBuild = null,
    Object? supportedLocations = null,
    Object? ticksRequired = null,
    Object? ticksName = null,
    Object? range = null,
  }) {
    return _then(_$AreaHarvestableDoodadDefinition(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoodadDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: null == imageAsset
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      storeImageAsset: null == storeImageAsset
          ? _value.storeImageAsset
          : storeImageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      userCanBuild: null == userCanBuild
          ? _value.userCanBuild
          : userCanBuild // ignore: cast_nullable_to_non_nullable
              as bool,
      supportedLocations: null == supportedLocations
          ? _value._supportedLocations
          : supportedLocations // ignore: cast_nullable_to_non_nullable
              as Set<TileType>,
      ticksRequired: null == ticksRequired
          ? _value.ticksRequired
          : ticksRequired // ignore: cast_nullable_to_non_nullable
              as int,
      ticksName: null == ticksName
          ? _value.ticksName
          : ticksName // ignore: cast_nullable_to_non_nullable
              as String,
      range: null == range
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
  final DoodadDefinitionId id;
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageAsset, imageAsset) ||
                other.imageAsset == imageAsset) &&
            (identical(other.storeImageAsset, storeImageAsset) ||
                other.storeImageAsset == storeImageAsset) &&
            (identical(other.userCanBuild, userCanBuild) ||
                other.userCanBuild == userCanBuild) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocations, _supportedLocations) &&
            (identical(other.ticksRequired, ticksRequired) ||
                other.ticksRequired == ticksRequired) &&
            (identical(other.ticksName, ticksName) ||
                other.ticksName == ticksName) &&
            (identical(other.range, range) || other.range == range));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      imageAsset,
      storeImageAsset,
      userCanBuild,
      const DeepCollectionEquality().hash(_supportedLocations),
      ticksRequired,
      ticksName,
      range);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaHarvestableDoodadDefinitionCopyWith<_$AreaHarvestableDoodadDefinition>
      get copyWith => __$$AreaHarvestableDoodadDefinitionCopyWithImpl<
          _$AreaHarvestableDoodadDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)
        digger,
    required TResult Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)
        regenerativeHarvestable,
    required TResult Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)
        materialProcessor,
    required TResult Function(
            DoodadDefinitionId id,
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
    TResult? Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)?
        digger,
    TResult? Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult? Function(
            DoodadDefinitionId id,
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
    TResult? Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)?
        materialProcessor,
    TResult? Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)?
        digger,
    TResult Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadDefinitionId id,
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
    TResult? Function(DiggerDoodadDefinition value)? digger,
    TResult? Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult? Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult? Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult? Function(HouseDoodadDefinition value)? house,
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
    return _$$AreaHarvestableDoodadDefinitionToJson(
      this,
    );
  }
}

abstract class AreaHarvestableDoodadDefinition extends DoodadDefinition
    implements AreaHarvestableDoodadInterface {
  const factory AreaHarvestableDoodadDefinition(
      {required final DoodadDefinitionId id,
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
  DoodadDefinitionId get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageAsset;
  @override
  String get storeImageAsset;
  @override
  bool get userCanBuild;
  @override
  Set<TileType> get supportedLocations;
  int get ticksRequired;
  String get ticksName;
  int get range;
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
  @useResult
  $Res call(
      {DoodadDefinitionId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      bool userCanBuild,
      Set<TileType> supportedLocations,
      int ticksRequired,
      String ticksName,
      ItemContainer consumedMaterials,
      ItemContainer itemsProduced});

  $ItemContainerCopyWith<$Res> get consumedMaterials;
  $ItemContainerCopyWith<$Res> get itemsProduced;
}

/// @nodoc
class __$$MaterialProcessorDoodadDefinitionCopyWithImpl<$Res>
    extends _$DoodadDefinitionCopyWithImpl<$Res,
        _$MaterialProcessorDoodadDefinition>
    implements _$$MaterialProcessorDoodadDefinitionCopyWith<$Res> {
  __$$MaterialProcessorDoodadDefinitionCopyWithImpl(
      _$MaterialProcessorDoodadDefinition _value,
      $Res Function(_$MaterialProcessorDoodadDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageAsset = null,
    Object? storeImageAsset = null,
    Object? userCanBuild = null,
    Object? supportedLocations = null,
    Object? ticksRequired = null,
    Object? ticksName = null,
    Object? consumedMaterials = null,
    Object? itemsProduced = null,
  }) {
    return _then(_$MaterialProcessorDoodadDefinition(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoodadDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: null == imageAsset
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      storeImageAsset: null == storeImageAsset
          ? _value.storeImageAsset
          : storeImageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      userCanBuild: null == userCanBuild
          ? _value.userCanBuild
          : userCanBuild // ignore: cast_nullable_to_non_nullable
              as bool,
      supportedLocations: null == supportedLocations
          ? _value._supportedLocations
          : supportedLocations // ignore: cast_nullable_to_non_nullable
              as Set<TileType>,
      ticksRequired: null == ticksRequired
          ? _value.ticksRequired
          : ticksRequired // ignore: cast_nullable_to_non_nullable
              as int,
      ticksName: null == ticksName
          ? _value.ticksName
          : ticksName // ignore: cast_nullable_to_non_nullable
              as String,
      consumedMaterials: null == consumedMaterials
          ? _value.consumedMaterials
          : consumedMaterials // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      itemsProduced: null == itemsProduced
          ? _value.itemsProduced
          : itemsProduced // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemContainerCopyWith<$Res> get consumedMaterials {
    return $ItemContainerCopyWith<$Res>(_value.consumedMaterials, (value) {
      return _then(_value.copyWith(consumedMaterials: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemContainerCopyWith<$Res> get itemsProduced {
    return $ItemContainerCopyWith<$Res>(_value.itemsProduced, (value) {
      return _then(_value.copyWith(itemsProduced: value));
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
  final DoodadDefinitionId id;
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
  final ItemContainer consumedMaterials;
  @override
  final ItemContainer itemsProduced;

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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageAsset, imageAsset) ||
                other.imageAsset == imageAsset) &&
            (identical(other.storeImageAsset, storeImageAsset) ||
                other.storeImageAsset == storeImageAsset) &&
            (identical(other.userCanBuild, userCanBuild) ||
                other.userCanBuild == userCanBuild) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocations, _supportedLocations) &&
            (identical(other.ticksRequired, ticksRequired) ||
                other.ticksRequired == ticksRequired) &&
            (identical(other.ticksName, ticksName) ||
                other.ticksName == ticksName) &&
            (identical(other.consumedMaterials, consumedMaterials) ||
                other.consumedMaterials == consumedMaterials) &&
            (identical(other.itemsProduced, itemsProduced) ||
                other.itemsProduced == itemsProduced));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      imageAsset,
      storeImageAsset,
      userCanBuild,
      const DeepCollectionEquality().hash(_supportedLocations),
      ticksRequired,
      ticksName,
      consumedMaterials,
      itemsProduced);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialProcessorDoodadDefinitionCopyWith<
          _$MaterialProcessorDoodadDefinition>
      get copyWith => __$$MaterialProcessorDoodadDefinitionCopyWithImpl<
          _$MaterialProcessorDoodadDefinition>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)
        digger,
    required TResult Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)
        regenerativeHarvestable,
    required TResult Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)
        materialProcessor,
    required TResult Function(
            DoodadDefinitionId id,
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
    TResult? Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)?
        digger,
    TResult? Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult? Function(
            DoodadDefinitionId id,
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
    TResult? Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)?
        materialProcessor,
    TResult? Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)?
        digger,
    TResult Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadDefinitionId id,
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
    TResult? Function(DiggerDoodadDefinition value)? digger,
    TResult? Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult? Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult? Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult? Function(HouseDoodadDefinition value)? house,
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
    return _$$MaterialProcessorDoodadDefinitionToJson(
      this,
    );
  }
}

abstract class MaterialProcessorDoodadDefinition extends DoodadDefinition
    implements MaterialProcessorDoodadInterface {
  const factory MaterialProcessorDoodadDefinition(
          {required final DoodadDefinitionId id,
          required final String name,
          required final String description,
          required final String imageAsset,
          required final String storeImageAsset,
          final bool userCanBuild,
          required final Set<TileType> supportedLocations,
          required final int ticksRequired,
          required final String ticksName,
          required final ItemContainer consumedMaterials,
          required final ItemContainer itemsProduced}) =
      _$MaterialProcessorDoodadDefinition;
  const MaterialProcessorDoodadDefinition._() : super._();

  factory MaterialProcessorDoodadDefinition.fromJson(
      Map<String, dynamic> json) = _$MaterialProcessorDoodadDefinition.fromJson;

  @override
  DoodadDefinitionId get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageAsset;
  @override
  String get storeImageAsset;
  @override
  bool get userCanBuild;
  @override
  Set<TileType> get supportedLocations;
  int get ticksRequired;
  String get ticksName;
  ItemContainer get consumedMaterials;
  ItemContainer get itemsProduced;
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
  @useResult
  $Res call(
      {DoodadDefinitionId id,
      String name,
      String description,
      String imageAsset,
      String storeImageAsset,
      bool userCanBuild,
      Set<TileType> supportedLocations,
      int populationLimit,
      PersonType peopleType});
}

/// @nodoc
class __$$HouseDoodadDefinitionCopyWithImpl<$Res>
    extends _$DoodadDefinitionCopyWithImpl<$Res, _$HouseDoodadDefinition>
    implements _$$HouseDoodadDefinitionCopyWith<$Res> {
  __$$HouseDoodadDefinitionCopyWithImpl(_$HouseDoodadDefinition _value,
      $Res Function(_$HouseDoodadDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageAsset = null,
    Object? storeImageAsset = null,
    Object? userCanBuild = null,
    Object? supportedLocations = null,
    Object? populationLimit = null,
    Object? peopleType = null,
  }) {
    return _then(_$HouseDoodadDefinition(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoodadDefinitionId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageAsset: null == imageAsset
          ? _value.imageAsset
          : imageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      storeImageAsset: null == storeImageAsset
          ? _value.storeImageAsset
          : storeImageAsset // ignore: cast_nullable_to_non_nullable
              as String,
      userCanBuild: null == userCanBuild
          ? _value.userCanBuild
          : userCanBuild // ignore: cast_nullable_to_non_nullable
              as bool,
      supportedLocations: null == supportedLocations
          ? _value._supportedLocations
          : supportedLocations // ignore: cast_nullable_to_non_nullable
              as Set<TileType>,
      populationLimit: null == populationLimit
          ? _value.populationLimit
          : populationLimit // ignore: cast_nullable_to_non_nullable
              as int,
      peopleType: null == peopleType
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
  final DoodadDefinitionId id;
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageAsset, imageAsset) ||
                other.imageAsset == imageAsset) &&
            (identical(other.storeImageAsset, storeImageAsset) ||
                other.storeImageAsset == storeImageAsset) &&
            (identical(other.userCanBuild, userCanBuild) ||
                other.userCanBuild == userCanBuild) &&
            const DeepCollectionEquality()
                .equals(other._supportedLocations, _supportedLocations) &&
            (identical(other.populationLimit, populationLimit) ||
                other.populationLimit == populationLimit) &&
            (identical(other.peopleType, peopleType) ||
                other.peopleType == peopleType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      imageAsset,
      storeImageAsset,
      userCanBuild,
      const DeepCollectionEquality().hash(_supportedLocations),
      populationLimit,
      peopleType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseDoodadDefinitionCopyWith<_$HouseDoodadDefinition> get copyWith =>
      __$$HouseDoodadDefinitionCopyWithImpl<_$HouseDoodadDefinition>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)
        digger,
    required TResult Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)
        regenerativeHarvestable,
    required TResult Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)
        materialProcessor,
    required TResult Function(
            DoodadDefinitionId id,
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
    TResult? Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)?
        digger,
    TResult? Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult? Function(
            DoodadDefinitionId id,
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
    TResult? Function(
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)?
        materialProcessor,
    TResult? Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer itemMined)?
        digger,
    TResult Function(
            DoodadDefinitionId id,
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
            ItemContainer resourceGenerated,
            int? manualEffortToHarvest,
            Map<int, String>? dynamicImageAssets)?
        regenerativeHarvestable,
    TResult Function(
            DoodadDefinitionId id,
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
            DoodadDefinitionId id,
            String name,
            String description,
            String imageAsset,
            String storeImageAsset,
            bool userCanBuild,
            Set<TileType> supportedLocations,
            int ticksRequired,
            String ticksName,
            ItemContainer consumedMaterials,
            ItemContainer itemsProduced)?
        materialProcessor,
    TResult Function(
            DoodadDefinitionId id,
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
    TResult? Function(DiggerDoodadDefinition value)? digger,
    TResult? Function(RegenerativeHarvestableDoodadDefinition value)?
        regenerativeHarvestable,
    TResult? Function(AreaHarvestableDoodadDefinition value)? areaHarvestable,
    TResult? Function(MaterialProcessorDoodadDefinition value)?
        materialProcessor,
    TResult? Function(HouseDoodadDefinition value)? house,
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
    return _$$HouseDoodadDefinitionToJson(
      this,
    );
  }
}

abstract class HouseDoodadDefinition extends DoodadDefinition
    implements HouseDoodadInterface {
  const factory HouseDoodadDefinition(
      {required final DoodadDefinitionId id,
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
  DoodadDefinitionId get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageAsset;
  @override
  String get storeImageAsset;
  @override
  bool get userCanBuild;
  @override
  Set<TileType> get supportedLocations;
  int get populationLimit;
  PersonType get peopleType;
  @override
  @JsonKey(ignore: true)
  _$$HouseDoodadDefinitionCopyWith<_$HouseDoodadDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}
