import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/iphone/config/iphone_scales_provider.dart';
import 'package:ios_springboard/features/spring_board/config/slot_computed_props/slot_computed_props.dart';
import 'package:ios_springboard/features/spring_board/config/spring_board_scales/spring_board_scales.dart';
import 'package:ios_springboard/features/spring_board/config/spring_board_scales/spring_board_scales_provider.dart';
import 'package:ios_springboard/providers/slot_config/slot_config_provider.dart';

final slotComputedProps = StateProvider<SlotComputedProps>(
  (ref) {
    final config = ref.watch(slotConfig);
    final iPhoneScales = ref.watch(iPhoneScalesProvider);
    final slotArea = ref.watch(springBoardScales).slotArea(
          iPhoneScales: iPhoneScales,
        );
    final slotSize = Size(
      slotArea.width / config.rowCount,
      slotArea.height / config.columnCount,
    );
    final slotItems = <Offset>[];
    final dragTargets = <Rect>[];
    for (var cIndex = 0; cIndex < config.columnCount; cIndex++) {
      for (var rIndex = 0; rIndex < config.rowCount; rIndex++) {
        final position = Offset(
          rIndex * slotSize.width,
          cIndex * slotSize.height,
        );
        slotItems.add(position);
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
    return SlotComputedProps(
      slotSize: slotSize,
      slotPositions: slotItems,
      dragTargets: dragTargets,
    );
  },
);
