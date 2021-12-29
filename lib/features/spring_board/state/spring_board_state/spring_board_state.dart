import 'package:freezed_annotation/freezed_annotation.dart';

part 'spring_board_state.freezed.dart';

enum SpringBoardMode {
  waiting,
  tapStart,
  showContext,
  canReorder,
}

@freezed
class SpringBoardState with _$SpringBoardState {
  const factory SpringBoardState({
    @Default(SpringBoardMode.waiting) SpringBoardMode mode,
    int? focusId,
  }) = _SpringBoardState;
}

extension SpringBoardStateX on SpringBoardState {
  bool canMoveModeFor(SpringBoardMode mode) {
    switch (mode) {
      case SpringBoardMode.waiting:
        return true;
      case SpringBoardMode.tapStart:
        return this.mode == SpringBoardMode.waiting;
      case SpringBoardMode.showContext:
        return this.mode == SpringBoardMode.showContext;
      case SpringBoardMode.canReorder:
        return false;
    }
  }
}
