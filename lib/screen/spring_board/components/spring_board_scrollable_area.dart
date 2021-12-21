import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/screen/spring_board/components/debug/debug_slot_layer/debug_slot_layer.dart';
import 'package:ios_springboard/screen/spring_board/components/slot_area/slot_area.dart';
import 'package:ios_springboard/screen/spring_board/screen/spring_board_scales_provider.dart';

class ScrollableArea extends HookConsumerWidget {
  const ScrollableArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
      child: Stack(
        children: const [
          DebugSlotLayer(),
          Positioned.fill(
            child: SlotArea(),
          ),
        ],
      ),
    );
  }
}
