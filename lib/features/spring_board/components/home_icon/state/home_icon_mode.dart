import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeIconMode = StateProvider.family<HomeIconMode, int>(
  (ref, id) => HomeIconMode.waiting,
);

enum HomeIconMode {
  waiting,
  tapped,
  showContextMenu,
  dragging,
}

extension HomeIconModeX on HomeIconMode {
  bool get isWaiting => this == HomeIconMode.waiting;

  bool get isTapped => this == HomeIconMode.tapped;

  bool get isShowContextMenu => this == HomeIconMode.showContextMenu;

  bool get isDragging => this == HomeIconMode.dragging;
}
