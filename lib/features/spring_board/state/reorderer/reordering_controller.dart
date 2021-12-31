import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/home_icon_order_faimily.dart';
import 'package:ios_springboard/features/spring_board/state/reorderer/reodered_history.dart';
import 'package:ios_springboard/features/spring_board/state/slot_layer_computed_values/slot_layer_computed_values_provider.dart';
import 'package:ios_springboard/features/spring_board/storage/spring_board_registerer.dart';
import 'package:ios_springboard/providers/position_slot_config/position_slot_config_provider.dart';
import 'package:ios_springboard/providers/slot_area_offset_provider.dart';

final reorderingController = Provider(
  (ref) => ReorderingController(ref.read),
);

class ReorderingController {
  ReorderingController(this._read);

  final Reader _read;
  ReorderedHistory? currentReorderedHistory;

  int? _checkInTarget(Offset currentPosition) {
    final slotLayerComputed = _read(slotLayerComputedValuesProvider);
    for (var index = 0; index < slotLayerComputed.dragTargets.length; index++) {
      final dragTarget = slotLayerComputed.dragTargets[index];
      final inTarget = dragTarget.contains(currentPosition);
      if (inTarget) {
        return index;
      }
    }
    return null;
  }

  void updatePosition({
    required int id,
    required Offset dragGlobalPosition,
  }) {
    final slotAreaOffset = _read(slotAreaOffsetProvider);
    final dragTargetIndex = _checkInTarget(
      dragGlobalPosition - slotAreaOffset,
    );
    if (dragTargetIndex == null) {
      return;
    }
    final newHistory = ReorderedHistory(
      id: id,
      dragTargetIndex: dragTargetIndex,
    );
    if (newHistory == currentReorderedHistory) {
      return;
    }
    currentReorderedHistory = newHistory;
    final currentIndex = _read(homeIconOrderIndexFamily(id));
    final columnNumberForCurrentIndex = currentIndex ~/ 4;
    final config = _read(positionSlotConfigProvider);
    final rowNumber = dragTargetIndex % (config.rowCount + 1);
    final columnNumber = dragTargetIndex ~/ 5;
    final targetRowNumber = columnNumberForCurrentIndex <= columnNumber
        ? max(rowNumber - 1, 0)
        : min(rowNumber, 3);

    _read(springBoardRegisterer.notifier).moveItem(
      id: id,
      targetIndex: columnNumber * config.rowCount + targetRowNumber,
    );
  }
}
