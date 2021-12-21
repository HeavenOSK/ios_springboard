import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/app/iphone_scales_provider.dart';
import 'package:ios_springboard/providers/position_slot_config/position_slot_config_provider.dart';
import 'package:ios_springboard/screen/spring_board/screen/spring_board_scales.dart';
import 'package:ios_springboard/screen/spring_board/screen/spring_board_scales_provider.dart';
import 'package:ios_springboard/screen/spring_board/state/slot_layer_computed/slot_item_computed.dart';
import 'package:ios_springboard/screen/spring_board/state/slot_layer_computed/slot_layer_computed.dart';

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
    final slotItems = <SlotItemComputed>[];
    final dragTargets = <Rect>[];
    for (var cIndex = 0; cIndex < config.columnCount; cIndex++) {
      for (var rIndex = 0; rIndex < config.rowCount; rIndex++) {
        final position = Offset(
          rIndex * slotSize.width,
          cIndex * slotSize.height,
        );
        slotItems.add(
          SlotItemComputed(
            position: position,
          ),
        );
      }
    }
    for (var cIndex = 0; cIndex < config.columnCount; cIndex++) {
      for (var rIndex = 0; rIndex <= config.rowCount; rIndex++) {
        const targetWidth = 40.0;
        final position = Offset(
          rIndex * slotSize.width,
          cIndex * slotSize.height,
        );
        final dragTarget = Rect.fromLTWH(
          position.dx - targetWidth / 2,
          position.dy + (slotSize.height / 4),
          targetWidth,
          slotSize.height / 2,
        );
        dragTargets.add(dragTarget);
      }
    }
    return SlotLayerComputed(
      slotSize: slotSize,
      slotItems: slotItems,
      dragTargets: dragTargets,
    );
  },
);
