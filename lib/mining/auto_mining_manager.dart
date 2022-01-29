import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/event_manager.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/game_management/game_clock.dart';
import 'package:mining_game/inventory/inventory.dart';
import 'package:mining_game/inventory/item_container.dart';
import 'package:mining_game/inventory/item_directory.dart';
import 'package:mining_game/item_management/items/metadata/item_proto.dart';
import 'package:mining_game/persistence.dart';
import 'package:mining_game/planet/planet.dart';
import 'package:mining_game/planet/planet_tile.dart';
import 'package:mining_game/planet/point.dart';

part 'auto_mining_manager.freezed.dart';
part 'auto_mining_manager.g.dart';

final minersControllerProvider =
    StateNotifierProvider<MinersController, Miners>((ref) {
  return MinersController(
      ref.watch(gameEventManagerProvider),
      ref.watch(gameClockProvider),
      ref.watch(planetControllerProvider.notifier),
      ref.watch(inventoryStateProvider.notifier),
      ref.watch(dataStorageControllerProvider));
});

final storedMinersProvider =
    Provider.autoDispose<BuiltList<StoredMinerInstance>>(
        (ref) => ref.watch(minersControllerProvider).storage);

final activeMinersProvider =
    Provider.autoDispose<BuiltMap<PlanetPoint, ActiveMinerInstance>>(
        (ref) => ref.watch(minersControllerProvider).active);

class Miners {
  final BuiltMap<PlanetPoint, ActiveMinerInstance> active;
  final BuiltList<StoredMinerInstance> storage;

  const Miners({required this.active, required this.storage});
  Miners._empty()
      : active = BuiltMap(),
        storage = BuiltList();

  Miners rebuild(
          {Function(MapBuilder<PlanetPoint, MinerInstance>)? activeMinerUpdates,
          Function(ListBuilder<MinerInstance>)? storedMinerUpdates}) =>
      Miners(
          active: activeMinerUpdates != null
              ? active.rebuild(activeMinerUpdates)
              : active,
          storage: storedMinerUpdates != null
              ? storage.rebuild(storedMinerUpdates)
              : storage);
}

/// Manges all auto miners and notifies when the miners collection changes.
class MinersController extends StateNotifier<Miners> {
  final EventStreamManager _eventStreamManager;
  final PlanetController _planetController;
  final GameClock _gameClock;
  final InventoryStateController _inventoryController;

  Miners get activeAutoMiners => state;
  set activeAutoMiners(Miners activeAutoMiners) => state = activeAutoMiners;

  MinersController(
      this._eventStreamManager,
      this._gameClock,
      this._planetController,
      this._inventoryController,
      DataStorageController controller)
      : super(Miners._empty()) {
    void loadInitialData() async {
      final installedMinersBox = await Hive.openBox<ActiveMinerInstance>(
          DatabaseName.installedMiners0.name);
      final storedMinersBox = await Hive.openBox<StoredMinerInstance>(
          DatabaseName.storedMiners0.name);
      state = state.rebuild(activeMinerUpdates: (builder) {
        for (final miner in installedMinersBox.values) {
          builder[miner.planetPoint] = miner;
        }
      }, storedMinerUpdates: (builder) {
        for (final miner in storedMinersBox.values) {
          builder.add(miner);
        }
      });
    }

    void updateBox() async {
      final installedMinersBox = await Hive.openBox<ActiveMinerInstance>(
          DatabaseName.installedMiners0.name);
      final storedMinersBox = await Hive.openBox<StoredMinerInstance>(
          DatabaseName.storedMiners0.name);
      stream.listen((event) {
        installedMinersBox
          ..clear()
          ..addAll(event.active.values);
        storedMinersBox
          ..clear()
          ..addAll(event.storage);
      });
    }

    loadInitialData();
    updateBox();

    _eventStreamManager
        .streamForEventType<AutoMiningManagerEvent>()
        .listen((event) {
      switch (event.type) {
        case AutoMiningManagerEvents.INSTALL_AUTO_MINER:
          _installMinerEvent(event);
          break;
        // case AutoMiningManagerEvents.UPGRADE_MINER:
        //   _upgradeMiner(event);
        //   break;
        case AutoMiningManagerEvents.STORE_MINER:
          _storeMinerEvent(event);
          break;
        case AutoMiningManagerEvents.CREATE_MINER:
          _createMiner(event);
          break;
      }
    });
    _gameClock.schedulePeriodicAction(1, _processGameTick);
  }

