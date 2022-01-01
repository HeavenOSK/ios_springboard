import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/context_menu_scales.dart';

part 'context_menu_presentational.dart';

class ContextMenu extends StatelessWidget {
  const ContextMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _ContextMenuPresentational(
      itemCount: 3,
    );
  }
}
