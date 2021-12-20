import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/screen/spring_board/components/spring_board_scrollable_area.dart';
import 'package:ios_springboard/screen/spring_board/screen/spring_board_scales_provider.dart';
import 'package:ios_springboard/screen/spring_board/state/spring_board_controller.dart';

class SpringBoard extends HookConsumerWidget {
  const SpringBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTapDown: (_) {
          if (!ref.read(springBoardController).movable) {
            return;
          }
          ref.read(springBoardController.notifier).stopReordering();
        },
        child: Stack(
          children: const [
            Positioned.fill(
              child: ScrollableArea(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _BottomArea(),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomArea extends HookConsumerWidget {
  const _BottomArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final shaking = ref.watch(
    //   springBoardStateProvider.select((value) => value.movable),
    // );
    // final scaleRatio = ref.watch(screenScaleRatioProvider);
    final springBoardScales = ref.watch(springBoardScalesProvider);
    return SizedBox(
      height: springBoardScales.bottomAreaHeight,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRect(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 15,
                  sigmaY: 15,
                ),
                child: Container(
                  color: Colors.blue.shade50,
                ),
              ),
            ),
          ),
          // Positioned.fill(
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(
          //       horizontal: SpringBoardScales.horizontalPadding,
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: List.generate(
          //         4,
          //         (index) => Shaker(
          //           shaking: shaking,
          //           child: AppIcon(
          //             onLongPress: () {
          //               ref.read(springBoardStateProvider.notifier).state =
          //                   ref.read(springBoardStateProvider).copyWith(
          //                         movable: true,
          //                       );
          //             },
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
