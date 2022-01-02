import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot_computed_props.freezed.dart';

@freezed
class SlotComputedProps with _$SlotComputedProps {
  const factory SlotComputedProps({
    required Size slotSize,
    required List<Offset> slotPositions,
    required List<Rect> dragTargets,
  }) = _SlotComputedProps;
}
