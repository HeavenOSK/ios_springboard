import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/screen/spring_board/components/debug/debug_slot_layer/debug_slot_layer.dart';
import 'package:ios_springboard/screen/spring_board/components/home_icon/home_icon.dart';
import 'package:ios_springboard/screen/spring_board/screen/spring_board_scales_provider.dart';
import 'package:ios_springboard/screen/spring_board/state/spring_board_controller.dart';

class ScrollableArea extends HookConsumerWidget {
  const ScrollableArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final springBoardScales = ref.watch(springBoardScalesProvider);
    final mockDataList = ref.watch(
      springBoardController.select((value) => value.mockDataList),
    );
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
        children: [
          const DebugSlotLayer(),
          Positioned.fill(
            child: Stack(
              children: mockDataList
                  .map(
                    (data) => HomeIcon(
                      key: ValueKey(data.id),
                      mockIconData: data,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
