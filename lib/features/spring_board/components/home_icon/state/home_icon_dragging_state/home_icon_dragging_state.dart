import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_icon_dragging_state.freezed.dart';

@freezed
class HomeIconDraggingState with _$HomeIconDraggingState {
  const factory HomeIconDraggingState({
    required int id,
    required Offset globalPosition,
    required Offset localPosition,
  }) = _HomeIconDraggingState;
}
