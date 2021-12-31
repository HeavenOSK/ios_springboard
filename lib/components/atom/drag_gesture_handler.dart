import 'package:flutter/material.dart';

typedef OnDragStart = void Function(
  Offset globalPosition,
  Offset localPosition,
);
typedef OnDragUpdate = void Function(
  Offset globalPosition,
);
typedef OnDragEnd = void Function(
  Offset globalPosition,
);

class DragGestureHandler extends StatelessWidget {
  const DragGestureHandler({
    required this.canDrag,
    this.onDragStart,
    this.onDragUpdate,
    this.onDragEnd,
    Key? key,
    required this.child,
  }) : super(key: key);

  final OnDragStart? onDragStart;
  final OnDragUpdate? onDragUpdate;
  final OnDragEnd? onDragEnd;
  final bool canDrag;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !canDrag,
      child: Listener(
        behavior: HitTestBehavior.translucent,
        onPointerDown: (event) {
          onDragStart?.call(
            event.position,
            event.localPosition,
          );
        },
        onPointerMove: (event) {
          onDragUpdate?.call(
            event.position,
          );
        },
        onPointerUp: (event) {
          onDragEnd?.call(
            event.position,
          );
        },
        onPointerCancel: (event) {
          onDragEnd?.call(
            event.position,
          );
        },
        child: child,
      ),
    );
  }
}
