// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:hive/hive.dart';
// import 'package:mining_game/item_management/item_database.dart';
// import 'package:mining_game/item_management/wallet.dart';
//
// part 'items.freezed.dart';
// part 'items.g.dart';

// @freezed
// class Miner extends UpgradableItemDefinition with _$Miner {
//   const Miner._();
//
//   @HiveType(typeId: 1, adapterName: 'MinerProtoAdapter')
//   @HiveType(typeId: 1, adapterName: 'MinerInstanceAdapter')
//   const factory Miner.instance({
//     required MinerProto proto2,
//     required ItemId itemId,
//     @HiveField(1) required InstanceId instanceId,
//     @HiveField(3) ItemId? drillItemId,
//   }) = MinerInstance;
//   const factory Miner.proto(
//       {required ItemId itemId,
//       required String name,
//       required String description,
//       required int radius,
//       required int depth,
//       required int damage,
//       required int hopperSize,
//       required int fuelConsumption}) = MinerProto;
//
//   // @HiveType(typeId: 1, adapterName: 'MinerInstanceAdapter')
//   // const factory MinerInstance(
//   //     {@HiveField(1) required InstanceId instanceId,
//   //     @HiveField(2) required ItemId itemId,
//   //     @HiveField(3) ItemId? drillItemId,
//   //     @HiveField(4) int? potato}) = _MinerInstance;
// }
//
// void q() {
//   final m = Miner.instance(proto2: proto2, instanceId: instanceId );
//   m.
// }
//
// @freezed
// class MineTest with _$MineTest {
//   const factory MineTest(
//       {required ItemId itemId,
//       required String name,
//       required String description,
//       required int radius,
//       required int depth,
//       required int damage,
//       required int hopperSize,
//       required int fuelConsumption}) = MineTestProto;
//   const factory MineTest.instance({
//     required MineTestProto proto,
//     @HiveField(1) required InstanceId instanceId,
//     @HiveField(2) required ItemId itemId,
//     @HiveField(3) ItemId? drillItemId,
//   }) = Instance;
// }
