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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        // print('Long Press');
      },
      child: Listener(
        behavior: HitTestBehavior.translucent,
        onPointerDown: (_) {
          _startGrab();
        },
        onPointerUp: (_) {
          _finishGrab();
        },
        onPointerCancel: (_) {
          _finishGrab();
        },
        child: Zoomable(
          duration: const Duration(milliseconds: 120),
          zooming: _grabbing,
          size: widget.size,
          child: widget.child,
        ),
      ),
    );
  }
}
