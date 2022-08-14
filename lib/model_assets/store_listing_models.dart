import 'package:mining_game/doodads/base/doodad_id.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/item_management/store/shop_listing_definitions.dart';
import 'package:mining_game/item_management/store/store.dart';

final _storesListings = <Shop, Iterable<ShopListing>>{
  Shop.PLANET_BUY_MENU: [
    const ShopListing.doodadListing(
      id: 8,
      cost: ItemRequirement({}),
      doodadId: DoodadId.tree,
      consumable: false,
    ),
    ShopListing.doodadListing(
      id: 9,
      cost: ItemRequirement({
        Items.CREDIT: 5,
        Items.WOOD: 10,
      }),
      doodadId: DoodadId.treeCutterHut,
      consumable: false,
    ),
    ShopListing.doodadListing(
      id: 15,
      cost: ItemRequirement.single(Items.CREDIT, 1),
      doodadId: DoodadId.sawMill,
      consumable: false,
    ),
    ShopListing.doodadListing(
      id: 13,
      cost: ItemRequirement.single(Items.CREDIT, 1),
      doodadId: DoodadId.houseLevel1,
      consumable: false,
    ),
    ShopListing.doodadListing(
      id: 10,
      cost: ItemRequirement.single(Items.CREDIT, 1),
      doodadId: DoodadId.rawFish,
      consumable: false,
    ),
    ShopListing.doodadListing(
      id: 11,
      cost: ItemRequirement.single(Items.CREDIT, 1),
      doodadId: DoodadId.fisherman,
      consumable: false,
    ),
    ShopListing.doodadListing(
      id: 12,
      cost: ItemRequirement.single(Items.CREDIT, 1),
      doodadId: DoodadId.ironDigger,
      consumable: false,
    ),
    ShopListing.doodadListing(
      id: 14,
      cost: ItemRequirement.single(Items.CREDIT, 1),
      doodadId: DoodadId.ironSmelter,
      consumable: false,
    ),
  ],
  Shop.STORE_MAIN_NAV: _mainNavStore,
};

Iterable<ShopListing> getShopListings(Shop shop) =>
    _storesListings[shop] ?? <ShopListing>[];

final _mainNavStore = [
  ShopListing.itemListing(
      id: 1,
      cost: ItemRequirement.single(Items.IRON_ORE, 5),
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
