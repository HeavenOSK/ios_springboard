import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon_session_handler/home_icon_mode.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_mode/spring_board_mode.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_mode/spring_board_mode_provider.dart';

typedef ShouldShake = bool Function(
  HomeIconMode mode,
);

final computeShouldShake = StateProvider<ShouldShake>(
  (ref) {
    final isReorderableMode = ref.watch(
      springBoardMode.select(
        (value) => value.isReorderableMode,
      ),
    );
    return (mode) {
      return isReorderableMode && mode.isWaiting;
    };
  },
);
