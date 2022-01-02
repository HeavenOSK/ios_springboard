import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/providers/area_positions/slot_area_key.dart';

final slotAreaPosition = StateProvider<Offset>(
  (_) {
    final box = slotAreaKey.currentContext!.findRenderObject()! as RenderBox;
    return box.localToGlobal(Offset.zero);
  },
);
