import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/spring_board_scrollable_area.dart';
import 'package:ios_springboard/features/spring_board/config/spring_board_scales/spring_board_scales_provider.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_mode/spring_board_mode.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_mode/spring_board_mode_provider.dart';
import 'package:ios_springboard/providers/area_positions/portal_root_key.dart';

class SpringBoard extends HookConsumerWidget {
  const SpringBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      key: portalRootKey,
      debugShowCheckedModeBanner: false,
      builder: (context, child) => Portal(
        child: child!,
      ),
      home: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: () {
                ref.read(springBoardMode.notifier).state =
                    SpringBoardMode.waiting;
              },
              child: const ColoredBox(
                color: Colors.blue,
              ),
            ),
          ),
          const Positioned.fill(
            child: ScrollableArea(),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: _BottomArea(),
          ),
        ],
      ),
    );
  }
}

class _BottomArea extends HookConsumerWidget {
  const _BottomArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sbScales = ref.watch(springBoardScales);
    return SizedBox(
      height: sbScales.bottomAreaHeight,
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
        ],
      ),
    );
  }
}
