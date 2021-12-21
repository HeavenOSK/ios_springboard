import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'computed_slot_position.freezed.dart';

@freezed
class ComputedSlotPosition with _$ComputedSlotPosition {
  const factory ComputedSlotPosition({
    required Offset position,
  }) = _ComputedSlotPosition;
}
