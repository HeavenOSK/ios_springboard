import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/iphone/iphone.dart';
import 'package:ios_springboard/features/spring_board/screen/spring_board.dart';
import 'package:ios_springboard/providers/navigator_key_provider.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      navigatorKey: ref.watch(navigatorKey),
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const _Canvas(),
    );
  }
}

class _Canvas extends HookConsumerWidget {
  const _Canvas({Key? key}) : super(key: key);

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
