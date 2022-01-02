import 'package:flutter/material.dart';

typedef OnDragStart = void Function(
  Offset globalPosition,
  Offset localPosition,
);
typedef OnDragUpdate = void Function(
  Offset globalPosition,
  Offset localPosition,
);
typedef OnDragEnd = void Function(
  Offset globalPosition,
  Offset localPosition,
);

class DragHandler extends StatelessWidget {
  const DragHandler({
    required this.canDragStart,
    this.onDragStart,
    this.onDragUpdate,
    this.onDragEnd,
    Key? key,
    required this.child,
  }) : super(key: key);

  final OnDragStart? onDragStart;
  final OnDragUpdate? onDragUpdate;
  final OnDragEnd? onDragEnd;
  final bool canDragStart;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !canDragStart,
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
            event.localPosition,
          );
        },
        onPointerUp: (event) {
          onDragEnd?.call(
            event.position,
            event.localPosition,
          );
        },
        onPointerCancel: (event) {
          onDragEnd?.call(
            event.position,
            event.localPosition,
          );
        },
        child: child,
      ),
    );
  }
}
