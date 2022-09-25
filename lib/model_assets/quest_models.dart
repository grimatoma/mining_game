import 'package:mining_game/features.dart';
import 'package:mining_game/item_management/item_keys.dart';
import 'package:mining_game/item_management/requirement.dart';
import 'package:mining_game/quests/quest_definition.dart';

final quests = [
  QuestDefinition(
      id: 1,
      name: 'Test quest 1',
      description:
          'This is an example quest. Please give me 5 credits so I can give you 25 rocks.',
      enabledRequirement:
          Requirement(itemsOwned: ItemContainer.single(Items.IRON_ORE, 5)),
      completeRequirement: Requirement(
        itemCost: ItemContainer.single(Items.CREDIT, 5),
      ),
      reward: QuestReward(
        items: ItemContainer.single(Items.ROCK, 25),
      )),
  QuestDefinition(
      id: 2,
      name: 'Smelt iron',
      description: 'This quest makes sure that you can smelt iron',
      enabledRequirement: const Requirement(),
      completeRequirement: const Requirement(features: {Feature.SMELTING}),
      reward: QuestReward(
        items: ItemContainer.single(Items.ROCK, 25),
      )),
  QuestDefinition(
      id: 3,
      name: 'Own 5 iron',
      description: 'This quest checks that you own Iron',
      enabledRequirement: const Requirement(),
      completeRequirement:
          Requirement(itemsOwned: ItemContainer.single(Items.IRON_ORE, 5)),
      reward: QuestReward(
        items: ItemContainer.single(Items.ROCK, 25),
      )),
  QuestDefinition(
      id: 4,
      name: 'Unlock smelting',
      description:
          'We need to build a smelter but this costs a lot of resources please help me gather these items so I can start building a smelter.',
      enabledRequirement: const Requirement(),
      completeRequirement: Requirement(
          itemCost: ItemContainer({
        Items.IRON_ORE: 50,
        Items.CREDIT: 25,
      })),
      reward: const QuestReward(
        features: {Feature.SMELTING},
      )),
  QuestDefinition(
      id: 5,
      name: 'Give me credits',
      description: 'I am short some credits. Give them to me',
      enabledRequirement: const Requirement(),
      completeRequirement:
          Requirement(itemCost: ItemContainer.single(Items.CREDIT, 17)),
      reward: QuestReward(
        items: ItemContainer.single(Items.CREDIT, 25),
      )),
];
