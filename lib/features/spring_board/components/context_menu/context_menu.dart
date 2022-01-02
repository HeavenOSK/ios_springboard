import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/anchor_pattern.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/context_menu_scales.dart';

part 'context_menu_presentational.dart';

extension on AnchorPattern {
  Alignment get animationAlignment {
    switch (this) {
      case AnchorPattern.underLeftArea:
        return (Alignment.topCenter + Alignment.topLeft) / 2;
      case AnchorPattern.underRightArea:
        return (Alignment.topCenter + Alignment.topRight) / 2;

      case AnchorPattern.upLeftArea:
        return (Alignment.bottomCenter + Alignment.bottomLeft) / 2;
      case AnchorPattern.upRightArea:
        return (Alignment.bottomCenter + Alignment.bottomRight) / 2;
    }
  }
}

class ContextMenu extends StatelessWidget {
  const ContextMenu({
    required this.visible,
    required this.anchorPattern,
    Key? key,
  }) : super(key: key);

  final bool visible;
  final AnchorPattern anchorPattern;

  @override
  Widget build(BuildContext context) {
    return _ContextMenuPresentational(
      visible: visible,
      animationAlignment: anchorPattern.animationAlignment,
      itemCount: 3,
    );
  }
}
