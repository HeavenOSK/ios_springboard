import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon_session_handler/home_icon_mode.dart';

part 'home_icon_session.freezed.dart';

@freezed
class HomeIconSession with _$HomeIconSession {
  const factory HomeIconSession({
    @Default(HomeIconMode.waiting) HomeIconMode mode,
    @Default(false) bool locked,
  }) = _HomeIconSession;
}

extension HomeIconSessionX on HomeIconSession {
  bool canMoveFor(HomeIconMode targetMode) {
    if (locked) {
      return false;
    }
    switch (targetMode) {
      case HomeIconMode.waiting:
        return true;
      case HomeIconMode.tapped:
        return mode.isWaiting;
      case HomeIconMode.showContextMenu:
        return mode.isTapped;
      case HomeIconMode.dragging:
        return mode.isShowContextMenu;
      case HomeIconMode.endDragging:
        return mode.isDragging;
    }
  }
}
