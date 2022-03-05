import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/store/shop_listing_definitions.dart';

enum StoreEventType {
  BUY_LISTING,
  SELL_LISTING,
}

abstract class StoreEvent extends GameEvent<StoreEventType> {
  @override
  StoreEventType get type;
}

class BuyStoreEvent extends StoreEvent {
  @override
  final type = StoreEventType.BUY_LISTING;

  final BuyShopListing listing;

  BuyStoreEvent({required this.listing});
}

class SellStoreEvent extends StoreEvent {
  @override
  final type = StoreEventType.SELL_LISTING;

  final SellShopListing listing;

  SellStoreEvent({required this.listing});
}
