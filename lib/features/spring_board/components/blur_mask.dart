import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/slot_layer_computed_values/spring_board_state/spiring_board_controller.dart';
import 'package:ios_springboard/features/spring_board/state/slot_layer_computed_values/spring_board_state/spring_board_state.dart';

class BlurMask extends HookConsumerWidget {
  const BlurMask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shouldBlur = ref.watch(
      springBoardController.select(
        (value) => value.isContextMenuMode,
      ),
    );

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: shouldBlur ? 1 : 0),
      duration: SpringBoardMode.tapStart.sceneDuration,
      builder: (context, value, child) {
        if (value <= 0) {
          return const SizedBox.shrink();
        }
        final sigmaValue = value * 10;
        return ClipRect(
          child: BackdropFilter(
            filter: ui.ImageFilter.blur(
              sigmaX: sigmaValue,
              sigmaY: sigmaValue,
            ),
            child: Container(
              color: Colors.white.withOpacity(0.1),
            ),
          ),
        );
      },
    );
  }
}
