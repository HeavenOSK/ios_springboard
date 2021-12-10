import 'package:flutter/material.dart';

class IPhone extends StatelessWidget {
  const IPhone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 67.3 / 138.4,
      child: Container(
        constraints: BoxConstraints(),
        color: Colors.green,
      ),
    );
  }
}
