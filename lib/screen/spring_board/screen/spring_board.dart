import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/screen/spring_board/components/home_icon.dart';
import 'package:ios_springboard/screen/spring_board/components/home_icon_scales_provider.dart';
import 'package:ios_springboard/screen/spring_board/components/spring_board_draggable/spring_board_draggable.dart';
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
              child: _ScrollableArea(),
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

class _ScrollableArea extends HookConsumerWidget {
  const _ScrollableArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeIconScales = ref.watch(homeIconScalesProvider);
    final springBoardScales = ref.watch(springBoardScalesProvider);
    return Container(
      height: springBoardScales.bottomAreaHeight,
      width: double.infinity,
      color: Colors.blue,
      padding: EdgeInsets.symmetric(
        horizontal: springBoardScales.horizontalPadding,
      ).copyWith(
        top: springBoardScales.topPadding,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: SpringBoardDraggable(
          size: homeIconScales.areaSize,
          child: const HomeIcon(),
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
