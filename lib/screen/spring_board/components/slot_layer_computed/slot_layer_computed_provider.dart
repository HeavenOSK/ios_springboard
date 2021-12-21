import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/app/iphone_scales_provider.dart';
import 'package:ios_springboard/providers/position_slot_config/position_slot_config_provider.dart';
import 'package:ios_springboard/screen/spring_board/components/slot_layer_computed/computed_slot_position.dart';
import 'package:ios_springboard/screen/spring_board/components/slot_layer_computed/slot_layer_computed.dart';
import 'package:ios_springboard/screen/spring_board/screen/spring_board_scales.dart';
import 'package:ios_springboard/screen/spring_board/screen/spring_board_scales_provider.dart';

final slotLayerComputedProvider = StateProvider<SlotLayerComputed>(
  (ref) {
    final config = ref.watch(positionSlotConfigProvider);
    final iPhoneScales = ref.watch(iPhoneScalesProvider);
    final slotArea = ref.watch(springBoardScalesProvider).slotArea(
          iPhoneScales: iPhoneScales,
        );
    final slotSize = Size(
      slotArea.width / config.rowCount,
      slotArea.height / config.columnCount,
    );
    final positions = <ComputedSlotPosition>[];
    for (var cIndex = 0; cIndex < config.columnCount; cIndex++) {
      for (var rIndex = 0; rIndex < config.rowCount; rIndex++) {
        positions.add(
          ComputedSlotPosition(
            position: Offset(
              rIndex * slotSize.width,
              cIndex * slotSize.height,
            ),
          ),
        );
      }
    }
    return SlotLayerComputed(
      slotSize: slotSize,
      positions: positions,
    );
  },
);
