import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// class LimitListEntry<T> extends LinkedListEntry<LimitListEntry<T>> {
//   final int index;
//   final T t;
//
//   LimitListEntry(this.index, this.t);
// }
class DigEvent {
  @override
  String toString() {
    return 'dug';
  }
}

// /// A List that limits the number of values to a
// class LimitList<T> {
//   final _linkedList = LinkedList<LimitListEntry<T>>();
//   final _indexMap = <int,T>{};
//   var _nextIndex = 0;
//   final int limit;
//
//   LimitList(Iterable<T> values, this.limit) {
//     for (final item in values) {
//       add(item);
//     }
//   }
//
//   void add(T t) {
//     _linkedList.add(LimitListEntry(_nextIndex, t));
//     _indexMap[_nextIndex++] = t;
//     if (length > limit) {
//       removeFirst();
//     }
//   }
//
//   T removeFirst() {
//     final first = _linkedList.first..unlink();
//     _indexMap.remove(first.index);
//     return first.t;
//   }
//
//   T operator [](int index) {
//     return _indexMap[index]!;
//   }
//
//   int get length => _indexMap.length;
// }

final digEvents = [
  DigEvent(),
  DigEvent(),
  DigEvent(),
  DigEvent(),
];

class DigSite extends ConsumerWidget {
  const DigSite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          child: Center(
            child: TextButton(
                onPressed: () {
                  digEvents.add(DigEvent());
                  if (digEvents.length > 100) {
                    digEvents.remove(digEvents.first);
                  }
                },
                child: const Text('Dig')),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemBuilder: (_, index) => Text(digEvents[index].toString()),
              itemCount: digEvents.length),
        ),
      ],
    );
  }
}
