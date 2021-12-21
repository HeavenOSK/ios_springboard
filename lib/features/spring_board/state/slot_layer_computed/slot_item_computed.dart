import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot_item_computed.freezed.dart';

@freezed
class SlotItemComputed with _$SlotItemComputed {
  const factory SlotItemComputed({
    required Offset position,
  }) = _SlotItemComputed;
}
