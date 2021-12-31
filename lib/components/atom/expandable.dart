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

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(
        begin: 1,
        end: expanding ? 1.1 : 1.0,
      ),
      duration: const Duration(milliseconds: 300),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: FittedBox(
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}
