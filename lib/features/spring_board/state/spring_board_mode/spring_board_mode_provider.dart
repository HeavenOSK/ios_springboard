import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_mode/spring_board_mode.dart';

final springBoardMode = StateProvider<SpringBoardMode>(
  (ref) => SpringBoardMode.waiting,
);
