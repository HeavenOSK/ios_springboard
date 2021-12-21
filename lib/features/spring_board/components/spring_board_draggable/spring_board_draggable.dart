// ignore_for_file: type=lint
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ios_springboard/components/atom/fixed_sized_box.dart';
import 'package:ios_springboard/components/atom/zoomable.dart';
import 'package:ios_springboard/features/spring_board/components/slot_area/slot_area_key.dart';
import 'package:ios_springboard/features/spring_board/components/spring_board_draggable/spring_board_drag_avatar.dart';

class SpringBoardDraggable extends StatefulWidget {
  const SpringBoardDraggable({
    Key? key,
    required this.size,
    required this.child,
    required this.onUpdate,
  }) : super(key: key);

  final Size size;
  final Widget child;
  final void Function(Offset) onUpdate;

  @override
  State<SpringBoardDraggable> createState() => _SpringBoardDraggableState();
}

class _SpringBoardDraggableState extends State<SpringBoardDraggable> {
  bool _grabbing = false;
  int _activeCount = 0;
  GestureRecognizer? _recognizer;
  Offset? _localStartOffset;

  Offset _slotOffset() {
    RenderBox box = slotAreaKey.currentContext!.findRenderObject() as RenderBox;
    return box.localToGlobal(Offset.zero);
  }

  late final slotOffset = _slotOffset();

  @override
  void initState() {
    super.initState();
    _recognizer = ImmediateMultiDragGestureRecognizer()..onStart = _startDrag;
  }

  @override
  void dispose() {
    _disposeRecognizerIfInactive();
    super.dispose();
  }

  void _disposeRecognizerIfInactive() {
    if (_activeCount > 0) return;
    _recognizer!.dispose();
    _recognizer = null;
  }

  SpringBoardDragAvatar? _startDrag(Offset position) {
    if (_activeCount > 0) {
      return null;
    }

    setState(() {
      _activeCount += 1;
    });
    final avatar = SpringBoardDragAvatar(
      localStartPoint: _localStartOffset ?? Offset.zero,
      size: widget.size,
      feedback: FixedSizedBox(
        size: widget.size,
        child: widget.child,
      ),
      onDragUpdate: (DragUpdateDetails details) {
        if (mounted) {
          widget.onUpdate(
            details.globalPosition - slotOffset,
          );
        }
      },
      onDragEnd: (Velocity velocity, Offset offset, bool wasAccepted) {
        if (mounted) {
          setState(() {
            _activeCount -= 1;
          });
        } else {
          _activeCount -= 1;
          _disposeRecognizerIfInactive();
        }
      },
      initialPosition: position,
      overlayState: Overlay.of(
        context,
        debugRequiredFor: widget,
        rootOverlay: false,
      )!,
    );
    return avatar;
  }

  Offset childDragAnchorStrategy(
    SpringBoardDraggable draggable,
    BuildContext context,
    Offset position,
  ) {
    final RenderBox renderObject = context.findRenderObject()! as RenderBox;
    return renderObject.globalToLocal(position);
  }

  // void _startGrab() {
  //   setState(() {
  //     _grabbing = true;
  //   });
  // }

  void _finishGrab() {
    setState(() {
      _grabbing = false;
    });
  }

  void _routePointer(PointerDownEvent event) {
    if (_activeCount > 0) {
      return;
    }
    _localStartOffset = event.localPosition;
    _recognizer!.addPointer(event);
  }

  @override
  Widget build(BuildContext context) {
    final canDrag = _activeCount <= 0;
    final showChild = _activeCount == 0;
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: canDrag
          ? (event) async {
              // TODO(HeavenOSK): 拡大表示を実装する
              // _startGrab();
              // await Future<void>.delayed(
              //   const Duration(milliseconds: 120),
              // );
              _routePointer(event);
            }
          : null,
      onPointerUp: (_) {
        _finishGrab();
      },
      onPointerCancel: (_) {
        _finishGrab();
      },
      child: IgnorePointer(
        ignoring: !showChild,
        child: Opacity(
          opacity: showChild ? 1.0 : 0.0,
          child: Zoomable(
            duration: const Duration(milliseconds: 120),
            zooming: _grabbing,
            size: widget.size,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