  void _processGameTick() {
    activeAutoMiners.active.forEach((point, miner) {
      dig(point, ItemContainer({ItemKey.IRON: miner.proto.baseDamage}.build()));
    });
  }

  void dig(PlanetPoint point, ItemContainer damage) {
    _inventoryController.add(_planetController.dig(point, damage));
  }

  void _installMinerEvent(AutoMiningManagerEvent event) {
    event as InstallAutoMinerEvent;
    final miner = event.miner;
    state = state.rebuild(activeMinerUpdates: (builder) {
      builder[event.point] = MinerInstance.active(
          proto: miner.proto,
          planetPoint: event.point,
          inventory: ItemContainer.empty());
    }, storedMinerUpdates: (builder) {
      builder.remove(miner);
    });
  }

  void _createMiner(AutoMiningManagerEvent event) {
    event as CreateMinerEvent;
    activeAutoMiners = state.rebuild(
        storedMinerUpdates: (p0) =>
            p0.add(MinerInstance.stored(proto: event.definition)));
  }

  void _storeMinerEvent(AutoMiningManagerEvent event) {
    event as StoreMinerEvent;
    final eventMiner = event.miner;
    activeAutoMiners = activeAutoMiners.rebuild(
        activeMinerUpdates: (p0) =>
            p0.removeWhere((_, miner) => miner == eventMiner),
        storedMinerUpdates: (p0) => p0.add(MinerInstance.stored(
            proto: eventMiner.proto, drillItemId: eventMiner.drillItemId)));
  }

  // void _upgradeMiner(AutoMiningManagerEvent event) {
  //   event as UpgradeMinerEvent;
  //   // Interesting question, How do I know that the tile is in a valid location?
  //   // If it doesn't exist then I already paid for the upgrade.
  //   miners[event.planetTile]?.damage += event.damageIncrease;
  // }

  bool hasMiner(PlanetTile planetTile) =>
      activeAutoMiners.active.containsKey(planetTile);
}

abstract class AutoMiningManagerEvent
    extends GameEvent<AutoMiningManagerEvents> {
  @override
  AutoMiningManagerEvents get type;
}

enum AutoMiningManagerEvents {
  INSTALL_AUTO_MINER,
  // UPGRADE_MINER,
  STORE_MINER,
  CREATE_MINER
}

class CreateMinerEvent extends AutoMiningManagerEvent {
  @override
  final type = AutoMiningManagerEvents.CREATE_MINER;

  final MinerDefinition definition;

  CreateMinerEvent(this.definition);
}

class InstallAutoMinerEvent extends AutoMiningManagerEvent {
  @override
  final type = AutoMiningManagerEvents.INSTALL_AUTO_MINER;

  final PlanetPoint point;
  final StoredMinerInstance miner;

  InstallAutoMinerEvent({required this.miner, required this.point});
}

class StoreMinerEvent extends AutoMiningManagerEvent {
  @override
  final type = AutoMiningManagerEvents.STORE_MINER;

  final ActiveMinerInstance miner;

  StoreMinerEvent(this.miner);
}

// class UpgradeMinerEvent extends AutoMiningManagerEvent {
//   @override
//   final type = AutoMiningManagerEvents.UPGRADE_MINER;
//
//   final PlanetTile planetTile;
//   final int damageIncrease;
//
//   UpgradeMinerEvent({required this.planetTile, required this.damageIncrease});
// }

@freezed
class MinerDefinition with _$MinerDefinition {
  const MinerDefinition._();
  @HiveType(typeId: 11, adapterName: 'MinerDefinitionAdapter')
  const factory MinerDefinition(
      {@HiveField(2) required String name,
      @HiveField(3) required String description,
      @HiveField(4) required int radius,
      @HiveField(5) required int depth,
      @HiveField(6) required int baseDamage,
      @HiveField(7) required int hopperSize,
      @HiveField(8) required int fuelConsumption}) = _MinerDefinition;
}

@freezed
class MinerInstance with _$MinerInstance {
  @HiveType(typeId: 10, adapterName: 'StoredMinerInstanceAdapter')
  const factory MinerInstance.stored({
    @HiveField(1) required MinerDefinition proto,
    @HiveField(2) ItemId? drillItemId,
  }) = StoredMinerInstance;

  @HiveType(typeId: 37, adapterName: 'ActiveMinerInstanceAdapter')
  const factory MinerInstance.active({
    @HiveField(1) required MinerDefinition proto,
    @HiveField(2) ItemId? drillItemId,
    @HiveField(3) required PlanetPoint planetPoint,
    @HiveField(4) required ItemContainer inventory,
  }) = ActiveMinerInstance;
}
