import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/context_menu_scales.dart';
import 'package:ios_springboard/features/spring_board/state/slot_layer_computed_values/slot_layer_computed_values_provider.dart';

part 'context_menu_presentational.dart';

class ContextMenu extends StatelessWidget {
  const ContextMenu({
    required this.visible,
    Key? key,
  }) : super(key: key);

  final bool visible;

  @override
  Widget build(BuildContext context) {
    return _ContextMenuPresentational(
      visible: visible,
      itemCount: 3,
    );
  }
}
