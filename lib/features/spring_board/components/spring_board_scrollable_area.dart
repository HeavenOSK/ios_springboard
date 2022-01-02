import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/slot_area.dart';
import 'package:ios_springboard/features/spring_board/config/spring_board_scales/spring_board_scales_provider.dart';

class ScrollableArea extends HookConsumerWidget {
  const ScrollableArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sbScales = ref.watch(springBoardScales);

    return Container(
      height: sbScales.bottomAreaHeight,
      width: double.infinity,
      color: Colors.blue,
      padding: EdgeInsets.symmetric(
        horizontal: sbScales.horizontalPadding,
      ).copyWith(
        top: sbScales.topPadding,
      ),
      child: Stack(
        children: const [
          Positioned.fill(
            child: SlotArea(),
          ),
        ],
      ),
    );
  }
}
