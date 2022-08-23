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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StatusBarWidget(),
        Expanded(child: builder(context, ref)),
      ],
    );
  }
}
