import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/dragging_controller/dragging_controller.dart';
import 'package:ios_springboard/features/spring_board/state/slot_layer_computed_values/spring_board_state/spiring_board_controller.dart';
import 'package:ios_springboard/features/spring_board/state/slot_layer_computed_values/spring_board_state/spring_board_state.dart';

final canDragStartFamily = StateProvider.family<bool, int>(
  (ref, id) {
    final isWaitingMode = ref.watch(
      springBoardController.select(
        (value) => value.isWaitingMode,
      ),
    );
    return isWaitingMode &&
        ref.watch(
          draggingControllerProvider.select(
            (value) => value.map(
              (dragging) => dragging.id != id,
              noDragging: (_) => true,
            ),
          ),
        );
  },
);
