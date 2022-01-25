import 'package:mining_game/item_management/items/metadata/item_instance.dart';
import 'package:mining_game/item_management/items/metadata/item_proto.dart';
import 'package:mining_game/item_management/items/miner.dart';

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
    // Resource(
    //     itemId: ItemId(1001),
    //     name: 'Iron',
    //     description: "Iron-cha sad that you didn't start with digging gold?"),
    // Resource(
    //     itemId: ItemId(1002), name: 'Copper', description: 'Is that a Penny?'),
  };

  static ItemInstanceT createInstance<ItemInstanceT>(ItemId id) {
    final item = itemProtos[id.id];
    return (item as Creatable<dynamic, ItemInstanceT>)
        .create(InstanceId.generate());
  }
}
