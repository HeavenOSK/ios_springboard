import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/blur_mask/blur_mask_presentational.dart';

class BlurMaskContainer extends HookConsumerWidget {
  const BlurMaskContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const BlurMaskPresentational(
      shouldBlur: false,
    );
  }
}
