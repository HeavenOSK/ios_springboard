import 'package:flutter/material.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_state/spring_board_state.dart';

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
      duration: SpringBoardMode.tapStart.sceneDuration,
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
