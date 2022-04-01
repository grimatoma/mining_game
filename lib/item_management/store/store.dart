import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventory2.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_directory.dart';
import 'package:mining_game/item_management/item_keys.dart';

import 'shop_listing_definitions.dart';

final storeControllerProvider =
    StateNotifierProvider<StoreController, StoreListings>(
        (ref) => StoreController(ref.watch(inventoryStateProvider2.notifier)));

class StoreListings {
  final BuiltList<ShopListing> listings;

  StoreListings(this.listings);

  StoreListings rebuild(Function(ListBuilder<ShopListing>) updates) =>
      StoreListings(listings.rebuild(updates));
}

class StoreController extends StateNotifier<StoreListings> {
  final InventoryStateController2 _inventory;

  StoreController(
    this._inventory,
  ) : super(StoreListings(<ShopListing>[].build())) {
    print(ItemShopListing(
            id: 1,
            cost: ItemRequirement({
              ItemKeys.CREDIT: 1,
            }.build()),
            item: ItemInstanceGenerator(ItemKeys.CREDIT, 50))
        .toJson());
    void initStore() async {
      state = StoreListings(await ItemDirectory.parseJsonList(
          'assets/json/store_listings.json', ShopListing.fromJson));
    }

    initStore();
  }

  bool canBuy(ShopListing listing) =>
      _inventory.meetsRequirements(listing.cost);

  // bool canSellItemListing(SellItemsShopListing listing) =>
  //     _inventory.meetsRequirements(listing.items);

  void clickListing(ShopListing listing) {
    listing.map(itemListing: (listing) {
      if (!canBuy(listing)) return;
      _inventory.subtractItemRequirement(listing.cost);
      if (listing.consumable) {
        state = state.rebuild((p0) => p0.remove(listing));
      }
      _inventory.addItemWithGenerator(listing.item);
    });
  }
}
