import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ios_springboard/component/home/iphone/iphone.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: IPhone.baseSize.width * 5,
        child: const FittedBox(
          child: IPhone(),
        ),
      ),
    );
  }
}
