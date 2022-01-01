import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:ios_springboard/components/atom/blur_mask.dart';

class AvatarPresenter extends StatelessWidget {
  const AvatarPresenter({
    required this.avatarPosition,
    required this.avatarVisible,
    required this.shouldBlur,
    required this.child,
    Key? key,
  }) : super(key: key);

  final Offset avatarPosition;
  final bool avatarVisible;
  final bool shouldBlur;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PortalEntry(
      visible: avatarVisible,
      portal: IgnorePointer(
        child: Stack(
          children: [
            Positioned.fill(
              child: BlurMaskPresentational(
                shouldBlur: shouldBlur,
              ),
            ),
            Positioned(
              left: avatarPosition.dx,
              top: avatarPosition.dy,
              child: child,
            ),
          ],
        ),
      ),
      child: IgnorePointer(
        ignoring: avatarVisible,
        child: Opacity(
          opacity: avatarVisible ? 0 : 1,
          child: child,
        ),
      ),
    );
  }
}
