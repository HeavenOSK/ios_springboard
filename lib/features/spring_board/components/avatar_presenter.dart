import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/blur_mask.dart';

class AvatarPresenter extends ConsumerWidget {
  const AvatarPresenter({
    required this.avatarPosition,
    required this.avatarVisible,
    required this.shouldBlur,
    required this.child,
    required this.onTapBlur,
    required this.id,
    Key? key,
  }) : super(key: key);

  final Offset avatarPosition;
  final bool avatarVisible;
  final bool shouldBlur;
  final Widget child;
  final VoidCallback onTapBlur;
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PortalEntry(
      visible: avatarVisible,
      portal: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: onTapBlur,
              child: BlurMaskPresentational(
                shouldBlur: shouldBlur,
              ),
            ),
          ),
          Positioned(
            left: avatarPosition.dx,
            top: avatarPosition.dy,
            child: IgnorePointer(
              child: child,
            ),
          ),
        ],
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
