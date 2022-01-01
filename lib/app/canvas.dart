import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/app/iphone.dart';
import 'package:ios_springboard/features/spring_board/screen/spring_board.dart';

class Canvas extends HookConsumerWidget {
  const Canvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        IPhone(
          child: SpringBoard(),
        ),
        // SpringBoardDebug(),
      ],
    );
  }
}
