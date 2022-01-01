import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/drag_gesture_handler.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/home_icon_order_faimily.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon_session_handler/home_icon_mode.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon_session_handler/states/home_icon_dragging_state.dart';
import 'package:ios_springboard/features/spring_board/state/slot_layer_computed_values/slot_layer_computed_values_provider.dart';
import 'package:ios_springboard/providers/portal_root_offset_provider.dart';
import 'package:ios_springboard/providers/slot_area_offset_provider.dart';
import 'package:ios_springboard/utils/sleep.dart';

part 'callbacks.dart';
part 'states.dart';

class HomeIconSessionHandler extends ConsumerStatefulWidget {
  const HomeIconSessionHandler({
    required this.canDragStart,
    required this.id,
    required this.builder,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final HomeIconBuilder builder;
  final int id;
  final bool canDragStart;

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
    ref.read(_draggingState(widget.id).notifier).state =
        ref.read(_draggingState(widget.id)).copyWith(
              globalPosition: positionAnimation.value,
            );
  }

  Future<void> onDragStart({
    required Offset globalPosition,
    required Offset localPosition,
  }) async {
    if (!ref.read(_homeIconMode(widget.id)).isWaiting) {
      return;
    }
    ref.read(_homeIconMode(widget.id).notifier).state = HomeIconMode.tapped;
    ref.read(_draggingState(widget.id).notifier).state = HomeIconDraggingState(
      id: widget.id,
      globalPosition: globalPosition,
      localPosition: localPosition,
    );
    await sleep(milliseconds: 500);
    if (!ref.read(_homeIconMode(widget.id)).isTapped) {
      return;
    }
    ref.read(_homeIconMode(widget.id).notifier).state =
        HomeIconMode.showContextMenu;
    await sleep(milliseconds: 1500);
    if (!ref.read(_homeIconMode(widget.id)).isShowContextMenu) {
      return;
    }
    ref.read(_homeIconMode(widget.id).notifier).state = HomeIconMode.dragging;
    // TODO(HeavenOSK): SpringBoard に drag 状態を伝える
  }

  void onDragUpdate({
    required Offset globalPosition,
    required Offset localPosition,
  }) {
    ref.read(_homeIconMode(widget.id).notifier).state = HomeIconMode.dragging;
    ref.read(_draggingState(widget.id).notifier).state =
        ref.read(_draggingState(widget.id)).copyWith(
              globalPosition: globalPosition,
              // localPosition: localPosition,
            );
  }

  void onSessionEnd() {
    switch (ref.read(_homeIconMode(widget.id))) {
      case HomeIconMode.waiting:
        return;
      case HomeIconMode.tapped:
        ref.read(_homeIconMode(widget.id).notifier).state =
            HomeIconMode.waiting;
        // TODO(HeavenOSK): アプリを開く処理を発火させる必要がある
        return;
      case HomeIconMode.showContextMenu:
        // ContextMenu を出しっぱなしにする
        return;
      case HomeIconMode.dragging:
      case HomeIconMode.endDragging:
        // SpringBoard は並び替え状態なのでプルプル震える状態になる。
        ref.read(_homeIconMode(widget.id).notifier).state =
            HomeIconMode.waiting;
        return;
    }
  }

  void onDragEnd({
    required Offset globalPosition,
    required Offset localPosition,
  }) {
    ref.read(_homeIconMode(widget.id).notifier).state =
        HomeIconMode.endDragging;
    final slotLayerComputed = ref.read(slotLayerComputedValuesProvider);
    final index = ref.read(
      homeIconOrderIndexFamily(widget.id),
    );
    final slotPosition = slotLayerComputed.slotPositions[index];
    final cancelAnimation = _getCancelAnimation(
      currentPosition: globalPosition,
      finishPosition: slotPosition +
          (ref.read(_draggingState(widget.id)).localPosition ?? Offset.zero) +
          ref.read(slotAreaOffsetProvider),
    );
    void _animate() {
      _animatePosition(cancelAnimation);
    }

    cancelAnimation.addListener(_animate);
    _cancelAnimationController.forward(from: 0).then(
      (_) {
        cancelAnimation.removeListener(_animate);
        ref.read(_draggingState(widget.id).notifier).state =
            ref.read(_draggingState(widget.id)).copyWith(
                  globalPosition: null,
                  localPosition: null,
                );
        onSessionEnd();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final mode = ref.watch(
      _homeIconMode(widget.id),
    );
    final avatarPosition = ref.watch(
      _avatarPosition(widget.id),
    );
    // ref.listen(
    //   _homeIconMode(widget.id),
    //   (previous, next) {
    //     if (widget.id == 0) {
    //       print(mode);
    //     }
    //   },
    // );
    return DragGestureHandler(
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
      ),
    );
  }
}
