import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/dragging_controller/dragging_state.dart';

final draggingControllerProvider =
    StateNotifierProvider<DraggingController, DraggingState>(
  (ref) => DraggingController(),
);

class DraggingController extends StateNotifier<DraggingState> {
  DraggingController()
      : super(
          const DraggingState.noDragging(),
        );

  void startDrag({
    required int id,
  }) {
    state = DraggingState(id: id);
  }

  void finishDrag() {
    state = const DraggingState.noDragging();
  }
}
