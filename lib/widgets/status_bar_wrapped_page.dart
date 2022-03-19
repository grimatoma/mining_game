import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'status_bar.dart';

class StatusBarWrappedPageWidget extends ConsumerWidget {
  final String title;
  final Widget Function(BuildContext context, WidgetRef ref) builder;
  const StatusBarWrappedPageWidget({
    required this.title,
    required this.builder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: min(MediaQuery.of(context).size.width, 900),
          // height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const StatusBarWidget(),
              Expanded(child: builder(context, ref)),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     for (final item in items)
      //       BottomNavigationBarItem(icon: Icon(item.icon), label: item.name),
      //   ],
      //   currentIndex: index,
      //   onTap: (index) async {
      //     ref.read(navigationIndexProvider.notifier).state = index;
      //     Navigator.of(context).restorablePushReplacementNamed(
      //         ref.read(mainNavigationPagesProvider)[index].routeName);
      //     // Navigator.restorableReplace(context, oldRoute: oldRoute, newRouteBuilder: newRouteBuilder)
      //   },
      // ),
    );
  }
}
