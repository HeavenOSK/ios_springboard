import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/home_icon_dragging_state/home_icon_dragging_state.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/home_icon_dragging_state/home_icon_dragging_state_provider.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/home_icon_mode.dart';
import 'package:ios_springboard/utils/sleep.dart';

final homeIconControllerProvider = Provider.family<HomeIconController, int>(
  (ref, id) => HomeIconController(
    id: id,
    read: ref.read,
  ),
);

class HomeIconController {
  HomeIconController({
    required int id,
    required Reader read,
  })  : _id = id,
        _read = read;

  final int _id;
  final Reader _read;

  Future<void> onSessionStart() async {
    _read(homeIconMode(_id).notifier).state = HomeIconMode.tapped;
    await sleep(milliseconds: 500);
    if (!_read(homeIconMode(_id)).isTapped) {
      return;
    }
    _read(homeIconMode(_id).notifier).state = HomeIconMode.showContextMenu;
    await sleep(milliseconds: 500);
    if (!_read(homeIconMode(_id)).isShowContextMenu) {
      return;
    }
    _read(homeIconMode(_id).notifier).state = HomeIconMode.dragging;
    // TODO(HeavenOSK): SpringBoard に drag 状態を伝える
  }

  void onPositionUpdate(
    Offset globalPosition,
    Offset localPosition,
  ) {
    _read(homeIconMode(_id).notifier).state = HomeIconMode.dragging;
    _read(homeIconDraggingStateProvider.notifier).state = HomeIconDraggingState(
      id: _id,
      globalPosition: globalPosition,
      localPosition: localPosition,
    );
  }

  void onSessionFinished() {
    _read(homeIconDraggingStateProvider.notifier).state = null;
    switch (_read(homeIconMode(_id))) {
      case HomeIconMode.waiting:
        return;
      case HomeIconMode.tapped:
        _read(homeIconMode(_id).notifier).state = HomeIconMode.waiting;
        // TODO(HeavenOSK): アプリを開く処理を発火させる必要がある
        return;
      case HomeIconMode.showContextMenu:
        // ContextMenu を出しっぱなしにする
        return;
      case HomeIconMode.dragging:
        // SpringBoard は並び替え状態なのでプルプル震える状態になる。
        _read(homeIconMode(_id).notifier).state = HomeIconMode.waiting;
        return;
    }
  }
}
