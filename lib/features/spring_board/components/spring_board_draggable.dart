import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/slot_area/slot_area_key.dart';
import 'package:ios_springboard/features/spring_board/screen/portal_root_key.dart';

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
    if (!_dragging) {
      lastRawTouchOffset = null;
      localTouchOffset = null;
    }
    if (mounted) {
      setState(() {});
    }
  }

  late final portalRootOffset = _portalRootOffset();
  late final slotAreaOffset = _slotAreaOffset();
  Offset? lastRawTouchOffset;
  Offset? localTouchOffset;

  Offset get visiblePosition {
    final lastRawTouchOffset = this.lastRawTouchOffset;
    final localTouchOffset = this.localTouchOffset;
    if (lastRawTouchOffset == null || localTouchOffset == null) {
      return Offset.zero;
    }

    return lastRawTouchOffset - localTouchOffset - portalRootOffset;
  }

  Offset _portalRootOffset() {
    final box = portalRootKey.currentContext!.findRenderObject()! as RenderBox;
    return box.localToGlobal(Offset.zero);
  }

  Offset _slotAreaOffset() {
    final box = slotAreaKey.currentContext!.findRenderObject()! as RenderBox;
    return box.localToGlobal(Offset.zero);
  }

  void _animatePosition(Animation<Offset> positionAnimation) {
    setState(() {
      lastRawTouchOffset = positionAnimation.value;
    });
  }

  void _finishDragging({
    required Offset currentPosition,
  }) {
    final cancelAnimation = _getCancelAnimation(
      currentPosition: currentPosition,
      finishPosition:
          widget.currentSlotPosition + localTouchOffset! + slotAreaOffset,
    );
    void _animate() {
      _animatePosition(cancelAnimation);
    }

    cancelAnimation.addListener(_animate);
    _cancelAnimationController.forward(from: 0).then(
      (_) {
        cancelAnimation.removeListener(_animate);
        dragging = false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
                lastRawTouchOffset = event.position;
                localTouchOffset = event.localPosition;
                dragging = true;
              }
            : null,
        onPointerMove: (event) {
          setState(() {
            lastRawTouchOffset = event.position;
          });
          widget.onUpdate(
            event.position - slotAreaOffset,
          );
        },
        onPointerUp: (event) {
          _finishDragging(
            currentPosition: event.position,
          );
          widget.onDragEnd();
        },
        onPointerCancel: (event) {
          _finishDragging(
            currentPosition: event.position,
          );
          widget.onDragEnd();
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
