import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ios_springboard/screen/spring_board/state/slot_layer_computed/slot_item_computed.dart';

part 'slot_layer_computed.freezed.dart';

@freezed
class SlotLayerComputed with _$SlotLayerComputed {
  const factory SlotLayerComputed({
    required Size slotSize,
    required List<SlotItemComputed> slotItems,
    required List<Rect> dragTargets,
  }) = _SlotLayerComputed;
}
