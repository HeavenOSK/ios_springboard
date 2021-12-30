import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DraggingAvatar extends HookConsumerWidget {
  const DraggingAvatar({
    required this.avatarPosition,
    required this.child,
    required this.avatarVisible,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final bool avatarVisible;
  final Offset avatarPosition;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PortalEntry(
      visible: avatarVisible,
      portal: IgnorePointer(
        child: Stack(
          children: [
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
