import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/storage/spring_board_controller.dart';

final homeIconOrderIndexFamily = StateProvider.family<int, int>((ref, id) {
  final order = ref.watch(
    springBoardRegisterer.select(
      (value) => value.order,
    ),
  );
  return order.indexOf(id);
});
