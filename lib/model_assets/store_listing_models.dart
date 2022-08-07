import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/item_management/store/shop_listing_definitions.dart';

final storeListing = [
  ShopListing.itemListing(
      id: 1,
      cost: ItemRequirement.single(Items.IRON, 5),
      item: ItemInstanceGenerator(Items.CREDIT, 25)),
  ShopListing.itemListing(
      id: 2,
      cost: ItemRequirement.single(Items.CREDIT, 1),
      item: ItemInstanceGenerator(Items.ROCK, 5)),
  ShopListing.itemListing(
      id: 3,
      cost: ItemRequirement.single(Items.CREDIT, 5),
      item: ItemInstanceGenerator(Items.MINER1),
      consumable: true),
  ShopListing.itemListing(
      id: 4,
      cost: ItemRequirement.single(Items.CREDIT, 2),
      item: ItemInstanceGenerator(Items.MINER2),
      consumable: true),
  ShopListing.itemListing(
      id: 5,
      cost: ItemRequirement.single(Items.CREDIT, 3),
      item: ItemInstanceGenerator(Items.MINER3),
      consumable: true),
  ShopListing.itemListing(
      id: 6,
      cost: ItemRequirement.single(Items.CREDIT, 4),
      item: ItemInstanceGenerator(Items.MINER4),
      consumable: true),
  ShopListing.itemListing(
      id: 7,
      cost: ItemRequirement.single(Items.CREDIT, 7),
      item: ItemInstanceGenerator(Items.MINER5),
      consumable: true),
];
