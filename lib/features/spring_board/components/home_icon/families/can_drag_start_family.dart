import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/dragging_controller/dragging_controller.dart';

final canDragStartFamily = StateProvider.family<bool, int>(
  (ref, id) => ref.watch(
    draggingControllerProvider.select(
      (value) => value.map(
        (dragging) => dragging.id != id,
        noDragging: (_) => true,
      ),
    ),
  ),
);
