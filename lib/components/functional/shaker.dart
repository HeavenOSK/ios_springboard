import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shaker extends StatefulWidget {
  const Shaker({
    required this.child,
    this.maxDegree = 2.0,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final double maxDegree;

  @override
  State<Shaker> createState() => _ShakerState();
}

class _ShakerState extends State<Shaker> with SingleTickerProviderStateMixin {
  late double _t = math.Random().nextDouble() * 2 - 1;
  late final _animationController = AnimationController(
    vsync: this,
    duration: const Duration(days: 1),
  );

  Alignment get alignmentValue {
    final currentT = math.pi * 2 * _t / 8;
    final x = math.cos(currentT);
    final y = math.sin(currentT);
    return Alignment(x, y);
  }

  double get rotationValue {
    final currentT = math.pi * 2 * _t;
    return math.sin(currentT);
  }

  @override
  void initState() {
    super.initState();
    _animationController
      ..addListener(() {
        setState(() {
          final nextValue = _t + 0.05;
          _t = (nextValue * 100 % 100) * 0.01;
        });
      })
      ..forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotationValue * (math.pi / 180 * widget.maxDegree),
      alignment: alignmentValue * 0.2,
      child: widget.child,
    );
  }
}
