import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_controller/spring_board_controller.dart';

class SpringBoardDebug extends HookConsumerWidget {
  const SpringBoardDebug({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final order = ref.watch(
      springBoardController.select((value) => value.order),
    );
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 128,
              child: Text(
                order.toString(),
              ),
            ),
            const Gap(8),
            ElevatedButton(
              onPressed: () {
                ref.read(springBoardController.notifier).shuffle();
              },
              child: const Text('shuffle'),
            ),
            const Gap(8),
            ElevatedButton(
              onPressed: () {
                ref.read(springBoardController.notifier).reset();
              },
              child: const Text('reset'),
            ),
          ],
        ),
      ),
    );
  }
}
