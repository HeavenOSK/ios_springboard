part of 'home_icon_session_handler.dart';

final _homeIconSession = StateProvider.family<HomeIconSession, int>(
  (ref, id) => const HomeIconSession(),
);

final _draggingState = StateProvider.family<HomeIconDraggingState, int>(
  (ref, id) => HomeIconDraggingState(id: id),
);

final _avatarPosition = StateProvider.family<Offset, int>(
  (ref, id) {
    final draggingState = ref.watch(_draggingState(id));
    final globalPosition = draggingState.globalPosition;
    final localPosition = draggingState.localPosition;
    if (globalPosition == null || localPosition == null) {
      return Offset.zero;
    }
    final portalRootOffset = ref.watch(
      portalRootOffsetProvider,
    );
    final position = globalPosition - localPosition - portalRootOffset;
    return position;
  },
);
