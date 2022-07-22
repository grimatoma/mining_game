import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/planet/planet_manager.dart';

part 'buildings.freezed.dart';

enum TileType {
  Empty,
  Mountain,
  Grass,
  IronDeposit,
  Tree,
  Water,
}

// try and hide?
abstract class DoodadInterface {
  const DoodadInterface();

  String get imageAsset;

  String get storeImageAsset;

  String get name;

  String get description;

  Set<TileType> get supportedLocations;
}

abstract class TickableDoodadDefinition implements DoodadInterface {
  int get ticksRequired;
}

const digger = Digger(
  name: 'Iron Digger',
  description:
      'Digs for resources and will store them in the planets resource depot.',
  imageAsset: 'assets/images/drills/5.png',
  storeImageAsset: 'assets/images/drills/5.png',
  supportedLocations: {TileType.IronDeposit},
  ticksRequired: 5,
);

const tree = Tree(
    name: 'Tree',
    description:
        'A tree that flows in the wind. Must be cleared before a building can be placed here.',
    imageAsset: 'assets/images/tree.png',
    storeImageAsset: 'assets/images/tiles/03Trees/jungle_heavy.png',
    supportedLocations: {TileType.Grass});

@freezed
class Doodad with _$Doodad implements DoodadInterface {
  const Doodad._();

  @Implements<TickableDoodadDefinition>()
  const factory Doodad.digger({
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
  }) = Digger;

  const factory Doodad.tree({
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    required Set<TileType> supportedLocations,
  }) = Tree;

  @Implements<TickableDoodadDefinition>()
  const factory Doodad.smelter({
    required String name,
    required String description,
    required String imageAsset,
    required String storeImageAsset,
    required Set<TileType> supportedLocations,
    required int ticksRequired,
  }) = Smelter;

  DoodadInstance create(Ref<Object?> ref, Doodad doodad) {
    return doodad.map(
        digger: (d) => DiggerInstance(ref, d),
        tree: (d) => TreeInstance(ref, d),
        smelter: (d) => SmelterInstance(ref, d));
  }
}

abstract class DoodadInstance<DefinitionT extends DoodadInterface>
    implements DoodadInterface {
  Ref ref;
  DefinitionT definition;

  DoodadInstance(this.ref, this.definition);

  void update();

  @override
  String get description => definition.description;

  @override
  String get imageAsset => definition.imageAsset;

  @override
  String get name => definition.name;

  @override
  String get storeImageAsset => definition.storeImageAsset;

  @override
  Set<TileType> get supportedLocations => definition.supportedLocations;
}

class DiggerInstance extends TickableDoodadInstance<Digger> {
  DiggerInstance(super.ref, super.definition);

  @override
  void ticksMet() {
    ref
        .read(inventoryStateProvider.notifier)
        .addItems(Items.IRON.generateItemInstance(2));
  }

  @override
  bool canTick() => true;
}

abstract class TickableDoodadInstance<
        DefinitionT extends TickableDoodadDefinition>
    extends DoodadInstance<DefinitionT> implements TickableDoodadDefinition {
  final SimpleStateProvider<int> currentTickState;

  @override
  int get ticksRequired => definition.ticksRequired;

  TickableDoodadInstance(super.ref, super.definition)
      : currentTickState = SimpleStateProvider<int>(ref, (ref) => 0) {
    print('created instance');
  }

  bool canTick();

  @override
  @mustCallSuper
  void update() {
    if (!canTick()) return;
    final newVal = currentTickState.read + 1;
    currentTickState.updateState = newVal;
    if (newVal <= ticksRequired) return;
    currentTickState.updateState = 1;
    print('Updating Digger!');
    ticksMet();
  }

  void ticksMet();
}

class TreeInstance extends DoodadInstance<Tree> {
  TreeInstance(super.ref, super.definition);

  @override
  void update() {}
}

class SmelterInstance extends TickableDoodadInstance<Smelter> {
  final InventoryStateController _inventoryController;
  final materials = ItemRequirement.fromMap({Items.IRON.id: 2});

  BuiltList<ItemInstance> get itemsProduced =>
      Items.IRON_BAR.generateItemInstance(2);
  final SimpleStateProvider<bool> _hasResourceState;

  ReadOnlySimpleStateProvider<bool> get hasResources => _hasResourceState;

  SmelterInstance(super.ref, super.definition)
      : _inventoryController = ref.read(inventoryStateProvider.notifier),
        _hasResourceState = SimpleStateProvider<bool>(ref, (ref) => false);

  @override
  final ticksRequired = 8;

  @override
  bool canTick() {
    if (hasResources.read) return true;
    if (_inventoryController.subtractItemRequirement(materials)) {
      _hasResourceState.updateState = true;
      return true;
    }
    return false;
  }

  @override
  void ticksMet() {
    _inventoryController.addItems(itemsProduced);
    ref.read(inventoryStateProvider.notifier).addItems(itemsProduced);
  }
}
