import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BlurMaskPresentational extends HookConsumerWidget {
  const BlurMaskPresentational({
    required this.shouldBlur,
    Key? key,
  }) : super(key: key);

  final bool shouldBlur;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: shouldBlur ? 1 : 0),
      // Duration も変更できる
      duration: shouldBlur
          ? const Duration(milliseconds: 350)
          : const Duration(milliseconds: 180),
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
