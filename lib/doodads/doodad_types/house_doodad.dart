import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mining_game/doodads/base/doodad_definition.dart';
import 'package:mining_game/doodads/base/doodad_interface_and_instance.dart';
import 'package:mining_game/doodads/base/tickable_doodad.dart';
import 'package:mining_game/game_management/game_configs.dart';
import 'package:mining_game/item_management/inventory/inventory.dart';
import 'package:mining_game/item_management/item_definition.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/planet/planet_manager.dart';
import 'package:mining_game/widgets/planet_page.dart';

part 'house_doodad.g.dart';

abstract class HouseDoodadInterface extends DoodadInterface {
  int get populationLimit;

  PersonType get peopleType;
}

@JsonSerializable(
  ignoreUnannotated: true,
  createFactory: false,
)
class HouseDoodadInstance extends DoodadInstance<HouseDoodadDefinition>
    implements HouseDoodadInterface {
  @override
  Map<String, dynamic> toJson() => _$HouseDoodadInstanceToJson(this);

  late final HouseManager _houseManager;

  HouseDoodadInstance(super.pack) {
    _houseManager = planetManager.houseManager;
    _houseManager.register(this);
  }

  @override
  void init() {}

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

  int _currentPopulationValue = 0;

  int get currentPopulation => _currentPopulationValue;

  set _currentPopulation(int populationCount) {
    _currentPopulationValue = populationCount;
    notifyListeners();
  }

  @override
  Widget? get statusWidget => HouseStatusWidget(this);
}

enum PersonType {
  peasant,
  worker,
  middleClass,
}

// const personConsumptionRates = {
//   PersonType.peasant: 0.5,
//   PersonType.worker: 2,
// };

class HouseManager with Tickable {
  // // TODO make this scalable
  // double personFoodConsumption = 1;
  final Ref _ref;
  final Set<HouseDoodadInstance> houses = {};

  HouseManager(this._ref)
      : ticksRequired =
            _ref.read(gameConfigsProvider).houseManagerTicksPerUpdate {
    print('not loading json');
    currentTickStateProvider = SimpleStateProvider<int>(_ref, (ref) => 0);
  }

  @override
  void ticksMet() {
    // Dont update every time. instead do updates every 10?

    final startingFood =
        _ref.read(inventoryCountsStateProvider)[Items.FOOD] ?? 0;
    var remainingFood = startingFood;
    // var consumedFood = 0;
    final r = Random();
    const personIncreaseRandomOdds = 2;
    for (final house in houses.toList()..shuffle()) {
      if (remainingFood > house.currentPopulation) {
        remainingFood -= house.currentPopulation;
        // Well fed, can grow?
        if (house.currentPopulation < house.populationLimit) {
          if (r.nextInt(personIncreaseRandomOdds) == 0) {
            house._currentPopulation = house.currentPopulation + 1;
          }
        }
      } else {
        if (house.currentPopulation > 0 && r.nextInt(2) == 0) {
          house._currentPopulation = house.currentPopulation - 1;
        }
      }

      remainingFood = max(0, remainingFood - house.currentPopulation);
    }
    final consumedFood = startingFood - remainingFood;
    _ref.read(inventoryStateProvider.notifier).subtractItemRequirement(
        ItemRequirement.single(Items.FOOD, consumedFood));
    // determine how much consuption is needed
    // subtract food and if left over randomly(random chance) add new pop.
  }

  void register(HouseDoodadInstance instance) {
    houses.add(instance);
  }

  void deregister(HouseDoodadInstance instance) {
    houses.remove(instance);
  }

  @override
  bool canTick() => true;

  @override
  final int ticksRequired;
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

class HouseStatusWidget extends ConsumerWidget {
  final HouseDoodadInstance _instance;

  const HouseStatusWidget(
    this._instance, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(_instance.parent.provider);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Population: ${_instance.currentPopulation}'),
              // Text(
              //     '${(_instance.currentResources * 100).toInt()}/${(_instance.resourceMax * 100).toInt()}'),
              // Text(
              //     'Trees cost ${(_instance.resourceRequiredToHarvestOne * 100).toInt()} each'),
              // TextButton(
              //     onPressed: () {
              //       _instance.manualHarvest();
              //     },
              //     child: const Text('Chop')),
            ],
          ),
        ),
        Expanded(flex: 1, child: DoodadStatus(_instance)),
        // Expanded(
        //   flex: 1,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text('${(ticksLeft ~/ 60).toString().padLeft(2, '0')}'
        //           ':'
        //           '${(ticksLeft % 60).toString().padLeft(2, '0')}'),
        //       LinearProgressIndicator(
        //         value: currentTick.toDouble() / _treeInstance.ticksRequired,
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
