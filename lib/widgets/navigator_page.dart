// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
//
// import '../main.dart';
//
// class NavigatorPage extends ConsumerWidget {
//   final NavItem navItem;
//   const NavigatorPage({Key? key, required this.navItem}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Navigator(
//       // key: navItem.key,
//       onGenerateRoute: (RouteSettings settings) {
//         return MaterialPageRoute(
//           settings: settings,
//           builder: navItem.builder,
//         );
//       },
//     );
//   }
// }
