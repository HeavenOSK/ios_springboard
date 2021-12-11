import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ios_springboard/app/iphone.dart';
import 'package:ios_springboard/app/iphone_scales.dart';
import 'package:ios_springboard/screen/spring_board/screen/spring_board.dart';

class Canvas extends HookWidget {
  const Canvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: IPhoneScales.caseSize.width * 5,
        child: const FittedBox(
          child: IPhone(
            child: SpringBoard(),
          ),
        ),
      ),
    );
  }
}
