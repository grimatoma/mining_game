import 'package:mining_game/doodads/base/doodad_id.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/item_management/store/shop_listing_definitions.dart';
import 'package:mining_game/item_management/store/store.dart';
import 'package:mining_game/quests/townsfolk_definition.dart';

final _storesListings = <Shop, Iterable<ShopListing>>{
  Shop.PLANET_BUY_MENU: [
    const ShopListing.doodadListing(
      id: ShopListingDefinitionId('8'),
      cost: ItemContainer.getDefault,
      doodadId: DoodadId.tree,
      consumable: false,
    ),
    ShopListing.doodadListing(
      id: const ShopListingDefinitionId('9'),
      cost: ItemContainer.single(Items.WOOD, 4),
      doodadId: DoodadId.treeCutterHut,
      consumable: false,
    ),
    ShopListing.doodadListing(
      id: const ShopListingDefinitionId('15'),
      cost: ItemContainer.single(Items.WOOD, 8),
      doodadId: DoodadId.sawMill,
      consumable: false,
    ),
    const ShopListing.doodadListing(
      id: ShopListingDefinitionId('10'),
      cost: ItemContainer.getDefault,
      doodadId: DoodadId.rawFish,
      consumable: false,
    ),
    ShopListing.doodadListing(
      id: const ShopListingDefinitionId('11'),
      cost: ItemContainer.single(Items.WOOD, 4),
      doodadId: DoodadId.fisherman,
      consumable: false,
    ),
    ShopListing.doodadListing(
      id: const ShopListingDefinitionId('13'),
      cost: ItemContainer.single(Items.WOOD_PLANK, 2),
      doodadId: DoodadId.houseLevel1,
      consumable: false,
    ),
    ShopListing.doodadListing(
      id: const ShopListingDefinitionId('12'),
      cost: ItemContainer({
        Items.WOOD_PLANK: 2,
        Items.CREDIT: 5,
      }),
      doodadId: DoodadId.ironDigger,
      consumable: false,
    ),
    ShopListing.doodadListing(
      id: const ShopListingDefinitionId('14'),
      cost: ItemContainer({
        Items.WOOD_PLANK: 4,
        Items.CREDIT: 5,
      }),
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
    id: const ShopListingDefinitionId('8'),
    cost: ItemContainer.single(Items.IRON_ORE, 5),
    item: Items.CREDIT,
    quantity: 25,
    consumable: false,
  ),
  ShopListing.itemListing(
    id: const ShopListingDefinitionId('9'),
    cost: ItemContainer.single(Items.CREDIT, 1),
    item: Items.ROCK,
    quantity: 5,
    consumable: false,
  ),
  ShopListing.itemListing(
      id: const ShopListingDefinitionId('3'),
      cost: ItemContainer.single(Items.CREDIT, 5),
      item: Items.MINER1,
      consumable: true),
  ShopListing.itemListing(
      id: const ShopListingDefinitionId('4'),
      cost: ItemContainer.single(Items.CREDIT, 2),
      item: Items.MINER2,
      consumable: true),
  ShopListing.itemListing(
      id: const ShopListingDefinitionId('5'),
      cost: ItemContainer.single(Items.CREDIT, 3),
      item: Items.MINER3,
      consumable: true),
  ShopListing.itemListing(
      id: const ShopListingDefinitionId('6'),
      cost: ItemContainer.single(Items.CREDIT, 4),
      item: Items.MINER4,
      consumable: true),
  ShopListing.itemListing(
      id: const ShopListingDefinitionId('7'),
      cost: ItemContainer.single(Items.CREDIT, 7),
      item: Items.MINER5,
      consumable: true),
];
