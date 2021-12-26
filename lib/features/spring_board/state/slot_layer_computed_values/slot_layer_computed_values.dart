import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot_layer_computed_values.freezed.dart';

@freezed
class SlotLayerComputedValues with _$SlotLayerComputedValues {
  const factory SlotLayerComputedValues({
    required Size slotSize,
    required List<Offset> slotPositions,
    required List<Rect> dragTargets,
  }) = _SlotLayerComputedValues;
}
