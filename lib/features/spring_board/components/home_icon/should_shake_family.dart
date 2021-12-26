import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/dragging_controller/dragging_controller.dart';

final shouldShakeFamily = StateProvider.family(
  (ref, id) => ref.watch(
    draggingControllerProvider.select(
      (value) => value.map(
        (draggingId) => draggingId != id,
        noDragging: (_) => false,
      ),
    ),
  ),
);
