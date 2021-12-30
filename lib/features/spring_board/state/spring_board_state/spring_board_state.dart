import 'package:freezed_annotation/freezed_annotation.dart';

part 'spring_board_state.freezed.dart';

enum SpringBoardMode {
  waiting,
  tapStart,
  showContext,
  reorder,
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
      case SpringBoardMode.reorder:
        return false;
    }
  }

  bool get isWaitingMode => mode == SpringBoardMode.waiting;

  bool get isReorderMode => mode == SpringBoardMode.reorder;
}
