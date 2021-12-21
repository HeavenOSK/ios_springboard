import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'computed_slot_position.dart';

part 'slot_layer_computed.freezed.dart';

@freezed
class SlotLayerComputed with _$SlotLayerComputed {
  const factory SlotLayerComputed({
    required Size slotSize,
    required List<ComputedSlotPosition> positions,
  }) = _SlotLayerComputed;
}
