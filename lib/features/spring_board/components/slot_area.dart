import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/home_icon.dart';
import 'package:ios_springboard/features/spring_board/storage/spring_board_registerer/spring_board_registerer.dart';
import 'package:ios_springboard/providers/area_positions/slot_area_key.dart';

class SlotArea extends HookConsumerWidget {
  const SlotArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mockDataList = ref.watch(
      springBoardRegisterer.select((value) => value.mockDataList),
    );

    return Stack(
      key: slotAreaKey,
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
