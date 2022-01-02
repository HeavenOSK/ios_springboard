import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/anchored.dart';
import 'package:ios_springboard/components/atom/blur_mask.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/context_menu.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/context_menu_scales.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/config/home_icon_scales_provider.dart';

class AvatarPresenter extends ConsumerWidget {
  const AvatarPresenter({
    required this.avatarPosition,
    required this.avatarVisible,
    required this.shouldBlur,
    required this.child,
    required this.onTapBlur,
    required this.showContextMenu,
    Key? key,
  }) : super(key: key);

  final Offset avatarPosition;
  final bool avatarVisible;
  final bool shouldBlur;
  final Widget child;
  final VoidCallback onTapBlur;
  final bool showContextMenu;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeIconScales = ref.watch(homeIconScalesProvider);
    final contextMenuScales = ref.watch(contextMenuScalesProvider);

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
          Anchored(
            targetRect: Rect.fromLTWH(
              avatarPosition.dx,
              avatarPosition.dy,
              homeIconScales.areaSize.width,
              homeIconScales.areaSize.height,
            ),
            childSize: Size(
              contextMenuScales.width,
              contextMenuScales.itemHeight * 3,
            ),
            targetAnchor: Alignment.bottomLeft,
            childAnchor: Alignment.topLeft,
            child: ContextMenu(
              visible: showContextMenu,
            ),
          ),
          Positioned(
            left: avatarPosition.dx,
            top: avatarPosition.dy + homeIconScales.areaSize.height,
            child: ContextMenu(
              visible: showContextMenu,
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
