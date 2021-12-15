import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

enum _DragEndKind { dropped, canceled }

class SpringBoardDragAvatar extends Drag {
  SpringBoardDragAvatar({
    required this.localStartPoint,
    required this.onDragUpdate,
    this.onDragEnd,
    required this.feedback,
    required this.overlayState,
    this.dragStartPoint = Offset.zero,
    required this.size,
    required Offset initialPosition,
  }) : _position = initialPosition {
    _entry = OverlayEntry(builder: _build);
    overlayState.insert(_entry!);
  }

  final Offset dragStartPoint;
  final Offset localStartPoint;
  final OverlayState overlayState;
  final Widget feedback;
  final DragUpdateCallback? onDragUpdate;
  final void Function(Velocity, Offset, bool)? onDragEnd;
  final Size size;

  late Offset? _lastOffset;
  Offset _position;
  OverlayEntry? _entry;

  Widget _build(BuildContext context) {
    final box = overlayState.context.findRenderObject()! as RenderBox;
    final overlayTopLeft = box.localToGlobal(Offset.zero);
    return Positioned(
      left: _lastOffset!.dx - overlayTopLeft.dx,
      top: _lastOffset!.dy - overlayTopLeft.dy,
      child: IgnorePointer(
        child: feedback,
      ),
    );
  }

  @override
  void update(DragUpdateDetails details) {
    final oldPosition = _position;
    _position += details.delta;
    updateDrag(_position);
    if (onDragUpdate != null && _position != oldPosition) {
      onDragUpdate!(details);
    }
  }

  void updateDrag(Offset globalPosition) {
    _lastOffset = globalPosition - dragStartPoint - localStartPoint;

    _entry!.markNeedsBuild();
    final result = HitTestResult();
    WidgetsBinding.instance!.hitTest(result, globalPosition);
  }

  @override
  void cancel() {
    finishDrag(_DragEndKind.canceled);
  }

  @override
  void end(DragEndDetails details) {
    finishDrag(_DragEndKind.dropped, details.velocity);
  }

  void finishDrag(_DragEndKind endKind, [Velocity? velocity]) {
    _entry!.remove();
    _entry = null;
    onDragEnd?.call(
      velocity ?? Velocity.zero,
      _lastOffset!,
      false,
    );
  }
}
