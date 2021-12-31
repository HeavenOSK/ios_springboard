import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_state/spiring_board_controller.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_state/spring_board_state.dart';

final shouldExpandFamily = StateProvider.family<bool, int>(
  (ref, id) {
    final isReorderMode = ref.watch(
      springBoardController.select(
        (value) => value.shouldExpand(
          id: id,
        ),
      ),
    );

    return isReorderMode;
  },
);
