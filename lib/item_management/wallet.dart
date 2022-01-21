// ignore: unused_import
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'wallet.freezed.dart';

final walletControllerProvider =
    StateNotifierProvider<WalletController, Resources>((ref) {
  return WalletController(const Resources(iron: 100));
});

class WalletController extends StateNotifier<Resources> {
  WalletController(Resources state) : super(state);

  Resources get resources => state;

  bool canRemove(Resources resources) => !(state - resources).hasNegative;
  void add(Resources resources) => state = state + resources;
  void remove(Resources resources) => state = state - resources;
}

enum ResourceType {
  IRON,
}

@freezed
class Resources with _$Resources {
  const Resources._();

  const factory Resources({@Default(0) int iron}) = _Resources;

  bool get hasNegative => iron.isNegative;

  Resources operator -(Resources other) => copyWith(iron: iron - other.iron);

  Resources operator +(Resources other) => copyWith(iron: iron + other.iron);

  Resources maxCanBeRemoved(Resources other) =>
      Resources(iron: minValue(iron, other.iron));

  int minValue(int i, int b) => min(i, b);
}
