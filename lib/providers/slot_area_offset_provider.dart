import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/slot_area/slot_area_key.dart';

final slotAreaOffsetProvider = StateProvider<Offset>(
  (_) {
    final box = slotAreaKey.currentContext!.findRenderObject()! as RenderBox;
    return box.localToGlobal(Offset.zero);
  },
);
