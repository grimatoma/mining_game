import 'package:mining_game/item_management/items/metadata/item_attributes.dart';
import 'package:mining_game/item_management/items/metadata/item_instance.dart';
import 'package:mining_game/item_management/items/metadata/item_proto.dart';
import 'package:mining_game/item_management/items/miner.dart';
import 'package:mining_game/item_management/items/rock.dart';

class ItemDatabaseManager {
  static const itemProtos = <String, ItemProto>{
    'junkMiner': MinerProto(
      itemId: ItemId('junkMiner'),
      name: 'Junk Miner',
      description:
          'Salvaged from a garage sale. Barely functional and guzzles gas',
      radius: 1,
      depth: 1,
      baseDamage: 1,
      hopperSize: 50,
      fuelConsumption: 5,
    ),
    'basicMiner': MinerProto(
        itemId: ItemId('basicMiner'),
        name: 'Basic Miner',
        description: 'Generic off the shelf miner',
        radius: 2,
        depth: 1,
        baseDamage: 2,
        hopperSize: 100,
        fuelConsumption: 5),
    'testMiner3': MinerProto(
        itemId: ItemId('testMiner3'),
        name: 'Test Miner 3',
        description: 'this is the third miner',
        radius: 1,
        depth: 1,
        baseDamage: 1,
        hopperSize: 50,
        fuelConsumption: 5),
    'testMiner4': MinerProto(
        itemId: ItemId('testMiner4'),
        name: 'Test Miner 4',
        description: 'this is the 4 miner',
        radius: 1,
        depth: 1,
        baseDamage: 1,
        hopperSize: 50,
        fuelConsumption: 5),
    'testMiner5': MinerProto(
        itemId: ItemId('testMiner5'),
        name: 'Test Miner 5',
        description: 'this is the 5 miner',
        radius: 1,
        depth: 1,
        baseDamage: 1,
        hopperSize: 50,
        fuelConsumption: 5),
    'rock': RockProto(
        itemId: ItemId('rock'),
        name: 'Rock',
        description: 'It\'s Shiny.',
        maxStackSize: 9),
    // Resource(
    //     itemId: ItemId(1001),
    //     name: 'Iron',
    //     description: "Iron-cha sad that you didn't start with digging gold?"),
    // Resource(
    //     itemId: ItemId(1002), name: 'Copper', description: 'Is that a Penny?'),
  };

  static ProtoT getItemProto<ProtoT extends ItemProto>(ItemId id) =>
      itemProtos[id.id] as ProtoT;
  static ItemInstanceT createInstance<ItemInstanceT>(ItemId id) {
    final itemProto = getItemProto(id);
    return (itemProto as InstantiatableItem<dynamic, ItemInstanceT>)
        .instantiate(InstanceId.generate());
  }

  // static StackInstance<ProtoT> createItemStack<ProtoT extends ItemProto>(
  //     ItemId id, int quantity) {
  //   assert(ProtoT is StackableItemDefinition,
  //       'Must only create stacks of stackable Items!');
  //   return StackInstance(
  //       proto: getItemProto<ProtoT>(id),
  //       instanceId: InstanceId.generate(),
  //       quantity: quantity);
  // }
}
