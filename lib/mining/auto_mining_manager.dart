import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/event_manager/event_manager.dart';
import 'package:mining_game/event_manager/game_event_manager.dart';
import 'package:mining_game/game_management/game_clock.dart';
import 'package:mining_game/inventory/inventory.dart';
import 'package:mining_game/inventory/item_container.dart';
import 'package:mining_game/inventory/item_definitions.dart';
import 'package:mining_game/inventory/item_directory.dart';
import 'package:mining_game/item_management/items/drill.dart';
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
      ref.watch(inventoryStateProvider.notifier));
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

  MinersController(this._eventStreamManager, this._gameClock,
      this._planetController, this._inventoryController)
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

        case AutoMiningManagerEvents.STORE_MINER:
          _storeMinerEvent(event);
          break;
        case AutoMiningManagerEvents.CREATE_MINER:
          _createMiner(event);
          break;
        case AutoMiningManagerEvents.DRILL_ATTACH:
          _drillAttach(event);
          break;
        case AutoMiningManagerEvents.DRILL_REMOVE:
          _drillRemove(event);
          break;
      }
    });
    _gameClock.schedulePeriodicAction(1, _processGameTick);
  }

  void _processGameTick() {
    activeAutoMiners.active.forEach((point, miner) {
      dig(point,
          ItemContainer({ItemKey.IRON: miner.definition.baseDamage}.build()));
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
          definition: miner.definition,
          planetPoint: event.point,
          drillItemId: miner.drillItemId,
          inventory: ItemContainer.empty());
    }, storedMinerUpdates: (builder) {
      builder.remove(miner);
    });
  }

  void _createMiner(AutoMiningManagerEvent event) {
    event as CreateMinerEvent;
    activeAutoMiners = state.rebuild(
        storedMinerUpdates: (p0) =>
            p0.add(MinerInstance.stored(definition: event.definition)));
  }

  void _storeMinerEvent(AutoMiningManagerEvent event) {
    event as StoreMinerEvent;
    final miner = event.miner;
    activeAutoMiners = activeAutoMiners.rebuild(
        activeMinerUpdates: (p0) =>
            p0.removeWhere((_, miner) => miner == miner),
        storedMinerUpdates: (p0) => p0.add(MinerInstance.stored(
            definition: miner.definition, drillItemId: miner.drillItemId)));
  }

  void _drillAttach(AutoMiningManagerEvent event) {
    event as DrillAttachEvent;
    _updateMinerWithDrill(event.miner, ItemKey.TEST_DRILL);
  }

  void _drillRemove(AutoMiningManagerEvent event) {
    event as DrillRemoveEvent;
    _updateMinerWithDrill(event.miner, null);
  }

  void _updateMinerWithDrill(MinerInstance miner, ItemKey? drill) {
    if (miner is ActiveMinerInstance) {
      activeAutoMiners = activeAutoMiners.rebuild(
          activeMinerUpdates: (p0) =>
              p0[miner.planetPoint] = miner.copyWith(drillItemId: drill));
    } else if (miner is StoredMinerInstance) {
      activeAutoMiners = activeAutoMiners.rebuild(
          storedMinerUpdates: (p0) => p0
            ..remove(miner)
            ..add(miner.copyWith(drillItemId: drill)));
    }
  }

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
  DRILL_ATTACH,
  STORE_MINER,
  CREATE_MINER,
  DRILL_REMOVE,
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

  StoreMinerEvent({required this.miner});
}

class DrillAttachEvent extends AutoMiningManagerEvent {
  @override
  final type = AutoMiningManagerEvents.DRILL_ATTACH;

  final MinerInstance miner;

  DrillAttachEvent({required this.miner});
}

class DrillRemoveEvent extends AutoMiningManagerEvent {
  @override
  final type = AutoMiningManagerEvents.DRILL_REMOVE;

  final MinerInstance miner;

  DrillRemoveEvent({required this.miner});
}

@freezed
class MinerDefinition extends BaseItemDefinition with _$MinerDefinition {
  const MinerDefinition._();
  @HiveType(typeId: 11, adapterName: 'MinerDefinitionAdapter')
  const factory MinerDefinition(
      {@HiveField(2) required String name,
      @HiveField(3) required String description,
      @HiveField(4) required int radius,
      @HiveField(5) required int depth,
      @HiveField(6) required int baseDamage,
      // Should this be for all resources or per resource?
      @HiveField(7) required int baseHopperSize,
      @HiveField(8) required int fuelConsumption}) = _MinerDefinition;
}

@freezed
class MinerInstance with _$MinerInstance {
  @HiveType(typeId: 10, adapterName: 'StoredMinerInstanceAdapter')
  const factory MinerInstance.stored({
    @HiveField(1) required MinerDefinition definition,
    @HiveField(2) ItemKey? drillItemId,
  }) = StoredMinerInstance;

  @HiveType(typeId: 37, adapterName: 'ActiveMinerInstanceAdapter')
  @With<ActiveMinerMethods>()
  const factory MinerInstance.active({
    @HiveField(1) required MinerDefinition definition,
    @HiveField(2) required ItemKey? drillItemId,
    @HiveField(3) required PlanetPoint planetPoint,
    @HiveField(4) required ItemContainer inventory,
  }) = ActiveMinerInstance;
}

mixin ActiveMinerMethods {
  MinerDefinition get definition;
  ItemKey? get drillItemId;

  int get baseDamage => definition.baseDamage + drillDamage;
  int get drillDamage => drill?.damage ?? 0;
  int get totalDamage => baseDamage + drillDamage;

  bool get hasDrill => drillItemId != null;
  DrillDefinition? get drill => drillItemId != null
      ? ItemDirectory.directory.getDefinition<DrillDefinition>(drillItemId!)
      : null;
}
