import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon_session_handler/states/drag_state.dart';

final dragState = StateProvider.family<DragState, int>(
  (ref, id) => DragState(id: id),
);
