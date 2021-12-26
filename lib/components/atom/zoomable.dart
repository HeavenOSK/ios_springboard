import 'package:flutter/material.dart';

class Zoomable extends StatelessWidget {
  const Zoomable({
    required this.size,
    required this.child,
    required this.duration,
    this.zooming = false,
    Key? key,
  }) : super(key: key);

  final Size size;
  final Widget child;
  final bool zooming;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 1, end: zooming ? 1.1 : 1.0),
      duration: duration,
      builder: (context, value, child) {
        final diff = value - 1;
        return Transform.scale(
          scale: value,
          child: Transform.translate(
            offset: -(size * diff).bottomRight(Offset.zero) / 2,
            child: FittedBox(child: child),
          ),
        );
      },
      child: child,
    );
  }
}
