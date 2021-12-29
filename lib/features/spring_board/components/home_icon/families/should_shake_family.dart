import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/dragging_controller/dragging_controller.dart';

final shouldShakeFamily = StateProvider.family<bool, int>(
  (ref, id) {
    final draggingState = ref.watch(draggingControllerProvider);
    return draggingState.map(
      (draggable) => draggable.id != id,
      noDragging: (_) => false,
    );
  },
);
