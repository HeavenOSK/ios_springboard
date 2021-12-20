import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon_scales_provider.dart';

class AppIcon extends HookConsumerWidget {
  const AppIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appIconScales = ref.watch(appIconScalesProvider);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        height: appIconScales.iconSize,
        width: appIconScales.iconSize,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            appIconScales.borderRadius,
          ),
        ),
      ),
    );
  }
}
