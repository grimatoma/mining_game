import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mining_game/item_management/wallet.dart';

part 'items.freezed.dart';
// part 'items.g.dart';

enum ItemType {
  MINER,
  SCANNER,
}


abstract class Item {
  ItemType get itemType;
  int get id;
  String get name;
  String get description;

  const Item();
}


@freezed
class ShopItem with _$ShopItem {
  const ShopItem._();

  const factory ShopItem({required Item item, required Resources cost}) =
      _ShopItem;

  // factory ShopItem.fromJson(Map<String, dynamic> json) =>
  //     _$ShopItemFromJson(json);
}

@freezed
class Miner extends Item with _$Miner {
  @override
  ItemType get itemType => ItemType.MINER;

  const Miner._();

  const factory Miner(
      {required int id,
      required String name,
      required String description,
      required int radius,
      required int depth,
      required int damage,
      required int hopperSize,
      required int fuelConsumption}) = _Miner;

  // factory Miner.fromJson(Map<String, dynamic> json) => _$MinerFromJson(json);
}

@freezed
class Scanner extends Item with _$Scanner {
  @override
  ItemType get itemType => ItemType.SCANNER;

  const Scanner._();

  const factory Scanner(
      {required int id,
      required String name,
      required String description,
      required int radius,
      required int depth}) = _Scanner;

  // factory Scanner.fromJson(Map<String, dynamic> json) =>
  //     _$ScannerFromJson(json);
}
