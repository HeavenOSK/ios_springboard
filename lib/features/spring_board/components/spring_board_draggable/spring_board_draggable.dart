import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/slot_area/slot_area_key.dart';
import 'package:ios_springboard/features/spring_board/screen/portal_root_key.dart';

class SpringBoardDraggable extends ConsumerStatefulWidget {
  const SpringBoardDraggable({
    required this.size,
    required this.child,
    required this.onUpdate,
    Key? key,
  }) : super(key: key);

  final Size size;
  final Widget child;
  final void Function(Offset) onUpdate;

  @override
  ConsumerState<SpringBoardDraggable> createState() =>
      _SpringBoardDraggableState();
}

class _SpringBoardDraggableState extends ConsumerState<SpringBoardDraggable> {
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

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: !dragging
          ? (event) {
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
      onPointerUp: (_) {
        dragging = false;
      },
      onPointerCancel: (_) {
        dragging = false;
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
    );
  }
}
