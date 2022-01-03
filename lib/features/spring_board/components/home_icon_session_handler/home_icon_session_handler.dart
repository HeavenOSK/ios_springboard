import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/drag_handler.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/icon_order_faimily.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon_session_handler/home_icon_mode.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon_session_handler/states/drag_state.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon_session_handler/states/home_icon_session.dart';
import 'package:ios_springboard/features/spring_board/config/slot_computed_props/slot_computed_props_provider.dart';
import 'package:ios_springboard/providers/area_positions/portal_root_position_provider.dart';
import 'package:ios_springboard/providers/area_positions/slot_area_position_provider.dart';
import 'package:ios_springboard/utils/sleep.dart';

part 'callbacks.dart';
part 'states.dart';

class HomeIconSessionHandler extends ConsumerStatefulWidget {
  const HomeIconSessionHandler({
    required this.canDragStart,
    required this.id,
    required this.builder,
    required this.onTap,
    required this.onDragUpdate,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final HomeIconBuilder builder;
  final int id;
  final bool canDragStart;
  final ValueChanged<Offset> onDragUpdate;

  @override
  ConsumerState<HomeIconSessionHandler> createState() =>
      _HomeIconSessionHandlerContainerState();
}

class _HomeIconSessionHandlerContainerState
    extends ConsumerState<HomeIconSessionHandler>
    with SingleTickerProviderStateMixin {
  late final AnimationController _cancelAnimationController =
      AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 250),
  );

  @override
  void dispose() {
    _cancelAnimationController.dispose();
    super.dispose();
  }

  Animation<Offset> _getCancelAnimation({
    required Offset currentPosition,
    required Offset finishPosition,
  }) {
    return Tween<Offset>(
      begin: currentPosition,
      end: finishPosition,
    ).animate(
      CurvedAnimation(
        parent: _cancelAnimationController,
        curve: Curves.easeOutCubic,
      ),
    );
  }

  void _animatePosition(Animation<Offset> positionAnimation) {
    ref.read(_dragState(widget.id).notifier).state =
        ref.read(_dragState(widget.id)).copyWith(
              globalPosition: positionAnimation.value,
            );
  }

  Future<void> onDragStart({
    required Offset globalPosition,
    required Offset localPosition,
  }) async {
    // TODO(HeavenOSK): ロックしてる場合はアプリを開いてあげる必要がある
    ref.read(_homeIconSession(widget.id).notifier).state =
        ref.read(_homeIconSession(widget.id)).copyWith(
              mode: HomeIconMode.tapped,
              locked: false,
            );

    ref.read(_dragState(widget.id).notifier).state = DragState(
      id: widget.id,
      globalPosition: globalPosition,
      localPosition: localPosition,
    );
    await sleep(milliseconds: 500);
    if (!ref
        .read(_homeIconSession(widget.id))
        .canMoveFor(HomeIconMode.showContextMenu)) {
      return;
    }
    ref.read(_homeIconSession(widget.id).notifier).state =
        ref.read(_homeIconSession(widget.id)).copyWith(
              mode: HomeIconMode.showContextMenu,
            );
    await sleep(milliseconds: 1500);
    if (!ref
        .read(_homeIconSession(widget.id))
        .canMoveFor(HomeIconMode.dragging)) {
      return;
    }
    ref.read(_homeIconSession(widget.id).notifier).state =
        ref.read(_homeIconSession(widget.id)).copyWith(
              mode: HomeIconMode.dragging,
            );
    // TODO(HeavenOSK): SpringBoard に drag 状態を伝える
  }

  void onDragUpdate({
    required Offset globalPosition,
    required Offset localPosition,
  }) {
    ref.read(_homeIconSession(widget.id).notifier).state =
        ref.read(_homeIconSession(widget.id)).copyWith(
              mode: HomeIconMode.dragging,
            );
    ref.read(_dragState(widget.id).notifier).state =
        ref.read(_dragState(widget.id)).copyWith(
              globalPosition: globalPosition,
              // localPosition: localPosition,
            );
    widget.onDragUpdate(globalPosition);
  }

  void _finishSession() {
    switch (ref.read(_homeIconSession(widget.id)).mode) {
      case HomeIconMode.waiting:
        return;
      case HomeIconMode.tapped:
      case HomeIconMode.showContextMenu:
        ref.read(_homeIconSession(widget.id).notifier).state =
            ref.read(_homeIconSession(widget.id)).copyWith(
                  mode: HomeIconMode.waiting,
                );
        // TODO(HeavenOSK): アプリを開く処理を発火させる必要がある
        return;
      case HomeIconMode.dragging:
      case HomeIconMode.endDragging:
        // SpringBoard は並び替え状態なのでプルプル震える状態になる。

        ref.read(_homeIconSession(widget.id).notifier).state =
            ref.read(_homeIconSession(widget.id)).copyWith(
                  mode: HomeIconMode.waiting,
                );
        return;
    }
  }

  void onDragEnd({
    required Offset globalPosition,
    required Offset localPosition,
  }) {
    if (ref.read(_homeIconSession(widget.id)).mode.isShowContextMenu) {
      ref.read(_homeIconSession(widget.id).notifier).state =
          ref.read(_homeIconSession(widget.id)).copyWith(
                locked: true,
              );
      return;
    }
    ref.read(_homeIconSession(widget.id).notifier).state =
        ref.read(_homeIconSession(widget.id)).copyWith(
              mode: HomeIconMode.endDragging,
            );
    final slotLayerComputed = ref.read(slotComputedProps);
    final index = ref.read(
      iconOrderIndexFamily(widget.id),
    );
    final slotPosition = slotLayerComputed.slotPositions[index];
    final cancelAnimation = _getCancelAnimation(
      currentPosition: globalPosition,
      finishPosition: slotPosition +
          (ref.read(_dragState(widget.id)).localPosition ?? Offset.zero) +
          ref.read(slotAreaPosition),
    );
    void _animate() {
      _animatePosition(cancelAnimation);
    }

    cancelAnimation.addListener(_animate);
    _cancelAnimationController.forward(from: 0).then(
      (_) {
        cancelAnimation.removeListener(_animate);
        if (!ref.read(_homeIconSession(widget.id)).mode.isEndDragging) {
          return;
        }
        ref.read(_dragState(widget.id).notifier).state =
            ref.read(_dragState(widget.id)).copyWith(
                  globalPosition: null,
                  localPosition: null,
                );
        _finishSession();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final mode = ref.watch(
      _homeIconSession(widget.id).select(
        (s) => s.mode,
      ),
    );
    final avatarPosition = ref.watch(
      _avatarPosition(widget.id),
    );
    return DragHandler(
      canDragStart: widget.canDragStart,
      onDragStart: (globalPosition, localPosition) {
        onDragStart(
          globalPosition: globalPosition,
          localPosition: localPosition,
        );
      },
      onDragUpdate: (globalPosition, localPosition) {
        onDragUpdate(
          globalPosition: globalPosition,
          localPosition: localPosition,
        );
      },
      onDragEnd: (globalPosition, localPosition) {
        onDragEnd(
          globalPosition: globalPosition,
          localPosition: localPosition,
        );
      },
      child: widget.builder(
        context,
        mode,
        avatarPosition,
        _finishSession,
      ),
    );
  }
}
