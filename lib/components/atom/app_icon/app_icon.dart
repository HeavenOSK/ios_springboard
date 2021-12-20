import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon_scales_provider.dart';

class AppIcon extends HookConsumerWidget {
  const AppIcon({
    this.color,
    this.icon,
    Key? key,
  }) : super(key: key);
  final Color? color;
  final String? icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appIconScales = ref.watch(appIconScalesProvider);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          height: appIconScales.iconSize,
          width: appIconScales.iconSize,
          decoration: BoxDecoration(
            color: color ?? Colors.white,
            borderRadius: BorderRadius.circular(
              appIconScales.borderRadius,
            ),
          ),
          child: icon != null
              ? Center(
                  child: Text(
                    icon!,
                    style: const TextStyle(
                      height: 1,
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
