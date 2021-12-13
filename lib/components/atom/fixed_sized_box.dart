import 'package:flutter/material.dart';

class FixedSizedBox extends StatelessWidget {
  const FixedSizedBox({
    required this.size,
    required this.child,
    Key? key,
  }) : super(key: key);

  final Size size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: size,
      child: FittedBox(
        child: child,
      ),
    );
  }
}
