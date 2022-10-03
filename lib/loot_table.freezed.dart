// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loot_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LootTable {
  List<ItemProbability> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LootTableCopyWith<LootTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LootTableCopyWith<$Res> {
  factory $LootTableCopyWith(LootTable value, $Res Function(LootTable) then) =
      _$LootTableCopyWithImpl<$Res>;
  $Res call({List<ItemProbability> items});
}

/// @nodoc
class _$LootTableCopyWithImpl<$Res> implements $LootTableCopyWith<$Res> {
  _$LootTableCopyWithImpl(this._value, this._then);

  final LootTable _value;
  // ignore: unused_field
  final $Res Function(LootTable) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemProbability>,
    ));
  }
}

/// @nodoc
abstract class _$$_LootTableCopyWith<$Res> implements $LootTableCopyWith<$Res> {
  factory _$$_LootTableCopyWith(
          _$_LootTable value, $Res Function(_$_LootTable) then) =
      __$$_LootTableCopyWithImpl<$Res>;
  @override
  $Res call({List<ItemProbability> items});
}

/// @nodoc
class __$$_LootTableCopyWithImpl<$Res> extends _$LootTableCopyWithImpl<$Res>
    implements _$$_LootTableCopyWith<$Res> {
  __$$_LootTableCopyWithImpl(
      _$_LootTable _value, $Res Function(_$_LootTable) _then)
      : super(_value, (v) => _then(v as _$_LootTable));

  @override
  _$_LootTable get _value => super._value as _$_LootTable;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_LootTable(
      items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemProbability>,
    ));
  }
}

/// @nodoc

class _$_LootTable extends _LootTable {
  _$_LootTable(final List<ItemProbability> items)
      : _items = items,
        super._();

  final List<ItemProbability> _items;
  @override
  List<ItemProbability> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'LootTable(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LootTable &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_LootTableCopyWith<_$_LootTable> get copyWith =>
      __$$_LootTableCopyWithImpl<_$_LootTable>(this, _$identity);
}

abstract class _LootTable extends LootTable {
  factory _LootTable(final List<ItemProbability> items) = _$_LootTable;
  _LootTable._() : super._();

  @override
  List<ItemProbability> get items;
  @override
  @JsonKey(ignore: true)
  _$$_LootTableCopyWith<_$_LootTable> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemProbability _$ItemProbabilityFromJson(Map<String, dynamic> json) {
  return _ItemProbability.fromJson(json);
}

/// @nodoc
mixin _$ItemProbability {
  ItemDefinitionId get id => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemProbabilityCopyWith<ItemProbability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemProbabilityCopyWith<$Res> {
  factory $ItemProbabilityCopyWith(
          ItemProbability value, $Res Function(ItemProbability) then) =
      _$ItemProbabilityCopyWithImpl<$Res>;
  $Res call({ItemDefinitionId id, int weight, int min, int max});
}

/// @nodoc
class _$ItemProbabilityCopyWithImpl<$Res>
    implements $ItemProbabilityCopyWith<$Res> {
  _$ItemProbabilityCopyWithImpl(this._value, this._then);

  final ItemProbability _value;
  // ignore: unused_field
  final $Res Function(ItemProbability) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? weight = freezed,
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ItemProbabilityCopyWith<$Res>
    implements $ItemProbabilityCopyWith<$Res> {
  factory _$$_ItemProbabilityCopyWith(
          _$_ItemProbability value, $Res Function(_$_ItemProbability) then) =
      __$$_ItemProbabilityCopyWithImpl<$Res>;
  @override
  $Res call({ItemDefinitionId id, int weight, int min, int max});
}

/// @nodoc
class __$$_ItemProbabilityCopyWithImpl<$Res>
    extends _$ItemProbabilityCopyWithImpl<$Res>
    implements _$$_ItemProbabilityCopyWith<$Res> {
  __$$_ItemProbabilityCopyWithImpl(
      _$_ItemProbability _value, $Res Function(_$_ItemProbability) _then)
      : super(_value, (v) => _then(v as _$_ItemProbability));

  @override
  _$_ItemProbability get _value => super._value as _$_ItemProbability;

  @override
  $Res call({
    Object? id = freezed,
    Object? weight = freezed,
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_$_ItemProbability(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ItemDefinitionId,
      weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemProbability implements _ItemProbability {
  const _$_ItemProbability(this.id, this.weight, {this.min = 1, this.max = 1});

  factory _$_ItemProbability.fromJson(Map<String, dynamic> json) =>
      _$$_ItemProbabilityFromJson(json);

  @override
  final ItemDefinitionId id;
  @override
  final int weight;
  @override
  @JsonKey()
  final int min;
  @override
  @JsonKey()
  final int max;

  @override
  String toString() {
    return 'ItemProbability(id: $id, weight: $weight, min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemProbability &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$$_ItemProbabilityCopyWith<_$_ItemProbability> get copyWith =>
      __$$_ItemProbabilityCopyWithImpl<_$_ItemProbability>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemProbabilityToJson(
      this,
    );
  }
}

abstract class _ItemProbability implements ItemProbability {
  const factory _ItemProbability(final ItemDefinitionId id, final int weight,
      {final int min, final int max}) = _$_ItemProbability;

  factory _ItemProbability.fromJson(Map<String, dynamic> json) =
      _$_ItemProbability.fromJson;

  @override
  ItemDefinitionId get id;
  @override
  int get weight;
  @override
  int get min;
  @override
  int get max;
  @override
  @JsonKey(ignore: true)
  _$$_ItemProbabilityCopyWith<_$_ItemProbability> get copyWith =>
      throw _privateConstructorUsedError;
}
