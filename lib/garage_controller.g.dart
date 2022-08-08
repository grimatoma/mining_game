// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'garage_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GarageState _$$_GarageStateFromJson(Map<String, dynamic> json) =>
    _$_GarageState(
      BuiltMap<int, SlotState>.of((json['slots'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            int.parse(k), SlotState.fromJson(e as Map<String, dynamic>)),
      )),
    );

Map<String, dynamic> _$$_GarageStateToJson(_$_GarageState instance) =>
    <String, dynamic>{
      'slots': instance.slots
          .toMap()
          .map((k, e) => MapEntry(k.toString(), e.toJson())),
    };

_$SlotWithMiner _$$SlotWithMinerFromJson(Map<String, dynamic> json) =>
    _$SlotWithMiner(
      minerId: ItemInstanceId.fromJson(json['minerId'] as Map<String, dynamic>),
      index: json['index'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SlotWithMinerToJson(_$SlotWithMiner instance) =>
    <String, dynamic>{
      'minerId': instance.minerId.toJson(),
      'index': instance.index,
      'runtimeType': instance.$type,
    };

_$LockedSlot _$$LockedSlotFromJson(Map<String, dynamic> json) => _$LockedSlot(
      index: json['index'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LockedSlotToJson(_$LockedSlot instance) =>
    <String, dynamic>{
      'index': instance.index,
      'runtimeType': instance.$type,
    };

_$EmptySlot _$$EmptySlotFromJson(Map<String, dynamic> json) => _$EmptySlot(
      index: json['index'] as int,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EmptySlotToJson(_$EmptySlot instance) =>
    <String, dynamic>{
      'index': instance.index,
      'runtimeType': instance.$type,
    };
