import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drag_state.freezed.dart';

@freezed
class DragState with _$DragState {
  const factory DragState({
    required int id,
    Offset? globalPosition,
    Offset? localPosition,
    @Default(false) bool isDragging,
  }) = _DragState;
}
