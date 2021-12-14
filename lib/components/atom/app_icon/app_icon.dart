import 'package:flutter/material.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon_scales.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        height: AppIconScales.iconSize,
        width: AppIconScales.iconSize,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            AppIconScales.borderRadius,
          ),
        ),
      ),
    );
  }
}