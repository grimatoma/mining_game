import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/item_management/store/shop_listing_definitions.dart';

enum StoreEventType {
  TRANSACT,
}

abstract class StoreEvent extends GameEvent<StoreEventType> {
  @override
  StoreEventType get type;
}

class StoreTransactionEvent extends StoreEvent {
  @override
  final type = StoreEventType.TRANSACT;

  final ShopListing listing;

  StoreTransactionEvent(this.listing);
}
