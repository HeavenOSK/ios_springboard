import 'package:flutter/material.dart';
import 'package:ios_springboard/component/home/iphone/screen.dart';

class IPhone extends StatelessWidget {
  const IPhone({
    Key? key,
  }) : super(key: key);

  static const baseSize = Size(
    67.3,
    138.4,
  );

  static const _verticalPadding = 14.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: baseSize.height,
      width: baseSize.width,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 2,
        ),
        child: Column(
          children: const [
            _TopArea(),
            Expanded(
              child: Screen(),
            ),
            _BottomArea(),
          ],
        ),
      ),
    );
  }
}

class _TopArea extends StatelessWidget {
  const _TopArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: IPhone._verticalPadding,
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 1,
                  width: 1,
                  margin: const EdgeInsets.only(right: 2.5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            Container(
              width: 10,
              height: 1,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class _BottomArea extends StatelessWidget {
  const _BottomArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const radius = IPhone._verticalPadding * 0.65;
    return SizedBox(
      height: IPhone._verticalPadding,
      child: Center(
        child: Container(
          height: radius,
          width: radius,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              width: 0.3,
            ),
            borderRadius: BorderRadius.circular(
              IPhone._verticalPadding,
            ),
          ),
        ),
      ),
    );
  }
}
