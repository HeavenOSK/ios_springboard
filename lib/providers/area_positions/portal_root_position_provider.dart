import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/providers/area_positions/portal_root_key.dart';

final portalRootPositionProvider = StateProvider<Offset>(
  (_) {
    final box = portalRootKey.currentContext!.findRenderObject()! as RenderBox;
    return box.localToGlobal(Offset.zero);
  },
);
