import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dragging_state.freezed.dart';

@freezed
class DraggingState with _$DraggingState {
  const factory DraggingState({
    required int id,
    required Offset avatarGlobalPosition,
    required Offset dragDetectingPosition,
  }) = _DraggingState;

  const factory DraggingState.noDragging() = _NoDragging;
}
