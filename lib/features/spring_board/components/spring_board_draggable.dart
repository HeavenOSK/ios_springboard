import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/slot_layer_computed_values/spring_board_state/spiring_board_controller.dart';
import 'package:ios_springboard/providers/portal_root_offset_provider.dart';
import 'package:ios_springboard/providers/slot_area_offset_provider.dart';

final _avatarPositionProvider = StateProvider<Offset>(
  (ref) {
    final globalPosition = ref.watch(
      springBoardController.select(
        (value) => value.dragGlobalPosition,
      ),
    );
    final localPosition = ref.watch(
      springBoardController.select(
        (value) => value.dragLocalPosition,
      ),
    );
    if (globalPosition == null || localPosition == null) {
      return Offset.zero;
    }
    final portalRootOffset = ref.watch(
      portalRootOffsetProvider,
    );

    return globalPosition - localPosition - portalRootOffset;
  },
);

typedef NotifyDragPositionsCallback = void Function(
  Offset dragGlobalPosition,
  Offset dragLocalPosition,
);

class SpringBoardDraggable extends ConsumerStatefulWidget {
  const SpringBoardDraggable({
    required this.canDrag,
    required this.onDragEnd,
    required this.onDragStart,
    required this.currentSlotPosition,
    required this.size,
    required this.child,
    required this.onUpdate,
    Key? key,
  }) : super(key: key);

  final Size size;
  final Widget child;
  final ValueChanged<Offset> onUpdate;
  final Offset currentSlotPosition;
  final NotifyDragPositionsCallback onDragStart;
  final VoidCallback onDragEnd;
  final bool canDrag;

  @override
  ConsumerState<SpringBoardDraggable> createState() =>
      _SpringBoardDraggableState();
}

class _SpringBoardDraggableState extends ConsumerState<SpringBoardDraggable>
    with SingleTickerProviderStateMixin {
  late final AnimationController _cancelAnimationController =
      AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 250),
  );

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

  bool _dragging = false;

  bool get dragging => _dragging;

  set dragging(bool value) {
    if (_dragging == value) {
      return;
    }
    _dragging = value;
    if (mounted) {
      setState(() {});
    }
  }

  void _animatePosition(Animation<Offset> positionAnimation) {
    widget.onUpdate(
      positionAnimation.value,
    );
  }

  void _finishDragging({
    required Offset currentPosition,
  }) {
    final cancelAnimation = _getCancelAnimation(
      currentPosition: currentPosition,
      finishPosition: widget.currentSlotPosition +
          ref.watch(springBoardController).dragLocalPosition! +
          ref.read(slotAreaOffsetProvider),
    );
    void _animate() {
      _animatePosition(cancelAnimation);
    }

    cancelAnimation.addListener(_animate);
    _cancelAnimationController.forward(from: 0).then(
      (_) {
        cancelAnimation.removeListener(_animate);
        widget.onDragEnd();
        dragging = false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final visiblePosition = ref.watch(_avatarPositionProvider);
    return IgnorePointer(
      ignoring: !widget.canDrag,
      child: Listener(
        behavior: HitTestBehavior.translucent,
        onPointerDown: !dragging
            ? (event) async {
                widget.onDragStart(
                  event.position,
                  event.localPosition,
                );
                dragging = true;
              }
            : null,
        onPointerMove: (event) {
          widget.onUpdate(
            event.position,
          );
        },
        onPointerUp: (event) {
          _finishDragging(
            currentPosition: event.position,
          );
        },
        onPointerCancel: (event) {
          _finishDragging(
            currentPosition: event.position,
          );
        },
        child: PortalEntry(
          visible: dragging,
          portal: IgnorePointer(
            child: Stack(
              children: [
                Positioned(
                  left: visiblePosition.dx,
                  top: visiblePosition.dy,
                  child: widget.child,
                ),
              ],
            ),
          ),
          child: IgnorePointer(
            ignoring: dragging,
            child: Opacity(
              opacity: dragging ? 0 : 1,
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
