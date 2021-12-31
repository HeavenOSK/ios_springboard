import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';

class AvatarPresenter extends StatelessWidget {
  const AvatarPresenter({
    required this.child,
    required this.avatarVisible,
    required this.avatarPosition,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final bool avatarVisible;
  final Offset avatarPosition;

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
