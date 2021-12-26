import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/dragging_controller/dragging_controller.dart';

final isDraggingFamily = StateProvider.family(
  (ref, id) {
    final draggingState = ref.watch(draggingControllerProvider);
    return draggingState.map(
      (value) => value.id == id,
      noDragging: (_) => false,
    );
  },
);
