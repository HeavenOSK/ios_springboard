import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/screen/spring_board/state/spring_board_controller.dart';

final homeIconOrderIndexFamily = StateProvider.family<int, int>((ref, id) {
  final order = ref.watch(
    springBoardController.select(
      (value) => value.order,
    ),
  );
  return order.indexOf(id);
});
