import 'package:flutter/material.dart';

class Expandable extends StatelessWidget {
  const Expandable({
    required this.size,
    required this.child,
    this.expanding = false,
    Key? key,
  }) : super(key: key);

  final Size size;
  final Widget child;
  final bool expanding;

  double get scale => expanding ? 1.1 : 1.0;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.diagonal3Values(scale, scale, 1),
      transformAlignment: Alignment.center,
      duration: const Duration(milliseconds: 250),
      child: child,
    );
  }
}
