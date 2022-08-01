import 'package:mining_game/doodads/base/doodad_interface_and_instance.dart';

abstract class HouseDoodadInterface extends DoodadInterface {
  int get populationLimit;

  PersonType get peopleType;
}

class HouseDoodadInstance extends DoodadInstance<HouseDoodadInterface>
    implements HouseDoodadInterface {
  final HouseManager _houseManager;

  HouseDoodadInstance(super.ref, super.planetManager, super.parent,
      super.definition, super.notifyListeners)
      : _houseManager = planetManager.houseManager {
    _houseManager.register(this);
  }

  @override
  PersonType get peopleType => definition.peopleType;

  @override
  int get populationLimit => definition.populationLimit;

  @override
  void update() {}

  @override
  void onDestroy() {
    _houseManager.deregister(this);
  }
}

enum PersonType {
  peasent,
  worker,
  middleClass,
}

class HouseManager {
  final Set<HouseDoodadInstance> houses = {};

  void update() {
    // Dont update every time. instead do updates every 10?
  }

  void register(HouseDoodadInstance instance) {
    houses.add(instance);
  }

  void deregister(HouseDoodadInstance instance) {
    houses.remove(instance);
  }
// register
}

/**
 * House.
 *
 * Has a population
 * Consumes resources (food) at a fixed rate per person.
 * If there isnt enough resources then population leaves.
 * <-- Should this be a shared pool so food can be equally shared for all houses? Probably not
 *
 * Population for research?
 * For efficency?
 * For credits/gold currency?//Taxes? adjustable (Food to taxes ratio?)
 */

/**
 * What is the game loop?
 *
 * Population sizes needed to unlock new areas of land.
 * The more population the less time it takes to unlock (clean up the land)
 * Can upgrade the population with better tools which makes them more efficent
 *
 * Population requires resources like farming/fishing
 * Population has quests asking for items to make them happy
 */
