import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_state/spring_board_state.dart';

final springBoardController =
    StateNotifierProvider<SpringBoardController, SpringBoardState>(
  (ref) => SpringBoardController(),
);

class SpringBoardController extends StateNotifier<SpringBoardState> {
  SpringBoardController()
      : super(
          const SpringBoardState(),
        );

  Future<void> onTapStart({
    required int appId,
  }) async {
    if (!state.canMoveModeFor(SpringBoardMode.tapStart)) {
      return;
    }
    state = state.copyWith(
      focusId: appId,
      mode: SpringBoardMode.tapStart,
    );
    // TODO(HeavenOSK): アイコンの点滅を実装する
    // TODO(HeavenOSK): アプリの起動を実装する
    await Future<void>.delayed(
      const Duration(milliseconds: 500),
    );
    if (!state.canMoveModeFor(SpringBoardMode.showContext)) {
      return;
    }
    state = state.copyWith(
      mode: SpringBoardMode.showContext,
    );
    if (!state.canMoveModeFor(SpringBoardMode.canReorder)) {
      return;
    }
    await Future<void>.delayed(
      const Duration(milliseconds: 500),
    );
    state = state.copyWith(
      mode: SpringBoardMode.canReorder,
    );
  }

  void onTapEnd() {
    switch (state.mode) {
      case SpringBoardMode.waiting:
      case SpringBoardMode.canReorder:
      case SpringBoardMode.showContext:
        return;
      case SpringBoardMode.tapStart:
        // TODO(HeavenOSK): アプリを開く
        exitReorderingSession();
        return;
        return;
    }
  }

  void exitReorderingSession() {
    state = const SpringBoardState();
  }
}
