import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/debug_blur_state.dart';

class BlurMask extends HookConsumerWidget {
  const BlurMask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shouldBlur = ref.watch(debugBlurState);
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: shouldBlur ? 1 : 0),
      duration: const Duration(milliseconds: 250),
      builder: (context, value, child) {
        if (value <= 0) {
          return const SizedBox.shrink();
        }
        final sigmaValue = value * 10;
        return BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: sigmaValue,
            sigmaY: sigmaValue,
          ),
          child: Container(
            color: Colors.white.withOpacity(0.1),
          ),
        );
      },
    );
  }
}
