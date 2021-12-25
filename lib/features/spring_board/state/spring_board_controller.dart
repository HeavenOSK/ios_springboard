import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_state.dart';

final springBoardController =
    StateNotifierProvider<SpringBoardController, SpringBoardState>(
  (ref) => SpringBoardController(),
);

class SpringBoardController extends StateNotifier<SpringBoardState> {
  SpringBoardController()
      : super(
          SpringBoardStateX.getInitialState(
            itemCount: 24,
          ),
        );

  void updateDragging({
    required bool isDragging,
  }) {
    state = state.copyWith(
      dragging: isDragging,
    );
  }

  void shuffle() {
    final copied = <int>[...state.order]..shuffle();
    state = state.copyWith(
      order: copied,
    );
  }

  void reset() {
    state = state.copyWith(
      order: List.generate(state.mockDataList.length, (index) => index),
    );
  }

  void moveItem({
    required int id,
    required int targetIndex,
  }) {
    final originalIndex = state.order.indexOf(id);
    if (originalIndex == targetIndex) {
      return;
    }
    final cloned = [
      ...state.order,
    ]
      ..remove(id)
      ..insert(targetIndex, id);
    state = state.copyWith(
      order: cloned,
    );
  }
}
