// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'requirement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemContainer _$ItemContainerFromJson(Map<String, dynamic> json) {
  return _ItemContainer.fromJson(json);
}

/// @nodoc
mixin _$ItemContainer {
  @ItemDefinitionIdKeyedMapConverter()
  Map<ItemDefinitionId, int> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemContainerCopyWith<ItemContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemContainerCopyWith<$Res> {
  factory $ItemContainerCopyWith(
          ItemContainer value, $Res Function(ItemContainer) then) =
      _$ItemContainerCopyWithImpl<$Res, ItemContainer>;
  @useResult
  $Res call(
      {@ItemDefinitionIdKeyedMapConverter() Map<ItemDefinitionId, int> items});
}

/// @nodoc
class _$ItemContainerCopyWithImpl<$Res, $Val extends ItemContainer>
    implements $ItemContainerCopyWith<$Res> {
  _$ItemContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<ItemDefinitionId, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemContainerCopyWith<$Res>
    implements $ItemContainerCopyWith<$Res> {
  factory _$$_ItemContainerCopyWith(
          _$_ItemContainer value, $Res Function(_$_ItemContainer) then) =
      __$$_ItemContainerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ItemDefinitionIdKeyedMapConverter() Map<ItemDefinitionId, int> items});
}

/// @nodoc
class __$$_ItemContainerCopyWithImpl<$Res>
    extends _$ItemContainerCopyWithImpl<$Res, _$_ItemContainer>
    implements _$$_ItemContainerCopyWith<$Res> {
  __$$_ItemContainerCopyWithImpl(
      _$_ItemContainer _value, $Res Function(_$_ItemContainer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_ItemContainer(
      null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<ItemDefinitionId, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemContainer extends _ItemContainer {
  const _$_ItemContainer(
      @ItemDefinitionIdKeyedMapConverter()
          final Map<ItemDefinitionId, int> items)
      : _items = items,
        super._();

  factory _$_ItemContainer.fromJson(Map<String, dynamic> json) =>
      _$$_ItemContainerFromJson(json);

  final Map<ItemDefinitionId, int> _items;
  @override
  @ItemDefinitionIdKeyedMapConverter()
  Map<ItemDefinitionId, int> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  @override
  String toString() {
    return 'ItemContainer(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemContainer &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemContainerCopyWith<_$_ItemContainer> get copyWith =>
      __$$_ItemContainerCopyWithImpl<_$_ItemContainer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemContainerToJson(
      this,
    );
  }
}

abstract class _ItemContainer extends ItemContainer {
  const factory _ItemContainer(
      @ItemDefinitionIdKeyedMapConverter()
          final Map<ItemDefinitionId, int> items) = _$_ItemContainer;
  const _ItemContainer._() : super._();

  factory _ItemContainer.fromJson(Map<String, dynamic> json) =
      _$_ItemContainer.fromJson;

  @override
  @ItemDefinitionIdKeyedMapConverter()
  Map<ItemDefinitionId, int> get items;
  @override
  @JsonKey(ignore: true)
  _$$_ItemContainerCopyWith<_$_ItemContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

Requirement _$RequirementFromJson(Map<String, dynamic> json) {
  return _Requirement.fromJson(json);
}

/// @nodoc
mixin _$Requirement {
  ItemContainer get itemCost => throw _privateConstructorUsedError;
  Set<Feature> get features => throw _privateConstructorUsedError;
  ItemContainer get itemsOwned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequirementCopyWith<Requirement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequirementCopyWith<$Res> {
  factory $RequirementCopyWith(
          Requirement value, $Res Function(Requirement) then) =
      _$RequirementCopyWithImpl<$Res, Requirement>;
  @useResult
  $Res call(
      {ItemContainer itemCost,
      Set<Feature> features,
      ItemContainer itemsOwned});

  $ItemContainerCopyWith<$Res> get itemCost;
  $ItemContainerCopyWith<$Res> get itemsOwned;
}

/// @nodoc
class _$RequirementCopyWithImpl<$Res, $Val extends Requirement>
    implements $RequirementCopyWith<$Res> {
  _$RequirementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCost = null,
    Object? features = null,
    Object? itemsOwned = null,
  }) {
    return _then(_value.copyWith(
      itemCost: null == itemCost
          ? _value.itemCost
          : itemCost // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Set<Feature>,
      itemsOwned: null == itemsOwned
          ? _value.itemsOwned
          : itemsOwned // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemContainerCopyWith<$Res> get itemCost {
    return $ItemContainerCopyWith<$Res>(_value.itemCost, (value) {
      return _then(_value.copyWith(itemCost: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemContainerCopyWith<$Res> get itemsOwned {
    return $ItemContainerCopyWith<$Res>(_value.itemsOwned, (value) {
      return _then(_value.copyWith(itemsOwned: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RequirementCopyWith<$Res>
    implements $RequirementCopyWith<$Res> {
  factory _$$_RequirementCopyWith(
          _$_Requirement value, $Res Function(_$_Requirement) then) =
      __$$_RequirementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ItemContainer itemCost,
      Set<Feature> features,
      ItemContainer itemsOwned});

  @override
  $ItemContainerCopyWith<$Res> get itemCost;
  @override
  $ItemContainerCopyWith<$Res> get itemsOwned;
}

/// @nodoc
class __$$_RequirementCopyWithImpl<$Res>
    extends _$RequirementCopyWithImpl<$Res, _$_Requirement>
    implements _$$_RequirementCopyWith<$Res> {
  __$$_RequirementCopyWithImpl(
      _$_Requirement _value, $Res Function(_$_Requirement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCost = null,
    Object? features = null,
    Object? itemsOwned = null,
  }) {
    return _then(_$_Requirement(
      itemCost: null == itemCost
          ? _value.itemCost
          : itemCost // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as Set<Feature>,
      itemsOwned: null == itemsOwned
          ? _value.itemsOwned
          : itemsOwned // ignore: cast_nullable_to_non_nullable
              as ItemContainer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Requirement extends _Requirement {
  const _$_Requirement(
      {this.itemCost = ItemContainer.getDefault,
      final Set<Feature> features = const <Feature>{},
      this.itemsOwned = ItemContainer.getDefault})
      : _features = features,
        super._();

  factory _$_Requirement.fromJson(Map<String, dynamic> json) =>
      _$$_RequirementFromJson(json);

  @override
  @JsonKey()
  final ItemContainer itemCost;
  final Set<Feature> _features;
  @override
  @JsonKey()
  Set<Feature> get features {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_features);
  }

  @override
  @JsonKey()
  final ItemContainer itemsOwned;

  @override
  String toString() {
    return 'Requirement(itemCost: $itemCost, features: $features, itemsOwned: $itemsOwned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Requirement &&
            (identical(other.itemCost, itemCost) ||
                other.itemCost == itemCost) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.itemsOwned, itemsOwned) ||
                other.itemsOwned == itemsOwned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, itemCost,
      const DeepCollectionEquality().hash(_features), itemsOwned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequirementCopyWith<_$_Requirement> get copyWith =>
      __$$_RequirementCopyWithImpl<_$_Requirement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequirementToJson(
      this,
    );
  }
}

abstract class _Requirement extends Requirement {
  const factory _Requirement(
      {final ItemContainer itemCost,
      final Set<Feature> features,
      final ItemContainer itemsOwned}) = _$_Requirement;
  const _Requirement._() : super._();

  factory _Requirement.fromJson(Map<String, dynamic> json) =
      _$_Requirement.fromJson;

  @override
  ItemContainer get itemCost;
  @override
  Set<Feature> get features;
  @override
  ItemContainer get itemsOwned;
  @override
  @JsonKey(ignore: true)
  _$$_RequirementCopyWith<_$_Requirement> get copyWith =>
      throw _privateConstructorUsedError;
}
