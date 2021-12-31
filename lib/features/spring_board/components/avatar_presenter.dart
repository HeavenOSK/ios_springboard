import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';

class AvatarPresenter extends StatelessWidget {
  const AvatarPresenter({
    required this.avatarPosition,
    required this.avatarVisible,
    required this.child,
    Key? key,
  }) : super(key: key);

  final Offset avatarPosition;
  final bool avatarVisible;
  final Widget child;

  @override
  Widget build(BuildContext context) {
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
