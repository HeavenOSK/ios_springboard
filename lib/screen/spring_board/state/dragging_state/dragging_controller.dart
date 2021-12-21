import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/providers/position_slot_config/position_slot_config_provider.dart';
import 'package:ios_springboard/screen/spring_board/state/slot_layer_computed/slot_layer_computed_provider.dart';
import 'package:ios_springboard/screen/spring_board/state/spring_board_controller.dart';

final draggingController = Provider(
  (ref) => DraggingController(ref.read),
);

class DraggingController {
  DraggingController(this._read);

  final Reader _read;

  int? _checkInTarget(Offset currentPosition) {
    final slotLayerComputed = _read(slotLayerComputedProvider);
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
    required Offset currentPosition,
  }) {
    final dragTargetIndex = _checkInTarget(currentPosition);
    if (dragTargetIndex == null) {
      return;
    }
    final config = _read(positionSlotConfigProvider);
    final rowNumber = dragTargetIndex % (config.rowCount + 1);
    final columnNumber = dragTargetIndex ~/ 5;
    final targetRowNumber = max(rowNumber - 1, 0);

    _read(springBoardController.notifier).moveItem(
      id: id,
      targetIndex: columnNumber * config.rowCount + targetRowNumber,
    );
  }
}
