import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/icon_order_faimily.dart';
import 'package:ios_springboard/features/spring_board/config/slot_computed_props/slot_computed_props_provider.dart';
import 'package:ios_springboard/features/spring_board/state/reorderer/reodered_history.dart';
import 'package:ios_springboard/features/spring_board/storage/spring_board_registerer/spring_board_registerer.dart';
import 'package:ios_springboard/providers/area_positions/slot_area_position_provider.dart';
import 'package:ios_springboard/providers/slot_config/slot_config_provider.dart';

final reorderer = Provider(
  (ref) => Reorderer(ref.read),
);

class Reorderer {
  Reorderer(this._read);

  final Reader _read;
  ReorderedHistory? currentReorderedHistory;

  int? _checkInTarget(Offset currentPosition) {
    final slotProps = _read(slotComputedProps);
    for (var index = 0; index < slotProps.dragTargets.length; index++) {
      final dragTarget = slotProps.dragTargets[index];
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
    final slotAreaOffset = _read(slotAreaPosition);
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
    final currentIndex = _read(iconOrderIndexFamily(id));
    final columnNumberForCurrentIndex = currentIndex ~/ 4;
    final config = _read(slotConfig);
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
