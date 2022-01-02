import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/components/app_icon/config/app_icon_scales_provider.dart';

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
    final color = this.color ?? Colors.white;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          height: appIconScales.iconSize,
          width: appIconScales.iconSize,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(
              appIconScales.borderRadius,
            ),
          ),
          child: icon != null
              ? Center(
                  child: Text(
                    icon!,
                    style: TextStyle(
                      height: 1,
                      fontSize: 12,
                      color: color.computeLuminance() < 0.5
                          ? Colors.white
                          : Colors.black38,
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
