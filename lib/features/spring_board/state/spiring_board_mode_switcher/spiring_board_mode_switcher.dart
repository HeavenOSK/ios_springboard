import 'package:hooks_riverpod/hooks_riverpod.dart';

enum SpringBoardMode {
  waiting,
  tapStart,
  showContext,
  canReorder,
}

class SpringBoardModeSwitcher extends StateNotifier<SpringBoardMode> {
  SpringBoardModeSwitcher()
      : super(
          SpringBoardMode.waiting,
        );

  Future<void> tapStart() async {
    state = SpringBoardMode.tapStart;
    // 以下の間でアイコンが点滅する
    await Future<void>.delayed(Duration(milliseconds: 500));
    if (state != SpringBoardMode.tapStart) {
      return;
    }
    state = SpringBoardMode.showContext;
    await Future<void>.delayed(Duration(milliseconds: 500));
  }

  void tapEnd() {}
}
