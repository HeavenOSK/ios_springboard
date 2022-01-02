import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/config/context_menu_scales.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/enums/anchor_pattern.dart';

part 'context_menu_presentational.dart';

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
