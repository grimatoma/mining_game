import 'package:built_collection/src/list.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/items/item_container.dart';
import 'package:mining_game/mining/miner.dart';

import 'shop_listing_definitions.dart';

final storeListings = <ShopListing>[
  ItemStackShopListing(
      itemKey: ItemKey.ROCK,
      quantity: 5,
      cost: ItemContainer.create({ItemKey.IRON: 1}),
      consumable: false),
  ItemStackShopListing(
      itemKey: ItemKey.TEST_DRILL,
      quantity: 1,
      cost: ItemContainer.create({ItemKey.IRON: 15}),
      consumable: false),
  MinerShopListing(
      cost: ItemContainer.create({ItemKey.IRON: 5}),
      definition: const MinerDefinition(
          name: 'Junk Miner',
          description:
              'Salvaged from a garage sale. Barely functional and guzzles gas',
          radius: 1,
          depth: 1,
          baseDamage: 1,
          baseHopperSize: 50,
          fuelConsumption: 5,
          image: 'images/drills/1.jpg')),
  MinerShopListing(
      cost: ItemContainer.create({ItemKey.IRON: 5}),
      definition: const MinerDefinition(
          name: 'Basic Miner',
          description: 'Generic off the shelf miner',
          radius: 2,
          depth: 1,
          baseDamage: 2,
          baseHopperSize: 100,
          fuelConsumption: 5,
          image: 'images/drills/2.jpg')),
  MinerShopListing(
      cost: ItemContainer.create({ItemKey.IRON: 5}),
      definition: const MinerDefinition(
          name: 'Test Miner 3',
          description: 'this is the third miner',
          radius: 1,
          depth: 1,
          baseDamage: 1,
          baseHopperSize: 50,
          fuelConsumption: 5,
          image: 'images/drills/3.jpg')),
  MinerShopListing(
      cost: ItemContainer.create({ItemKey.IRON: 5}),
      definition: const MinerDefinition(
          name: 'Test Miner 4',
          description: 'this is the 4 miner',
          radius: 1,
          depth: 1,
          baseDamage: 1,
          baseHopperSize: 50,
          fuelConsumption: 5,
          image: 'images/drills/4.jpg')),
  MinerShopListing(
      cost: ItemContainer.create({ItemKey.IRON: 5}),
      definition: const MinerDefinition(
          name: 'Test Miner 5',
          description: 'this is the 5 miner',
          radius: 1,
          depth: 1,
          baseDamage: 1,
          baseHopperSize: 50,
          fuelConsumption: 5,
          image: 'images/drills/5.png')),
].build();
