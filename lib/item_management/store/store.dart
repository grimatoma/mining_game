import 'package:built_collection/built_collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/model_assets/store_listing_models.dart';
import 'package:mining_game/persistence/hive_manager.dart';

import 'shop_listing_definitions.dart';

final storeControllerProvider =
    StateNotifierProvider<StoreController, StoreListings>(
        (ref) => StoreController(ref.watch(inventoryStateProvider.notifier)));

class StoreListings {
  final BuiltList<ShopListing> listings;
  final BuiltSet<int> consumedListing;

  StoreListings(this.listings, this.consumedListing);

  StoreListings rebuild(Function(ListBuilder<ShopListing>) updates,
          Function(SetBuilder<int>) setUpdates) =>
      StoreListings(
          listings.rebuild(updates), consumedListing.rebuild(setUpdates));
}

class StoreController extends StateNotifier<StoreListings> {
  final InventoryStateController _inventory;

  StoreController(
    this._inventory,
  ) : super(StoreListings(BuiltList(), BuiltSet())) {
    final consumed =
        HiveManager.getIterable(BoxKey.CONSUMED_STORE_LISTINGS, intSetFromJson);
    state = StoreListings(
        storeListing
            .where((element) => !consumed.contains(element.id))
            .toBuiltList(),
        consumed);
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
        state = state.rebuild(
            (p0) => p0.remove(listing), (p0) => p0.add(listing.id));
      }
      _inventory.addItemWithGenerator(listing.item);
    });
  }
}
