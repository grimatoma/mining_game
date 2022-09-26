import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mining_game/crafting/crafting_definitions.dart';
import 'package:mining_game/game_management/game_clock.dart';
import 'package:mining_game/item_management/inventory/inventoryv3.dart';

part 'crafting_manager.freezed.dart';

part 'crafting_manager.g.dart';

final craftingQueueProvider = StateProvider<BuiltList<CraftingRecipe>>(
    (ref) => BuiltList<CraftingRecipe>());

final craftingSessionProvider =
    StateNotifierProvider<CraftingSessionController, CraftingSession?>((ref) =>
        CraftingSessionController(ref.watch(gameClockProvider), ref,
            ref.watch(inventoryProvider.notifier)));

@freezed
class CraftingSession with _$CraftingSession {
  const factory CraftingSession({
    required CraftingRecipe recipe,
    required int remaining,
  }) = _CraftingSession;

  factory CraftingSession.fromJson(Map<String, dynamic> json) =>
      _$CraftingSessionFromJson(json);
}

class CraftingSessionController extends StateNotifier<CraftingSession?> {
  final Ref _ref;
  final InventoryStateProvider _inventoryStateProvider;
  final GameClock _gameClock;

  CraftingSessionController(
      this._gameClock, this._ref, this._inventoryStateProvider)
      : super(null) {
    _gameClock.schedulePeriodicAction(1, updateState);
  }

  void updateState() {
    print('update');
    final session = state;
    if (session == null) {
      if (_queue.isNotEmpty) {
        state = _finishSession();
      }
      return;
    }
    final updatedSession = session.copyWith(remaining: session.remaining - 1);
    if (updatedSession.remaining <= 0) {
      state = _finishSession();
      _inventoryStateProvider
          .addItems(updatedSession.recipe.output.createSingleContainer());
    } else {
      state = updatedSession;
    }
  }

  CraftingSession? _finishSession() {
    final next = _popQueue();
    if (next == null) return null;
    return CraftingSession(recipe: next, remaining: next.craftingDuration);
  }

  CraftingRecipe? _popQueue() {
    if (_queue.isEmpty) return null;
    final updatedQueue = _queue.toList();
    final popped = updatedQueue.removeAt(0);
    _updateQueue(updatedQueue.build());
    return popped;
  }

  void enqueue(CraftingRecipe recipe) {
    if (_inventoryStateProvider.removeItems(recipe.input)) {
      final craftingQueue = _ref.read(craftingQueueProvider.notifier);
      craftingQueue.state = craftingQueue.state.rebuild((p0) => p0.add(recipe));
    }
  }

  void remove(int index) {
    final craftingQueue = _ref.read(craftingQueueProvider.notifier);
    craftingQueue.state =
        craftingQueue.state.rebuild((p0) => p0.removeAt(index));
    if (index == 0) {
      state = null;
    }
  }

  BuiltList<CraftingRecipe> get _queue => _ref.read(craftingQueueProvider);

  void _updateQueue(BuiltList<CraftingRecipe> updatedQueue) {
    _ref.read(craftingQueueProvider.notifier).state = updatedQueue;
  }
}
