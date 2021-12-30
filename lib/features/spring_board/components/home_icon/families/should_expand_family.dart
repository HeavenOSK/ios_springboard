import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_state/spiring_board_controller.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_state/spring_board_state.dart';

final shouldExpandFamily = StateProvider.family<bool, int>(
  (ref, id) {
    final isZero = id == 0;
    final isReorderMode = ref.watch(
      springBoardController.select(
        (value) => value.shouldExpand(
          id: id,
        ),
      ),
    );
    if (isZero) {
      print(isReorderMode);
      print(
        ref.watch(
          springBoardController,
        ),
      );
    }
    return isReorderMode;
  },
);
