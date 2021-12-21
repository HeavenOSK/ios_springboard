import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/screen/spring_board/components/home_icon/home_icon.dart';
import 'package:ios_springboard/screen/spring_board/components/slot_area/slot_area_key.dart';
import 'package:ios_springboard/screen/spring_board/state/spring_board_controller.dart';

class SlotArea extends HookConsumerWidget {
  const SlotArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mockDataList = ref.watch(
      springBoardController.select((value) => value.mockDataList),
    );

    return Stack(
      children: mockDataList
          .map(
            (data) => HomeIcon(
              key: ValueKey(data.id),
              mockIconData: data,
            ),
          )
          .toList(),
    );
  }
}
