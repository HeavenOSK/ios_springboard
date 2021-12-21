import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/screen/spring_board/state/spring_board_controller.dart';

class SpringBoardDebug extends HookConsumerWidget {
  const SpringBoardDebug({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(springBoardController);
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              state.order.toString(),
            ),
            const Gap(8),
            ElevatedButton(
              onPressed: () {
                ref.read(springBoardController.notifier).shuffle();
              },
              child: Text('shuffle'),
            ),
            const Gap(8),
            ElevatedButton(
              onPressed: () {
                ref.read(springBoardController.notifier).switchShowDebugSlot();
              },
              child: Text('switch showDebugSlot'),
            ),
          ],
        ),
      ),
    );
  }
}
