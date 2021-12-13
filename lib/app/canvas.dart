import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/app/iphone.dart';
import 'package:ios_springboard/app/iphone_scales.dart';
import 'package:ios_springboard/providers/screen_scale_provider.dart';
import 'package:ios_springboard/screen/spring_board/screen/spring_board.dart';

class Canvas extends HookConsumerWidget {
  const Canvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaleRatio = ref.watch(screenScaleRatioProvider);
    return Center(
      child: SizedBox(
        width: IPhoneScales.caseSize.width * scaleRatio,
        child: const FittedBox(
          child: IPhone(
            child: SpringBoard(),
          ),
        ),
      ),
    );
  }
}
