import 'dart:html';

import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mining_game/item_management/items.dart';

part 'item_database.freezed.dart';
part 'item_database.g.dart';

class ItemDatabaseManager {
  static const _items = <ItemBase>[
    Miner(
      itemId: ItemId(1),
      name: 'Junk Miner',
      description:
          'Salvaged from a garage sale. Barely functional and guzzles gas',
      radius: 1,
      depth: 1,
      damage: 1,
      hopperSize: 50,
      fuelConsumption: 5,
    ),
    Miner(
        itemId: ItemId(2),
        name: 'Basic Miner',
        description: 'Generic off the shelf miner',
        radius: 2,
        depth: 1,
        damage: 2,
        hopperSize: 100,
        fuelConsumption: 5),
    Miner(
        itemId: ItemId(3),
        name: 'Test Miner 3',
        description: 'this is the third miner',
        radius: 1,
        depth: 1,
        damage: 1,
        hopperSize: 50,
        fuelConsumption: 5),
    Miner(
        itemId: ItemId(4),
        name: 'Test Miner 4',
        description: 'this is the 4 miner',
        radius: 1,
        depth: 1,
        damage: 1,
        hopperSize: 50,
        fuelConsumption: 5),
    Miner(
        itemId: ItemId(5),
        name: 'Test Miner 5',
        description: 'this is the 5 miner',
        radius: 1,
        depth: 1,
        damage: 1,
        hopperSize: 50,
        fuelConsumption: 5),
    Resource(
        itemId: ItemId(1001),
        name: 'Iron',
        description: "Iron-cha sad that you didn't start with digging gold?"),
    Resource(
        itemId: ItemId(1002), name: 'Copper', description: 'Is that a Penny?'),
  ];
  static const _instances = [
    MinerInstance(instanceId: InstanceId(1), itemId: ItemId(1), potato: 20),
    MinerInstance(instanceId: InstanceId(2), itemId: ItemId(2)),
    MinerInstance(instanceId: InstanceId(3), itemId: ItemId(3)),
    MinerInstance(instanceId: InstanceId(4), itemId: ItemId(4)),
    MinerInstance(instanceId: InstanceId(5), itemId: ItemId(5)),
    MinerInstance(instanceId: InstanceId(6), itemId: ItemId(2)),
  ];

  static final BuiltMap<ItemId, ItemBase> itemListing =
      {for (final item in _items) item.itemId: item}.build();
  static final BuiltMap<InstanceId, ItemInstance> itemInstances =
      {for (final item in _instances) item.instanceId: item}.build();

  late Box _itemInstancesBox;

  void initDatabase() async {
    String message;
    if (window.localStorage.containsKey('my-key')) {
      message = 'from storage ${window.localStorage['my-key']}';
    } else {
      window.localStorage['my-key'] = "Hello World";
      message = 'New added Message ${window.localStorage['my-key']}';
    }
    print(message);

    Hive.registerAdapter(TestIdAdapter());
    Hive.registerAdapter(TestInnerIdAdapter());
    print('Exists :${await Hive.boxExists('test')}}');
    _itemInstancesBox = await Hive.openBox('test');
    print('contents : ${_itemInstancesBox.values}');
    var i2 = _itemInstancesBox.get(691);
    const i1 = TestId(691, TestInnerId('Potato'));
    _itemInstancesBox.put(i1.id, i1);
    await _itemInstancesBox.flush();

    print(i1);
    print(i2);

    // i2.instanceId;

    int i = 4;
  }

  static ItemInstance<InstantiatableItem> getItemInstance(InstanceId id) {
    return itemInstances[id]!;
  }

  static InstanceId registerInstance(ItemId itemId) {
    return const InstanceId(1);
  }
}

@freezed
class TestId with _$TestId {
  @HiveType(typeId: 11, adapterName: 'TestIdAdapter')
  const factory TestId(@HiveField(1) int id, @HiveField(2) TestInnerId name) =
      _TestId;
}

@freezed
class TestInnerId with _$TestInnerId {
  @HiveType(typeId: 12, adapterName: 'TestInnerIdAdapter')
  const factory TestInnerId(@HiveField(1) String name) = _TestInnerId;
}
