// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inventoryv3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Inventory _$InventoryFromJson(Map<String, dynamic> json) {
  return _Inventory.fromJson(json);
}

/// @nodoc
mixin _$Inventory {
  int get maxItems => throw _privateConstructorUsedError;

  @ItemDefinitionIdKeyedMapConverter()
  Map<ItemDefinitionId, int> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventoryCopyWith<Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryCopyWith<$Res> {
  factory $InventoryCopyWith(Inventory value, $Res Function(Inventory) then) =
      _$InventoryCopyWithImpl<$Res>;

  $Res call(
      {int maxItems,
      @ItemDefinitionIdKeyedMapConverter() Map<ItemDefinitionId, int> items});
}

/// @nodoc
class _$InventoryCopyWithImpl<$Res> implements $InventoryCopyWith<$Res> {
  _$InventoryCopyWithImpl(this._value, this._then);

  final Inventory _value;

  // ignore: unused_field
  final $Res Function(Inventory) _then;

  @override
  $Res call({
    Object? maxItems = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      maxItems: maxItems == freezed
          ? _value.maxItems
          : maxItems // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<ItemDefinitionId, int>,
    ));
  }
}

/// @nodoc
abstract class _$$_InventoryCopyWith<$Res> implements $InventoryCopyWith<$Res> {
  factory _$$_InventoryCopyWith(
          _$_Inventory value, $Res Function(_$_Inventory) then) =
      __$$_InventoryCopyWithImpl<$Res>;

  @override
  $Res call(
      {int maxItems,
      @ItemDefinitionIdKeyedMapConverter() Map<ItemDefinitionId, int> items});
}

/// @nodoc
class __$$_InventoryCopyWithImpl<$Res> extends _$InventoryCopyWithImpl<$Res>
    implements _$$_InventoryCopyWith<$Res> {
  __$$_InventoryCopyWithImpl(
      _$_Inventory _value, $Res Function(_$_Inventory) _then)
      : super(_value, (v) => _then(v as _$_Inventory));

  @override
  _$_Inventory get _value => super._value as _$_Inventory;

  @override
  $Res call({
    Object? maxItems = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_Inventory(
      maxItems == freezed
          ? _value.maxItems
          : maxItems // ignore: cast_nullable_to_non_nullable
              as int,
      items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<ItemDefinitionId, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Inventory extends _Inventory {
  const _$_Inventory(
      this.maxItems,
      @ItemDefinitionIdKeyedMapConverter()
          final Map<ItemDefinitionId, int> items)
      : _items = items,
        super._();

  factory _$_Inventory.fromJson(Map<String, dynamic> json) =>
      _$$_InventoryFromJson(json);

  @override
  final int maxItems;
  final Map<ItemDefinitionId, int> _items;

  @override
  @ItemDefinitionIdKeyedMapConverter()
  Map<ItemDefinitionId, int> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  @override
  String toString() {
    return 'Inventory(maxItems: $maxItems, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Inventory &&
            const DeepCollectionEquality().equals(other.maxItems, maxItems) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maxItems),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_InventoryCopyWith<_$_Inventory> get copyWith =>
      __$$_InventoryCopyWithImpl<_$_Inventory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InventoryToJson(
      this,
    );
  }
}

abstract class _Inventory extends Inventory {
  const factory _Inventory(
      final int maxItems,
      @ItemDefinitionIdKeyedMapConverter()
          final Map<ItemDefinitionId, int> items) = _$_Inventory;

  const _Inventory._() : super._();

  factory _Inventory.fromJson(Map<String, dynamic> json) =
      _$_Inventory.fromJson;

  @override
  int get maxItems;

  @override
  @ItemDefinitionIdKeyedMapConverter()
  Map<ItemDefinitionId, int> get items;

  @override
  @JsonKey(ignore: true)
  _$$_InventoryCopyWith<_$_Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}
