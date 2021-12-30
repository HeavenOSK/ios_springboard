import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spring_board_state.freezed.dart';

enum SpringBoardMode {
  waiting,
  tapStart,
  contextMenu,
  reorder,
}

@freezed
class SpringBoardState with _$SpringBoardState {
  const factory SpringBoardState({
    @Default(SpringBoardMode.waiting) SpringBoardMode mode,
    int? focusId,
    @Default(false) bool locked,
    Offset? dragGlobalPosition,
    Offset? dragLocalPosition,
  }) = _SpringBoardState;
}

extension SpringBoardModeX on SpringBoardMode {
  // Returns Duration.zero instead of null for
  // developer experience.
  Duration get sceneDuration {
    switch (this) {
      case SpringBoardMode.waiting:
        return Duration.zero;
      case SpringBoardMode.tapStart:
        return const Duration(milliseconds: 250);
      case SpringBoardMode.contextMenu:
        return const Duration(milliseconds: 800);
      case SpringBoardMode.reorder:
        return Duration.zero;
    }
  }
}

extension SpringBoardStateX on SpringBoardState {
  bool canMoveModeFor(SpringBoardMode mode) {
    switch (mode) {
      case SpringBoardMode.waiting:
        return true;
      case SpringBoardMode.tapStart:
        return this.mode == SpringBoardMode.waiting;
      case SpringBoardMode.contextMenu:
        return this.mode == SpringBoardMode.tapStart;
      case SpringBoardMode.reorder:
        return this.mode == SpringBoardMode.contextMenu;
    }
  }

  bool get isWaitingMode => mode == SpringBoardMode.waiting;

  bool get isContextMenuMode => mode == SpringBoardMode.contextMenu;

  bool get isReorderMode => mode == SpringBoardMode.reorder;

  bool shouldExpand({
    required int id,
  }) {
    if (focusId != id) {
      return false;
    }
    switch (mode) {
      case SpringBoardMode.waiting:
        return false;
      case SpringBoardMode.tapStart:
      case SpringBoardMode.contextMenu:
      case SpringBoardMode.reorder:
        return true;
    }
  }
}
