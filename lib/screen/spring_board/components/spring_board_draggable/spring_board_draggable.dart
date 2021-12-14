import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ios_springboard/components/atom/zoomable.dart';

class SpringBoardDraggable extends StatefulWidget {
  const SpringBoardDraggable({
    Key? key,
    required this.size,
    required this.child,
  }) : super(key: key);

  final Size size;
  final Widget child;

  @override
  State<SpringBoardDraggable> createState() => _SpringBoardDraggableState();
}

class _SpringBoardDraggableState extends State<SpringBoardDraggable> {
  bool _grabbing = false;
  int _activeCount = 0;
  GestureRecognizer? _recognizer;

  void _startGrab() {
    setState(() {
      _grabbing = true;
    });
  }

  void _finishGrab() {
    setState(() {
      _grabbing = false;
    });
  }

  void _routePointer(PointerDownEvent event) {
    if (_activeCount > 0) {
      return;
    }
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
              _startGrab();
              await Future<void>.delayed(
                const Duration(milliseconds: 120),
              );
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
