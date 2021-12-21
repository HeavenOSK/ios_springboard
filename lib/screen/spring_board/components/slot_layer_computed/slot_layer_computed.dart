import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot_layer_computed.freezed.dart';

@freezed
class SlotLayerComputed with _$SlotLayerComputed {
  const factory SlotLayerComputed({
    required Size slotSize,
    required List<Offset> positions,
  }) = _SlotLayerComputed;
}
