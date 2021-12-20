import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/app/iphone_scales_provider.dart';

class IPhone extends HookConsumerWidget {
  const IPhone({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iPhoneScale = ref.watch(iPhoneScalesProvider);
    return Container(
      height: iPhoneScale.caseSize.height,
      width: iPhoneScale.caseSize.width,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(iPhoneScale.caseRadius),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 20),
            blurRadius: 25,
            spreadRadius: -5,
            color: Colors.black.withOpacity(0.1),
          ),
          BoxShadow(
            offset: const Offset(0, 8),
            blurRadius: 10,
            spreadRadius: -6,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: iPhoneScale.padding.horizontal / 2,
        ),
        child: Column(
          children: [
            const _TopArea(),
            Expanded(
              child: child,
            ),
            const _BottomArea(),
          ],
        ),
      ),
    );
  }
}

class _TopArea extends HookConsumerWidget {
  const _TopArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iPhoneScale = ref.watch(iPhoneScalesProvider);

    return SizedBox(
      height: iPhoneScale.padding.top,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: iPhoneScale.speakerHoleBottomMargin,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: iPhoneScale.frontCameraRadius * 2,
                  width: iPhoneScale.frontCameraRadius * 2,
                  margin: EdgeInsets.only(
                    right: iPhoneScale.speakerHoleRightMargin,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(
                      iPhoneScale.frontCameraRadius,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: iPhoneScale.micHoleSize.width,
              height: iPhoneScale.micHoleSize.height,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(
                  iPhoneScale.micHoleSize.height / 2,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class _BottomArea extends HookConsumerWidget {
  const _BottomArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iPhoneScale = ref.watch(iPhoneScalesProvider);
    return SizedBox(
      height: iPhoneScale.padding.bottom,
      child: Center(
        child: Container(
          height: iPhoneScale.homeButtonRadius * 2,
          width: iPhoneScale.homeButtonRadius * 2,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(
              color: Colors.white.withOpacity(0.3),
              width: 0.3,
            ),
            borderRadius: BorderRadius.circular(
              iPhoneScale.homeButtonRadius,
            ),
          ),
        ),
      ),
    );
  }
}
