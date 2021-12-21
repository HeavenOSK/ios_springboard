import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/constants/colors.dart';
import 'package:ios_springboard/screen/spring_board/components/slot_layer_computed/slot_layer_computed_provider.dart';
import 'package:ios_springboard/screen/spring_board/screen/spring_board_scales_provider.dart';

class ScrollableArea extends HookConsumerWidget {
  const ScrollableArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final springBoardScales = ref.watch(springBoardScalesProvider);

    final slotLayerComputed = ref.watch(slotLayerComputedProvider);
    final slots = List.generate(
      slotLayerComputed.positions.length,
      (index) {
        final position = slotLayerComputed.positions[index];
        return Positioned(
          top: position.dy,
          left: position.dx,
          child: Container(
            height: slotLayerComputed.slotSize.height,
            width: slotLayerComputed.slotSize.width,
            color: colors[index],
          ),
        );
      },
    ).toList();
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
        children: slots,
      ),
    );
  }
}
