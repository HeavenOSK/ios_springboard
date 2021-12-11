import 'package:flutter/material.dart';
import 'package:ios_springboard/component/home/iphone/iphone_scales.dart';
import 'package:ios_springboard/component/home/spring_board/spring_board.dart';

class IPhone extends StatelessWidget {
  const IPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: IPhoneScales.caseSize.height,
      width: IPhoneScales.caseSize.width,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: IPhoneScales.padding.horizontal / 2,
        ),
        child: Column(
          children: const [
            _TopArea(),
            Expanded(
              child: SpringBoard(),
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
      height: IPhoneScales.padding.top,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 7),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: IPhoneScales.frontCameraRadius * 2,
                  width: IPhoneScales.frontCameraRadius * 2,
                  margin: const EdgeInsets.only(right: 4),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius:
                        BorderRadius.circular(IPhoneScales.frontCameraRadius),
                  ),
                ),
              ),
            ),
            Container(
              width: IPhoneScales.micHoleSize.width,
              height: IPhoneScales.micHoleSize.height,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
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
    return SizedBox(
      height: IPhoneScales.padding.bottom,
      child: Center(
        child: Container(
          height: IPhoneScales.homeButtonRadius * 2,
          width: IPhoneScales.homeButtonRadius * 2,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: Colors.lightGreen,
              width: 0.3,
            ),
            borderRadius: BorderRadius.circular(
              IPhoneScales.homeButtonRadius,
            ),
          ),
        ),
      ),
    );
  }
}
