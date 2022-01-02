part of 'home_icon_session_handler.dart';

final _homeIconSession = StateProvider.family<HomeIconSession, int>(
  (ref, id) => const HomeIconSession(),
);

final _dragState = StateProvider.family<DragState, int>(
  (ref, id) => DragState(id: id),
);

final _avatarPosition = StateProvider.family<Offset, int>(
  (ref, id) {
    final draggingState = ref.watch(_dragState(id));
    final globalPosition = draggingState.globalPosition;
    final localPosition = draggingState.localPosition;
    if (globalPosition == null || localPosition == null) {
      return Offset.zero;
    }
    final portalRootOffset = ref.watch(
      portalRootPosition,
    );
    final position = globalPosition - localPosition - portalRootOffset;
    return position;
  },
);
