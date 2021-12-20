import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/screen/spring_board/state/spring_board_state.dart';

final springBoardController =
    StateNotifierProvider<SpringBoardController, SpringBoardState>(
  (ref) => SpringBoardController(),
);

class SpringBoardController extends StateNotifier<SpringBoardState> {
  SpringBoardController()
      : super(
          SpringBoardStateX.getInitialState(
            itemCount: 4,
          ),
        );

  void stopReordering() {
    state = state.copyWith(
      movable: false,
    );
  }

  void shuffle() {
    final copied = <int>[...state.order]..shuffle();
    state = state.copyWith(
      order: copied,
    );
  }
}
